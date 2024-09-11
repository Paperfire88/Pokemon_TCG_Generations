; plays the Opening sequence, and handles player selection
; in the Title Screen and Start Menu
HandleTitleScreen:
.play_opening
	ld a, MUSIC_STOP
	call PlaySong
	call EnableAndClearSpriteAnimations
	call PlayIntroSequence
	call LoadTitleScreenSprites

	xor a
	ld [wTitleScreenOrbCounter], a
	ld a, $3c
	ld [wTitleScreenIgnoreInputCounter], a
.loop
	call DoFrameIfLCDEnabled
	call UpdateRNGSources
	call AnimateRandomTitleScreenOrb
	ld hl, wTitleScreenOrbCounter
	inc [hl]
	call AssertSongFinished
	or a
	jr nz, .song_playing
	; reset back to the opening sequence
	farcall FadeScreenToWhite
	jr .play_opening

.song_playing
	; should we ignore user input?
	ld hl, wTitleScreenIgnoreInputCounter
	ld a, [hl]
	or a
	jr z, .check_keys
	; ignore input, decrement the counter
	dec [hl]
	jr .loop

.check_keys
	ldh a, [hKeysPressed]
	and A_BUTTON | START
	jr z, .loop
	ld a, SFX_CONFIRM
	call PlaySFX
	farcall FadeScreenToWhite

	call CheckIfHasSaveData
	ld a, [wHasSaveData]
	or a
    call nz, LoadEventsFromSRAM
	call HandleStartMenu

LoadEventsFromSRAM:
    ld hl, sEventVars
    ld de, wEventVars
    ld bc, EVENT_VAR_BYTES
    call EnableSRAM
    call CopyDataHLtoDE
    jp DisableSRAM

; new game
	ld a, [wStartMenuChoice]
	cp START_MENU_NEW_GAME
	jr nz, .continue_from_diary
	call DeleteSaveDataForNewGame
	jp c, HandleTitleScreen
	jr .continue_duel
.continue_from_diary
	ld a, [wStartMenuChoice]
	or a ; cp START_MENU_CONTINUE_FROM_DIARY
	jr nz, .continue_duel
	call AskToContinueFromDiaryWithDuelData
	jp c, HandleTitleScreen
.continue_duel
	call ResetDoFrameFunction
	jp EnableAndClearSpriteAnimations

; updates wHasSaveData and wHasDuelSaveData
; depending on whether the save data is valid or not
CheckIfHasSaveData:
	farcall ValidateBackupGeneralSaveData
	ld a, TRUE
	jr c, .no_error
	ld a, FALSE
.no_error
	ld [wHasSaveData], a
	cp $00 ; or a
	jr z, .write_has_duel_data
	ld hl, sCurrentDuel
	bank1call ValidateSavedDuelData
	ld a, TRUE
	jr nc, .write_has_duel_data
	ld a, FALSE
.write_has_duel_data
	ld [wHasDuelSaveData], a
	farcall ValidateBackupGeneralSaveData
	ret

; handles printing the Start Menu
; and getting player input and choice
HandleStartMenu:
	ld a, MUSIC_PC_MAIN_MENU
	call PlaySong
	call DisableLCD
	farcall InitMenuScreen
	lb de, $30, $8f
	call SetupText
	call EnableAndClearSpriteAnimations
	xor a
	ld [wLineSeparation], a
	call .DrawPlayerPortrait
	call .SetStartMenuParams

	ld a, $ff
	ld [wTitleScreenIgnoreInputCounter], a
	ld a, [wLastSelectedStartMenuItem]
	cp $4
	jr c, .init_menu
	xor a ; start at first menu option
.init_menu
	ld hl, wStartMenuParams
	farcall InitAndPrintMenu
	farcall FlashWhiteScreen

.wait_input
	call DoFrameIfLCDEnabled
	call UpdateRNGSources
	call HandleMenuInput
	push af
	call PrintStartMenuDescriptionText
	pop af
	jr nc, .wait_input
	ldh a, [hCurMenuItem]
	cp e
	jr nz, .wait_input

	ld [wLastSelectedStartMenuItem], a
	ld a, [wHasSaveData]
	or a
	jr nz, .no_adjustment
	; New Game is 3rd option
	; but when there's no save data,
	; it's the 1st in menu list, so adjust it
	inc e
.no_adjustment
	ld a, e
	ld [wStartMenuChoice], a
	ret

.SetStartMenuParams
	ld hl, .StartMenuParams
	ld de, wStartMenuParams
	ld bc, .StartMenuParamsEnd - .StartMenuParams
	call CopyDataHLtoDE

	ld e, 0
	ld a, [wHasSaveData]
	or a
	jr z, .get_text_id ; New Game
	inc e
	ld a, 1
	call .AddItems
	ld a, [wHasDuelSaveData]
	or a
	jr z, .get_text_id ; Continue From Diary
	inc e
	ld a, 1
	call .AddItems
	; Continue Duel

.get_text_id
	sla e
	ld d, $00
	ld hl, .StartMenuTextIDs
	add hl, de
	; set text ID as Start Menu param
	ld a, [hli]
	ld [wStartMenuParams + 6], a
	ld a, [hl]
	ld [wStartMenuParams + 7], a
	ret

; adds a items to start menu list
; this means adding 2 units per item to the text box height
; and adding to the number of items
.AddItems
	push bc
	ld c, a
	; number of items in menu
	ld a, [wStartMenuParams + 12]
	add c
	ld [wStartMenuParams + 12], a
	; height of text box
	sla c
	ld a, [wStartMenuParams + 3]
	add c
	ld [wStartMenuParams + 3], a
	pop bc
	ret

.StartMenuParams
	db  0, 0 ; start menu coords
	db 14, 4 ; start menu text box dimensions

	db  2, 2 ; text alignment for InitTextPrinting
	tx NewGameText
	db $ff

	db 1, 2 ; cursor x, cursor y
	db 2 ; y displacement between items
	db 1 ; number of items
	db SYM_CURSOR_R ; cursor tile number
	db SYM_SPACE ; tile behind cursor
	dw NULL ; function pointer if non-0
.StartMenuParamsEnd

.StartMenuTextIDs
	tx NewGameText
	tx ContinueDiaryNewGameText
	tx ContinueDiaryNewGameContinueDuelText

.DrawPlayerPortrait
	lb bc, 14, 1
	farcall $4, DrawPlayerPortrait
	ret

; prints the description for the current selected item
; in the Start Menu in the text box
PrintStartMenuDescriptionText:
	push hl
	push bc
	push de
	; don't print if it's already showing
	ld a, [wCurMenuItem]
	ld e, a
	ld a, [wCurHighlightedStartMenuItem]
	cp e
	jr z, .skip
	ld a, [wHasSaveData]
	or a
	jr nz, .has_data
	; New Game option is 3rd element
	; in function table, so add 2
	inc e
.has_data

	ld a, e
	push af
	lb de, 0, 10
	lb bc, 20, 8
	call DrawRegularTextBox
	pop af
	ld hl, .StartMenuDescriptionFunctionTable
	call JumpToFunctionInTable
.skip
	ld a, [wCurMenuItem]
	ld [wCurHighlightedStartMenuItem], a
	pop de
	pop bc
	pop hl
	ret

.StartMenuDescriptionFunctionTable
	dw .ContinueFromDiary
	dw .NewGame
	dw .ContinueDuel

.ContinueDuel
	lb de, 1, 12
	call InitTextPrinting
	ldtx hl, TheGameWillContinueFromThePointInTheDuelText
	jp PrintTextNoDelay

.NewGame
	lb de, 1, 12
	call InitTextPrinting
	ldtx hl, StartANewGameText
	jp PrintTextNoDelay

.ContinueFromDiary
	; get OW map name
	ld a, [wCurOverworldMap]
	add a
	ld c, a
	ld b, $00
	ld hl, OverworldMapNames
	add hl, bc
	ld a, [hli]
	ld [wTxRam2 + 0], a
	ld a, [hl]
	ld [wTxRam2 + 1], a

	; get medal count
	ld a, [wMedalCount]
	ld [wTxRam3 + 0], a
	xor a
	ld [wTxRam3 + 1], a

	; print text
	lb de, 1, 10
	call InitTextPrinting
	ldtx hl, ContinueFromDiarySummaryText
	call PrintTextNoDelay

	ld a, [wTotalNumCardsCollected + 0]
	ld e, a
	ld a, [wTotalNumCardsCollected + 1]
	ld d, a
	ld a, [wTotalNumCardsToCollect + 0]
	ld l, a
	ld a, [wTotalNumCardsToCollect + 1]
	ld h, a
	lb bc, 9, 14
	farcall PrintAlbumProgress_SkipGetProgress
	lb bc, 10, 16
	farcall PrintPlayTime_SkipUpdateTime
	ret

; asks the player whether it's okay to delete
; the save data in order to create a new one
; if player answers "yes", delete it
DeleteSaveDataForNewGame:
; exit if there no save data
	ld a, [wHasSaveData]
	or a
	ret z

	call DisableLCD
	farcall InitMenuScreen
	call EnableAndClearSpriteAnimations
	farcall FlashWhiteScreen
	call DoFrameIfLCDEnabled
	ldtx hl, SavedDataAlreadyExistsText
	call PrintScrollableText_NoTextBoxLabel
	ldtx hl, OKToDeleteTheDataText
	call YesOrNoMenuWithText
	ret c ; quit if chose "no"
	farcall InvalidateSaveData
	ldtx hl, AllDataWasDeletedText
	call PrintScrollableText_NoTextBoxLabel
	or a
	ret

; asks the player if the game should resume
; from diary even though there is Duel save data
; returns carry if "no" was selected
AskToContinueFromDiaryWithDuelData:
; return if there's no duel save data
	ld a, [wHasDuelSaveData]
	or a
	ret z

	call DisableLCD
	farcall InitMenuScreen
	call EnableAndClearSpriteAnimations
	farcall FlashWhiteScreen
	call DoFrameIfLCDEnabled
	ldtx hl, DataExistsWhenPowerWasTurnedOFFDuringDuelText
	call PrintScrollableText_NoTextBoxLabel
	ldtx hl, ContinueFromDiaryText
	call YesOrNoMenuWithText
	ret c
	or a
	ret

DrawPlayerPortraitAndPrintNewGameText:
	call DisableLCD
	xor a
	ld [wd317], a
	farcall InitMenuScreen
	call EnableAndClearSpriteAnimations
	ld hl, HandleAllSpriteAnimations
	call SetDoFrameFunction
	lb bc, 7, 3
	farcall $4, DrawPlayerPortrait
	farcall FadeScreenFromWhite
	call DoFrameIfLCDEnabled
	ldtx hl, IsCrazyAboutPokemonAndPokemonCardCollectingText
	call PrintScrollableText_NoTextBoxLabel
	call ResetDoFrameFunction
	jp EnableAndClearSpriteAnimations
