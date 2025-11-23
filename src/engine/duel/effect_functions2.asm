; searches through Deck in wDuelTempList looking for
; a certain card or cards, and prints text depending
; on whether at least one was found.
; if none were found, asks the Player whether to look
; in the Deck anyway, and returns carry if No is selected.
; uses SEARCHEFFECT_* as input which determines what to search for:
;	no search effect = search for card ID in e
;	SEARCHEFFECT_NIDORAN = search for either NidoranM or NidoranF
;	SEARCHEFFECT_BASIC_FIGHTING = search for any Basic Fighting Pokemon
;	SEARCHEFFECT_BASIC_ENERGY = search for any Basic Energy
;	SEARCHEFFECT_POKEMON = search for any Pokemon card
; input:
;	d = SEARCHEFFECT_* constant
;	de = (optional) card ID to search for in deck
;	hl = text to print if Deck has card(s)
; output:
;	carry set if refused to look at deck
LookForCardsInDeck:
	push hl
	push bc
	ld a, [wDuelTempList]
	cp $ff
	jr z, .none_in_deck
	ld a, d
	bit 7, a
	jr nz, .not_card_id
	call .SearchDeckForCardID
	jr c, .none_in_deck
	jr .exists_in_deck

.not_card_id
	res 7, a
	ld hl, .search_table
	call JumpToFunctionInTable
	jr c, .none_in_deck

.exists_in_deck
	pop bc
	pop hl
	call DrawWideTextBox_WaitForInput
	or a
	ret

.none_in_deck
	pop hl
	call LoadTxRam2
	pop hl
	ldtx hl, ThereIsNoInTheDeckText
	call DrawWideTextBox_WaitForInput
	ldtx hl, WouldYouLikeToCheckTheDeckText
	jp YesOrNoMenuWithText_SetCursorToYes

.search_table
	dw .SearchDeckForPokemon
	dw .SearchDeckForNidoran
	dw .SearchDeckForBasicFighting
	dw .SearchDeckForBasicEnergy
	dw .SearchDeckForTrainer
	dw .SearchDeckForFire
	dw .SearchDeckForLightning
	dw .SearchDeckForFighting
	dw .SearchDeckForPsychic
	dw .SearchDeckForDarkness
	dw .SearchDeckForColorless
	dw .SearchDeckForEvolution
	dw .SearchDeckForHitmon
	dw .SearchDeckForSubs

.set_carry
	scf
	ret

; returns carry if no card with
; same card ID as de is found in Deck
.SearchDeckForCardID
	ld b, d
	ld c, e
	ld hl, wDuelTempList
.loop_deck_e
	ld a, [hli]
	cp $ff
	jr z, .set_carry
	call GetCardIDFromDeckIndex
	call CompareDEtoBC
	jr nz, .loop_deck_e
	or a
	ret

; returns carry if no NidoranM or NidoranF card is found in Deck
.SearchDeckForNidoran
	ld hl, wDuelTempList
.loop_deck_nidoran
	ld a, [hli]
	cp $ff
	jr z, .set_carry
	call GetCardIDFromDeckIndex
	cp16 PLUSPOWER
	jr nz, .loop_deck_nidoran
.found_nidoran
	or a
	ret

; returns carry if no Basic Fighting Pokemon is found in Deck
.SearchDeckForBasicFighting
	ld hl, wDuelTempList
.loop_deck_fighting
	ld a, [hli]
	cp $ff
	jr z, .set_carry
	call LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_FIGHTING
	jr nz, .loop_deck_fighting
	ld a, [wLoadedCard2Stage]
	or a ; BASIC
	jr nz, .loop_deck_fighting
	ret

; returns carry if no Basic Energy cards are found in Deck
.SearchDeckForBasicEnergy
	ld hl, wDuelTempList
.loop_deck_energy
	ld a, [hli]
	cp $ff
	jr z, .set_carry
	call GetCardIDFromDeckIndex
	call GetCardType
	cp TYPE_ENERGY_DOUBLE_COLORLESS
	jr z, .loop_deck_energy
	and TYPE_ENERGY
	jr z, .loop_deck_energy
	or a
	ret

; returns carry if no Pokemon cards are found in Deck
.SearchDeckForPokemon
	ld hl, wDuelTempList
.loop_deck_pkmn
	ld a, [hli]
	cp $ff
	jr z, .set_carry
	call GetCardIDFromDeckIndex
	call GetCardType
	cp TYPE_ENERGY
	jr nc, .loop_deck_pkmn
	or a
	ret

.SearchDeckForTrainer
    ld hl, wDuelTempList
.loop_deck_trainer
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_TRAINER
    jr nz, .loop_deck_trainer ; skip if not a Trainer
    or a
    ret

.SearchDeckForFire
    ld hl, wDuelTempList
.loop_deck_Fire
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_FIRE
    jr nz, .loop_deck_Fire ; skip if not a Trainer
    or a
    ret

.SearchDeckForWater
    ld hl, wDuelTempList
.loop_deck_Water
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_WATER
    jr nz, .loop_deck_Water ; skip if not a Trainer
    or a
    ret
	
.SearchDeckForWaterEnergy
    ld hl, wDuelTempList
.loop_deck_WaterEnergy
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_ENERGY_WATER
    jr nz, .loop_deck_WaterEnergy ; skip if not a Trainer
    or a
    ret

.SearchDeckForLightning
    ld hl, wDuelTempList
.loop_deck_Lightning
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_LIGHTNING
    jr nz, .loop_deck_Lightning ; skip if not a Trainer
    or a
    ret

.SearchDeckForFighting
    ld hl, wDuelTempList
.loop_deck_Fighting
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_FIGHTING
    jr nz, .loop_deck_Fighting ; skip if not a Trainer
    or a
    ret

.SearchDeckForPsychic
    ld hl, wDuelTempList
.loop_deck_Psychic
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_PSYCHIC
    jr nz, .loop_deck_Psychic ; skip if not a Trainer
    or a
    ret

.SearchDeckForDarkness
    ld hl, wDuelTempList
.loop_deck_Darkness
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_DARKNESS
    jr nz, .loop_deck_Darkness ; skip if not a Trainer
    or a
    ret

.SearchDeckForColorless
    ld hl, wDuelTempList
.loop_deck_Colorless
    ld a, [hli]
    cp $ff
    jp z, .set_carry
    call GetCardIDFromDeckIndex
    call GetCardType
    cp TYPE_PKMN_COLORLESS
    jr nz, .loop_deck_Colorless ; skip if not a Trainer
    or a
    ret

.SearchDeckForEvolution
	ld hl, wDuelTempList
.loop_deck_evolution
	ld a, [hli]
	cp $ff
	jp z, .set_carry
	farcall CheckDeckIndexForStage1OrStage2Pokemon
	jp nc, .loop_deck_evolution ; skip if not a Stage 1/2 Pokemon
	or a
	ret

.SearchDeckForHitmon
	ld hl, wDuelTempList
.loop_deck_hitmon
	ld a, [hli]
	cp $ff
	jp z, .set_carry
	call GetCardIDFromDeckIndex
	ld a, e
	cp HITMONCHAN
	jr z, .found_hitmon
	cp HITMONLEE
	jr z, .found_hitmon
	cp HITMONTOP
	jr nz, .loop_deck_hitmon
.found_hitmon
	or a
	ret

.SearchDeckForSubs
	ld hl, wDuelTempList
.loop_deck_subs
	ld a, [hli]
	cp $ff
	jp z, .set_carry
	call GetCardIDFromDeckIndex
	ld a, e
	cp16 SUBSTITUTE_DOLL
	jr z, .found_hitmon
	cp FROAKIE
	jr nz, .loop_deck_subs
.found_subs
	or a
	ret

MysteryAttack_RandomEffect2:
	ld a, 10
	farcall SetDefiniteDamage

; chooses a random effect from 8 possible options.
	farcall UpdateRNGSources
	and %111
	ldh [hTemp_ffa0], a
	ld hl, .random_effect
	jp JumpToFunctionInTable

.random_effect
	dw ParalysisEffect
	dw PoisonEffect
	dw SleepEffect
	dw ConfusionEffect
	dw .no_effect ; this will actually activate recovery effect afterwards
	dw .no_effect
	dw .more_damage
	dw .no_damage

.more_damage
	ld a, 20
	jp SetDefiniteDamage

.no_damage
	ld a, ATK_ANIM_GLOW_EFFECT
	ld [wLoadedAttackAnimation], a
	xor a
	farcall SetDefiniteDamage
	farcall SetNoEffectFromStatus
.no_effect
	ret

Peek_SelectEffect2:
; set Pkmn Power used flag
	ldh a, [hTemp_ffa0]
	add DUELVARS_ARENA_CARD_FLAGS
	call GetTurnDuelistVariable
	set USED_PKMN_POWER_THIS_TURN_F, [hl]

	ld a, DUELVARS_DUELIST_TYPE
	call GetTurnDuelistVariable
	and DUELIST_TYPE_AI_OPP
	jr nz, .ai_opp

; player
	farcall FinishQueuedAnimations
	farcall HandlePeekSelection
	ldh [hAIPkmnPowerEffectParam], a
	ret

.ai_opp
	ldh a, [hAIPkmnPowerEffectParam]
	bit AI_PEEK_TARGET_HAND_F, a
	jr z, .prize_or_deck
	and (~AI_PEEK_TARGET_HAND & $ff) ; unset bit to get deck index
; if masked value is higher than $40, then it means
; that AI chose to look at Player's deck.
; all deck indices will be smaller than $40.
	cp $40
	jr c, .hand
	ldh a, [hAIPkmnPowerEffectParam]
	jr .prize_or_deck

.hand
; AI chose to look at random card in hand,
; so display it to the Player on screen.
	call SwapTurn
	ldtx hl, PeekWasUsedToLookInYourHandText
	bank1call DisplayCardDetailScreen
	jp SwapTurn

.prize_or_deck
; AI chose either a prize card or Player's top deck card,
; so show Play Area and draw cursor appropriately.
	farcall FinishQueuedAnimations
	call SwapTurn
	ldh a, [hAIPkmnPowerEffectParam]
	xor $80
	farcall DrawAIPeekScreen
	call SwapTurn
	ldtx hl, CardPeekWasUsedOnText
	jp DrawWideTextBox_WaitForInput


TYRANITAR_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseATyranitarFromDeckText
	ldtx bc, TyranitarName
	ld de, TYRANITAR
	farcall LookForCardsInDeck
	ret c

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseATyranitarText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	cp16 TYRANITAR
	jr nz, .play_sfx

; Krabby was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	call Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Krabby card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	call GetCardIDFromDeckIndex
	cp16 TYRANITAR
	jr z, .play_sfx ; found Krabby, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Krabby in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

Gyarados_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseAGyaradosFromDeckText
	ldtx bc, GyaradosName
	ld de, GYARADOS
	farcall LookForCardsInDeck
	ret c

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseAGyaradosText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	cp16 GYARADOS
	jr nz, .play_sfx

; Krabby was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	call Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Krabby card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	call GetCardIDFromDeckIndex
	cp16 TYRANITAR
	jr z, .play_sfx ; found Krabby, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Krabby in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

PIKACHU_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseAPikachuFromDeckText

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseAPikachuText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	cp16 PIKACHU
	jr nz, .play_sfx

; Krabby was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	call Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Krabby card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	call GetCardIDFromDeckIndex
	cp16 PIKACHU
	jr z, .play_sfx ; found Krabby, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Krabby in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	scf
	ret

HitmonSearch_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseAHitmonFromDeckText

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseAHitmonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	cp16 HITMONCHAN
	jr z, .selected_nidoran
	cp16 HITMONLEE
	jr z, .selected_nidoran
	cp16 HITMONTOP
	jr nz, .loop ; .play_sfx would be more appropriate here

.selected_nidoran
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no NidoranF or NidoranM card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall GetCardIDFromDeckIndex
	ld bc, HITMONCHAN
	call CompareDEtoBC
	jr z, .play_sfx ; found, go back to top loop
	ld bc, HITMONLEE
	call CompareDEtoBC
	jr z, .play_sfx ; found, go back to top loop
	ld bc, HITMONTOP
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Nidoran in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

HitmonSearch_AISelectEffect:
	call CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	call GetCardIDFromDeckIndex
	ld a, e
	cp HITMONCHAN
	jr z, .found
	cp HITMONLEE
	jr z, .found
	cp HITMONTOP
	jr nz, .loop_deck
.found
	ret	

Stage1Search_DeckCheck:
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	cp DECK_SIZE
	ccf
	ldtx hl, NoCardsLeftInTheDeckText
	ret

Stage1Search_PlayerSelection:
	ld a, $ff
	ldh [hTemp_ffa0], a
	farcall CreateDeckCardList
	ldtx hl, ChooseBasicOrEvolutionPokemonCardFromDeckText
	ldtx bc, EvolutionCardText
	lb de, SEARCHEFFECT_POKEMON, 0
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
	ldtx hl, ChoosePokemonCardText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText
.read_input
	bank1call DisplayCardList
	jr c, .try_exit ; B was pressed, check if Player can cancel operation
	ldh a, [hTempCardIndex_ff98]
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_ENERGY
	jr nc, .play_sfx ; can't select non-Pokemon card
	ldh a, [hTempCardIndex_ff98]
	ldh [hTempList + 1], a
	or a
	ret
.no_pkmn
	ld a, $ff
	ldh [hTempList + 1], a
	or a
	ret

.play_sfx
	farcall Func_3794
	jr .read_input

.try_exit
; check if Player can exit without selecting anything
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall CheckIfCardIsBasicEnergy
	jr c, .next_card
	jr .read_input ; no, has to select Energy card
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

Stage1Search_AddToHandEffect:
	ldh a, [hTempList]
	or a
	ret z ; return if coin toss was tails

	ldh a, [hTempList + 1]
	cp $ff
	jr z, .done ; skip if no Pokemon was chosen

; add Pokemon card to hand and show in screen if
; it wasn't the Player who played the Trainer card.
	farcall SearchCardInDeckAndAddToHand
	farcall AddCardToHand
	farcall IsPlayerTurn
	jr c, .done
	ldh a, [hTempList + 1]
	ldtx hl, WasPlacedInTheHandText
	bank1call DisplayCardDetailScreen
.done
	farcall Func_2c0bd
	ret

DataRetrievalEffect2:
	farcall CreateHandCardList
	farcall SortCardsInDuelTempListByID
	ld hl, wDuelTempList
.loop_return_deck
	ld a, [hli]
	cp $ff
	jr z, .draw_cards
	farcall RemoveCardFromHand
	farcall ReturnCardToDeck
	jr .loop_return_deck

.draw_cards
	farcall Func_2c0bd
	ld a, 5
	bank1call DisplayDrawNCardsScreen
	ld c, 5
.draw_loop
	farcall DrawCardFromDeck
	jr c, .done
	farcall AddCardToHand
	dec c
	jr nz, .draw_loop
.done
	ret

SprintEffect2:
; discard hand
	farcall CreateHandCardList
	farcall SortCardsInDuelTempListByID
	ld hl, wDuelTempList
.discard_loop
	ld a, [hli]
	cp $ff
	jr z, .draw_card
	farcall RemoveCardFromHand
	farcall PutCardInDiscardPile
	jr .discard_loop

.draw_card
	ld a, 3
	bank1call DisplayDrawNCardsScreen
	ldh a, [hTempPlayAreaLocation_ffa1]
    ldh [hTempPlayAreaLocation_ff9d], a
	ld c, 3
.draw_loop
	farcall DrawCardFromDeck
	jr c, .done
	farcall AddCardToHand
	dec c
	jr nz, .draw_loop
.done
	farcall SetUsedPokemonPowerThisTurn
	ret

PlayerYesOrNoSelection:
.select_deck
    bank1call DrawDuelMainScene
    ldtx hl, YesOrNoTextNEOtext ; Yes or No text
    farcall TwoItemHorizontalMenu
    ldh a, [hKeysHeld]
    and B_BUTTON
    jr nz, PlayerYesOrNoSelection ; loop back to start if nothing selected

    ldh a, [hCurMenuItem]
    ldh [hTempList], a ; store selection in first position in list
    or a
    jr z, .Yes ; go to the Yes option
    
	ld a, 10 ; This is the no option
    call AddToDamage ; adds damage just as an example effect
    ret

.Yes ; This is the yes option
    farcall Teleport_PlayerSelectEffect
    ret

Donot:
	ret

ShellTrapEffect1:
	ld a, DUELVARS_ARENA_CARD_LAST_TURN_DAMAGE
	call GetTurnDuelistVariable
	or a
	jr nz, .has_status
	jr z, .no_status
.has_status
	ld a, 30
	farcall AddToDamage
	ret
.no_status
	ret

Teleport_PlayerSelectEffect1:
	ldtx hl, SelectPkmnOnBenchToSwitchWithActiveText
	farcall DrawWideTextBox_WaitForInput
	bank1call HasAlivePokemonInBench
	ld a, $01
	ld [wPlayAreaSelectAction], a
.loop
	bank1call OpenPlayAreaScreenForSelection
	ldh a, [hTempPlayAreaLocation_ff9d]
	ldh [hTemp_ffa0], a
	ret	

Teleport_PlayerSelectEffect3:
	ldtx hl, SelectPkmnOnBenchToSwitchWithActiveText
	farcall DrawWideTextBox_WaitForInput
	bank1call HasAlivePokemonInBench
	ld a, $01
	ld [wPlayAreaSelectAction], a
.loop
	bank1call OpenPlayAreaScreenForSelection
	jr c, .loop
	ldh a, [hTempPlayAreaLocation_ff9d]
	ldh [hTemp_ffa0], a
	ret		

EnergySearch_PlayerSelection2:
	ld a, $ff
	ldh [hTemp_ffa0], a
	farcall CreateDeckCardList
	ldtx hl, Choose1BasicEnergyCardFromDeckText
	ld d, SEARCHEFFECT_BASIC_ENERGY
	ldtx bc, BasicEnergyText
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
	ldtx hl, ChooseBasicEnergyCardText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText
.read_input
	bank1call DisplayCardList
	jr c, .try_exit ; B pressed?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	farcall CheckIfCardIsBasicEnergy
	jr c, .play_sfx
	or a
	ret
.play_sfx
	farcall Func_3794
	jr .read_input

.try_exit
; check if Player can exit without selecting anything
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall CheckIfCardIsBasicEnergy
	jr c, .next_card
	jr .read_input ; no, has to select Energy card
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

FindTrainer:
	call CreateDeckCardList
	ldtx hl, ChooseTrainerCardFromDeckText
	ldtx bc, TrainerCardText
	lb de, SEARCHEFFECT_TRAINER, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseTrainerCardText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_TRAINER
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_TRAINER
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindTrainer:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_TRAINER
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found

MarowakCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicFightingPokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_BASIC_FIGHTING

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicFightingPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp FIGHTING
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp FIGHTING
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

MarowakCallForFamily_AISelectEffect:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp FIGHTING
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

FindGrass:
	call CreateDeckCardList
	ldtx hl, ChooseGrassPKMNCardFromDeckText
	ldtx bc, GrassPokemonText
	lb de, SEARCHEFFECT_POKEMON, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseGrassText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_GRASS
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_GRASS
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindGrass:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_GRASS
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindFire:
	call CreateDeckCardList
	ldtx hl, ChooseFirePKMNCardFromDeckText
	ldtx bc, FirePokemonText
	lb de, SEARCHEFFECT_POKEMON, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseFireText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_FIRE
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_FIRE
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindFire:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_FIRE
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindWater:
	call CreateDeckCardList
	ldtx hl, ChooseWaterPKMNCardFromDeckText
	ldtx bc, WaterPokemonText
	lb de, SEARCHEFFECT_WATER, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseWaterText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_WATER
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_WATER
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindWater:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_WATER
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindLightning:
	call CreateDeckCardList
	ldtx hl, ChooseLightningPKMNCardFromDeckText
	ldtx bc, LightningPokemonText
	lb de, SEARCHEFFECT_LIGHTNING, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseLightningText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_LIGHTNING
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_LIGHTNING
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindLightning:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_LIGHTNING
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindFighting:
	call CreateDeckCardList
	ldtx hl, ChooseFightingPKMNCardFromDeckText
	ldtx bc, FightingPokemonText
	lb de, SEARCHEFFECT_FIGHTING, 0

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseFightingText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_FIGHTING
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_FIGHTING
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindFighting:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_FIGHTING
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindPsychic:
	call CreateDeckCardList
	ldtx hl, ChoosePsychicPKMNCardFromDeckText
	ldtx bc, PsychicPokemonText
	lb de, SEARCHEFFECT_POKEMON, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChoosePsychicText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_PSYCHIC
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_PSYCHIC
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindPsychic:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_PSYCHIC
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindDarkness:
	call CreateDeckCardList
	ldtx hl, ChooseDarknessPKMNCardFromDeckText
	ldtx bc, DarknessPokemonText
	lb de, SEARCHEFFECT_DARKNESS, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseDarknessText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_DARKNESS
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_DARKNESS
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindDarkness:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_DARKNESS
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

FindColorless:
	call CreateDeckCardList
	ldtx hl, ChooseColorlessPKMNCardFromDeckText
	ldtx bc, ColorlessPokemonText
	lb de, SEARCHEFFECT_COLORLESS, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseColorlessText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_COLORLESS
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_COLORLESS
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

AIFindColorless:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	cp TYPE_PKMN_COLORLESS
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

GetEnergyAttachedMultiplierDamage2:
	call SwapTurn
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable

	ld c, 0
.loop
	ld a, [hl]
	cp CARD_LOCATION_ARENA
	jr nz, .next
	; is in Arena
	ld a, l
	farcall GetCardIDFromDeckIndex
	farcall GetCardType
	and TYPE_ENERGY
	jr z, .next
	; is Energy attached to Arena card
	inc c
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop

	call SwapTurn
	ld l, c
	ld h, $00
	ld b, $00
	add hl, hl ; hl =  2 * c
	add hl, hl ; hl =  4 * c
	add hl, bc ; hl =  5 * c
	add hl, hl ; hl = 10 * c
	ld e, l
	ld d, h
	ret

FindEvolution:
	farcall CreateDeckCardList
	ldtx hl, ChooseEvolutionCardFromDeckText
	ldtx bc, EvolutionCardText
	lb de, SEARCHEFFECT_EVOLUTION, 0
	ldtx hl, SearchyourDeckforanEvolvedPkmnText
	call DrawWideTextBox_WaitForInput

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseEvolutionCardText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall CheckDeckIndexForStage1OrStage2Pokemon
	jr nc, .play_sfx ; not an Evolution card

; an Evolution card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Evolution cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall CheckDeckIndexForStage1OrStage2Pokemon
	jr nc, .next_card
	jr .play_sfx ; found an Evolution card, return to selection process

; no Evolution cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


; uses a card's deck index to check whether or not it is an Evolution card
; preserves all registers except af
; input:
;	a = deck index (0-59) of the card being checked
; output:
;	carry = set:  if the card is an Evolution card
CheckDeckIndexForStage1OrStage2Pokemon:
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_ENERGY
	ret nc ; not a Pokemon
	ld a, [wLoadedCard2Stage]
	or a
	ret z ; is Basic
	; is an evolution
	scf
	ret


; finds the first Evolution card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AIFindEvolution:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall CheckDeckIndexForStage1OrStage2Pokemon
	jr nc, .loop_deck ; card isn't an Evolution card
	ret ; Evolution card found

use_pokemon_powerEffect:
	bank1call DrawDuelMainScene
	ldh a, [hTempCardIndex_ff9f]
	call LoadCardDataToBuffer1_FromDeckIndex
	ld de, wLoadedCard1Name
	ld hl, wTxRam2
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ld de, wLoadedAttackName
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hl], a
	ldtx hl, WillUseThePokemonPowerText
	call DrawWideTextBox_WaitForInput
	ret

RodEffect2:
  call CreateNoTrainerCardListFromDiscardPile
  ld a, 3
  ld [hTempCardIndex_ff9f], a
  ld a, $ff
  ldh [hTempList], a
  xor a
  ldh [hCurSelectionItem], a
  ldtx hl, Choose2EnorPKCardsFromDiscardPileText
  farcall DrawWideTextBox_WaitForInput
 .loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, PlayerDiscardPileText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
  jr nc, .store_selected_card
; B pressed
  ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr c, .loop ; chose to continue
  jr .done

.store_selected_card
	farcall RemoveCardFromDuelTempList
  farcall GetNextPositionInTempList_TrainerEffects
	ldh a, [hTempCardIndex_ff98]
	ld [hl], a
	jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
	farcall GetNextPositionInTempList_TrainerEffects
	ld [hl], $ff ; terminating byte
	or a
	ret  
  ret

Riptide_PlayerSelectEffect2:
  farcall CreateEnergyCardListFromDiscardPile_AllEnergy
  ld a, 6
  ld [hTempCardIndex_ff9f], a
  ld a, $ff
  ldh [hTempList], a
  xor a
  ldh [hCurSelectionItem], a
  ldtx hl, Choose2BasicEnergyCardsFromDiscardPileText
  farcall DrawWideTextBox_WaitForInput

.loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, PlayerDiscardPileText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
  jr nc, .store_selected_card
; B pressed
  ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr c, .loop ; chose to continue
  jr .done

.store_selected_card
  farcall GetNextPositionInTempList
  ldh a, [hTempCardIndex_ff98]
  ld [hl], a ; store selected card
  farcall RemoveCardFromDuelTempList
  jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
  farcall GetNextPositionInTempList
  ld [hl], $ff
  or a
  ret

SelectedDiscardPileCards_ShuffleIntoDeckEffect2:
  ld hl, hTempList
  ld de, wDuelTempList
.loop
  ld a, [hli]
  ld [de], a
  inc de
  cp $ff
  jr z, .done
; this is kinda dumb and can probably be abbreviated
  farcall MoveDiscardPileCardToHand
  farcall ReturnCardToDeck
  jr .loop

.done
	farcall Func_2c0bd
  ret  

EnergyRetrieval_PlayerDiscardPileSelection2:
	ld a, 1 ; start at 1 due to card selected from hand
	ldh [hCurSelectionItem], a
	ldtx hl, Choose2BasicEnergyCardsFromDiscardPileText
	farcall DrawWideTextBox_WaitForInput
	farcall CreateEnergyCardListFromDiscardPile_OnlyBasic

.select_card
	bank1call InitAndDrawCardListScreenLayout
	ldtx hl, PleaseSelectCardText
	ldtx de, PlayerDiscardPileText
	bank1call SetCardListHeaderText
	bank1call DisplayCardList
	jr nc, .selected
	; B was pressed
	ld a, 2 + 1 ; includes the card selected from hand
	farcall AskWhetherToQuitSelectingCards
	jr c, .select_card ; player selected No
	jr .done

.selected
	farcall GetNextPositionInTempList_TrainerEffects
	ldh a, [hTempCardIndex_ff98]
	ld [hl], a
	farcall RemoveCardFromDuelTempList
	jr c, .done
	ldh a, [hCurSelectionItem]
	cp 2 + 1 ; includes the card selected from hand
	jr c, .select_card

.done
	farcall GetNextPositionInTempList_TrainerEffects
	ld [hl], $ff ; terminating byte
	or a
	ret  

GrassCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicGrassPokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicGrassPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp GRASS
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp GRASS
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

GrassCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp GRASS
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

EnergySearch_PlayerSelection3:
	farcall CreateDeckCardList
	ld a, 2
  	ld [hTempCardIndex_ff9f], a
  	ld a, $ff
  	ldh [hTempList], a
  	xor a
  	ldh [hCurSelectionItem], a
	ldtx hl, Chooseupto2BasicEnergyCardFromDeckText
	ld d, SEARCHEFFECT_BASIC_ENERGY
	ldtx bc, BasicEnergyText
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
	ldtx hl, ChooseBasicEnergyCardText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText
.loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, PlayerDiscardPileText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
    farcall CheckIfCardIsBasicEnergy
	jr c, .play_sfx
	or a
  jr nc, .store_selected_card
; B pressed
  jr .done

.play_sfx
	farcall Func_3794
	ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr nc, .done ; chose to continue
	jr .loop

.store_selected_card
  farcall GetNextPositionInTempList
  ldh a, [hTempCardIndex_ff98]
  ld [hl], a ; store selected card
  farcall RemoveCardFromDuelTempList
  jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
  farcall GetNextPositionInTempList
  ld [hl], $ff
  or a
  ret

ewo:
  ld hl, hTempList
  ld de, wDuelTempList
.loop
  ld a, [hli]
  ld [de], a
  inc de
  cp $ff
  jr z, .done
; this is kinda dumb and can probably be abbreviated
	farcall SearchCardInDeckAndAddToHand
	farcall AddCardToHand
	farcall PutCardInDiscardPile
	farcall RemoveCardFromHand
  jr .loop

.done
  farcall ShuffleDeck
; if Player played the card, exit
  farcall IsPlayerTurn
  jp c, .si
; if not, show card list selected by Opponent
  bank1call DisplayCardList
  ret
.si
  jp Sended2cards

Sended2cards:
	farcall GlowAnimationsEffect
	farcall DealDamageToPlayAreaPokemon
	ld [hl], $00
	ldtx hl, Sended2CardfromDecktoDiscardPile
	farcall DrawWideTextBox_WaitForInput    
	ret

FindColorlessEvolution:
	farcall CreateDeckCardList
	ldtx hl, ChooseColorlessEvolutionFromDeckText
	ldtx bc, EvolutionCardText
	lb de, SEARCHEFFECT_EVOLUTION, 0
	ldtx hl, SearchyourDeckforanEvolvedPkmnText
	call DrawWideTextBox_WaitForInput

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseColorlessEvolutionCardText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .attempt_to_cancel

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_COLORLESS
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr z, .play_sfx ; not an Evolution card
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	call Func_3794
	jr .loop

.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp TYPE_PKMN_COLORLESS
	jr nz, .next_card ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr nz, .play_sfx ; found, go back to top loop

; no valid card in Deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret
	
ColorlessCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, BasicColorlessPokemonFromDeckText
	ldtx bc, ColorlessPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicColorlessPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp COLORLESS
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp COLORLESS
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

ColorlessCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_PKMN_COLORLESS
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

CreateNoTrainerCardListFromDiscardPile:
; get number of cards in Discard Pile
; and have hl point to the end of the
; Discard Pile list in wOpponentDeckCards.
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_DISCARD_PILE
	call GetTurnDuelistVariable
	ld b, a
	add DUELVARS_DECK_CARDS
	ld l, a

	ld de, wDuelTempList
	inc b
	jr .next_card

.check_trainer
	ld a, [hl]
	call LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp TYPE_TRAINER
	jr z, .next_card

	ld a, [hl]
	ld [de], a
	inc de

.next_card
	dec l
	dec b
	jr nz, .check_trainer

	ld a, $ff ; terminating byte
	ld [de], a
	ld a, [wDuelTempList]
	cp $ff
	jr z, .no_trainers
	or a
	ret
.no_trainers
	ldtx hl, ThereAreNoTrainerCardsInDiscardPileText
	scf
	ret
	
PlayerYesNoEffect2:
	farcall IsPlayerTurn
	jp nc, .ia
	bank1call DrawDuelMainScene ; draws a screen for the player to select from
	ldtx hl, YesNoText ; loads the text we made in step 1
	call TwoItemHorizontalMenu ; defines that this text contains 2 menu items (yes/no)
	ldh a, [hKeysHeld] ; loads the player's input
	and B_BUTTON
	jp nz, PlayerYesNoEffect2 ; this forces the player to select either "Yes" or "No", can't exit
	ldh a, [hCurMenuItem] ; stores the result in a
	ldh [hTemp_ffa0], a ; loads what the player selected into hTemp_ffa0
	ret
.ia
	ld a, 0
	ldh [hTemp_ffa0], a ; loads what the player selected into hTemp_ffa0
	ret

PlayerForfeitEffect:
	bank1call DrawDuelMainScene ; draws a screen for the player to select from
	ldtx hl, ForfeitText ; loads the text we made in step 1
	call TwoItemHorizontalMenu ; defines that this text contains 2 menu items (yes/no)
	ldh a, [hKeysHeld] ; loads the player's input
	and B_BUTTON
	jp nz, PlayerYesNoEffect ; this forces the player to select either "Yes" or "No", can't exit
	ldh a, [hCurMenuItem] ; stores the result in a
	ldh [hTemp_ffa0], a ; loads what the player selected into hTemp_ffa0
	ret

FireCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicFirePokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicFirePokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp FIRE
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp FIRE
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

FireCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp FIRE
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

NidoranFCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseNidoranFromDeckText
	ldtx bc, NidoranMNidoranFText
	ld d, SEARCHEFFECT_NIDORAN
	farcall LookForCardsInDeck
	ret c

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseNidoranText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	farcall GetCardIDFromDeckIndex
	cp16 PLUSPOWER
	jr nz, .loop ; .play_sfx would be more appropriate here

.selected_nidoran
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ld e, PLAY_AREA_ARENA
  	farcall Put1DamageCounterOnTarget
	ret

.play_sfx
	; play SFX and loop back
	call Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no NidoranF or NidoranM card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall GetCardIDFromDeckIndex
	cp16 PLUSPOWER
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Nidoran in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

NidoranFCallForFamily_AISelectEffect2:
	call CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	call GetCardIDFromDeckIndex
	cp16 PLUSPOWER
	jr nz, .loop_deck
.found
	ret

WaterCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicWaterPokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicWaterPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp WATER
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp WATER
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

WaterCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp WATER
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

LightningCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicLightningPokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasiclightningPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp LIGHTNING
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp LIGHTNING
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

LightningCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp LIGHTNING
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

PsychicCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicPsychicPokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicPsychicPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp PSYCHIC
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp PSYCHIC
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

PsychicCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp PSYCHIC
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

DarknessCallForFamily_PlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a

	farcall CreateDeckCardList
	ldtx hl, ChooseBasicDarknessPokemonFromDeckText
	ldtx bc, FightingPokemonDeckText
	ld d, SEARCHEFFECT_POKEMON

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseBasicDarknessPokemonText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b

	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp DARKNESS
	jr nz, .play_sfx ; is Fighting?
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .play_sfx ; is Basic?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Basic Fighting Pokemon.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp DARKNESS
	jr nz, .next ; found, go back to top loop
	ld a, [wLoadedCard1Stage]
	or a
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no valid card in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

DarknessCallForFamily_AISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard2Type]
	cp DARKNESS
	jr nz, .loop_deck
	ld a, [wLoadedCard2Stage]
	or a
	jr nz, .loop_deck
; found
	ret

GrassEnergy_PlayerSelection:
	farcall CreateDeckCardList
	ld a, 2
  	ld [hTempCardIndex_ff9f], a
  	ld a, $ff
  	ldh [hTempList], a
  	xor a
  	ldh [hCurSelectionItem], a
	ldtx hl, ChooseUpt2GrassEnergyText
	ldtx bc, GrassEnergyName
	ld de, GRASS_ENERGY
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
	ldtx hl, ChooseBasicEnergyCardText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText
.loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, PlayerDiscardPileText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
	call GetCardIDFromDeckIndex
	cp16 GRASS_ENERGY
	jr nz, .play_sfx
  jr nc, .store_selected_card
; B pressed
  jr .done

.play_sfx
	farcall Func_3794
	ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr nc, .done ; chose to continue
	jr .loop

.store_selected_card
  farcall GetNextPositionInTempList
  ldh a, [hTempCardIndex_ff98]
  ld [hl], a ; store selected card
  farcall RemoveCardFromDuelTempList
  jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
  farcall GetNextPositionInTempList
  ld [hl], $ff
  or a
  ret

WaterEnergy_PlayerSelection:
	farcall CreateDeckCardList
	ld a, 2
  	ld [hTempCardIndex_ff9f], a
  	ld a, $ff
  	ldh [hTempList], a
  	xor a
  	ldh [hCurSelectionItem], a
	ldtx hl, ChooseUpt2WaterEnergyText
	ldtx bc, WaterEnergyName
	ld de, WATER_ENERGY
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
	ldtx hl, ChooseBasicEnergyCardText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText
.loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, PlayerDiscardPileText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
	call GetCardIDFromDeckIndex
	cp16 WATER_ENERGY
	jr nz, .play_sfx
  jr nc, .store_selected_card
; B pressed
  jr .done

.play_sfx
	farcall Func_3794
	ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr nc, .done ; chose to continue
	jr .loop

.store_selected_card
  farcall GetNextPositionInTempList
  ldh a, [hTempCardIndex_ff98]
  ld [hl], a ; store selected card
  farcall RemoveCardFromDuelTempList
  jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
  farcall GetNextPositionInTempList
  ld [hl], $ff
  or a
  ret  

ApplyExtraWaterEnergyDamageBonus2:
	ld a, [wMetronomeEnergyCost]
	or a
	jr z, .not_metronome
	ld c, a ; amount of colorless needed for Metronome
	ld b, 0 ; no Water energy needed for Metronome

.not_metronome
	push bc
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld e, a
	call GetPlayAreaCardAttachedEnergies
	pop bc

	ld hl, wAttachedEnergies + WATER
	ld a, c
	or a
	jr z, .check_bonus ; is Energy cost all water energy?

	; it's not, so we need to remove the
	; Water energy cards from calculations
	; if they pay for colorless instead.
	ld a, [wTotalAttachedEnergies]
	cp [hl]
	jr nz, .check_bonus ; skip if at least 1 non-Water energy attached

	; Water is the only energy color attached
	ld a, c
	add b
	ld b, a
	; b += c

.check_bonus
	ld a, [hl]
	sub b
	jr c, .skip_bonus ; is water energy <  b?
	jr z, .skip_bonus ; is water energy == b?

; a holds number of water energy not payed for energy cost
	cp 4
	jr c, .less_than_3
	ld a, 3 ; cap this to 2 for bonus effect
.less_than_3
	add a
	call ATimes10
	call AddToDamage ; add 10 * a to damage

.skip_bonus
	ld a, [wDamage]
	ld [wAIMinDamage], a
	ld [wAIMaxDamage], a
	ret

MysteriousFossil_PlayerSelection:
	farcall CreateDeckCardList
	ld a, 2
  	ld [hTempCardIndex_ff9f], a
  	ld a, $ff
  	ldh [hTempList], a
  	xor a
  	ldh [hCurSelectionItem], a
	ldtx hl, ChooseUpt2FossilsText
	ldtx bc, MysteriousFossilName
	ld de, MYSTERIOUS_FOSSIL
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
.loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, DuelistDeckText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
	call GetCardIDFromDeckIndex
	cp16 MYSTERIOUS_FOSSIL
	jr nz, .play_sfx
  jr nc, .store_selected_card
; B pressed
  jr .done

.play_sfx
	farcall Func_3794
	ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr nc, .done ; chose to continue
	jr .loop

.store_selected_card
  farcall GetNextPositionInTempList
  ldh a, [hTempCardIndex_ff98]
  ld [hl], a ; store selected card
  farcall RemoveCardFromDuelTempList
  jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
  farcall GetNextPositionInTempList
  ld [hl], $ff
  or a
  ret  

LightningEnergy_PlayerSelection:
	farcall CreateDeckCardList
	ld a, 2
  	ld [hTempCardIndex_ff9f], a
  	ld a, $ff
  	ldh [hTempList], a
  	xor a
  	ldh [hCurSelectionItem], a
	ldtx hl, ChooseUpt2LIGHTNINGEnergyText
	ldtx bc, LightningEnergyName
	ld de, LIGHTNING_ENERGY
	farcall LookForCardsInDeck
	ret c ; skip showing deck

	bank1call Func_5591
	ldtx hl, ChooseBasicEnergyCardText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText
.loop
  bank1call InitAndDrawCardListScreenLayout
  ldtx hl, PleaseSelectCardText
  ldtx de, PlayerDiscardPileText
  bank1call SetCardListHeaderText
  ld a, [wDuelTempList]
  cp $ff
  jr z, .done  ; no more cards to choose from
  bank1call DisplayCardList
	call GetCardIDFromDeckIndex
	cp16 LIGHTNING_ENERGY
	jr nz, .play_sfx
  jr nc, .store_selected_card
; B pressed
  jr .done

.play_sfx
	farcall Func_3794
	ld a, [hTempCardIndex_ff9f]
  farcall AskWhetherToQuitSelectingCards
  jr nc, .done ; chose to continue
	jr .loop

.store_selected_card
  farcall GetNextPositionInTempList
  ldh a, [hTempCardIndex_ff98]
  ld [hl], a ; store selected card
  farcall RemoveCardFromDuelTempList
  jr c, .done
  ld a, [hTempCardIndex_ff9f]
  ld b, a
  ldh a, [hCurSelectionItem]
  cp b
  jr c, .loop

.done
  farcall GetNextPositionInTempList
  ld [hl], $ff
  or a
  ret  
 
SharpenEffect2:
	ldtx de, IfHeadsDraw1CardFromDeckText
	farcall TossCoin_BankB
	jp nc, .OppDraws1card; tails
	ldtx hl, Draw1CardFromTheDeckText
	farcall DrawWideTextBox_WaitForInput
	bank1call DisplayDrawOneCardScreen
	farcall DrawCardFromDeck
	ret c ; empty deck
	farcall AddCardToHand
	farcall LoadCardDataToBuffer1_FromDeckIndex
	ld a, [wDuelistType]
	cp DUELIST_TYPE_PLAYER
	ret nz
	; show card on screen if it was Player
	bank1call OpenCardPage_FromHand
	farcall GlowAnimationsEffect
	farcall FocusEnergyEffect
	ret
	.OppDraws1card
	call OppDraws1cardEffect
	call GlowAnimationsEffect
	farcall FocusEnergyEffect
	ret

PhantomPain_BenchDamageEffect2:
	ldh a, [hTempPlayAreaLocation_ffa1]
	cp $ff
	ret z
	ld e, PLAY_AREA_ARENA
	farcall GetCardDamageAndMaxHP
	ld b, a ; charge b to a, charge the damage of your active to b
	call SwapTurn
	ld e, PLAY_AREA_ARENA
	farcall GetCardDamageAndMaxHP
	ld e, a
	ldh a, [hTempPlayAreaLocation_ffa1]
	add DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable ;gets the current hp of the opp pokemon
	sub b ; sub the current hp against the damage of your active
	jp c,.moredamage
	ld [hl], a
	ld a, ATK_ANIM_DARK_MIND_GLOW
	farcall Func_2fea9
	bank1call OpenTurnHolderPlayAreaScreen
	jp SwapTurn
.moredamage
	ld e, b
	ldh a, [hTempPlayAreaLocation_ffa1]
	ld b, a
	ld d, a
	farcall DealDamageToPlayAreaPokemon
	ld a, ATK_ANIM_DARK_MIND_GLOW
	farcall Func_2fea9
	jp SwapTurn	

Attach2Energy_FromDiscardtoActiveEffect2:
	ld hl, hTempList
.loop
	ld a, [hli]
	cp 2
	ret nc
	push hl
	farcall FireEnergyDiscardPileSelection2
	ldh a, [hTemp_ffa0]
	farcall MoveDiscardPileCardToHand
	farcall GlowAnimationsEffect
  	xor a  ; PLAY_AREA_ARENA
  	ldh [hTempPlayAreaLocation_ffa1], a
  	; restore [hTempPlayAreaLocation_ff9d] from [hTemp_ffa0]
  	ldh a, [hTemp_ffa0]
  	ldh [hTempPlayAreaLocation_ff9d], a
	ldh a, [hTempPlayAreaLocation_ffa1]
 	or CARD_LOCATION_PLAY_AREA
  	ld e, a
	farcall AttachEnergyEffect
	pop hl
	jr .loop

MAGMAR_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseaMagmarFromDeckText
	ldtx bc, MagmarName
	ld de, MAGMAR
	farcall LookForCardsInDeck
	ret c

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseAMagmarText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	cp16 MAGMAR
	jr nz, .play_sfx

; Krabby was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	call Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Krabby card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	call GetCardIDFromDeckIndex
	cp16 MAGMAR
	jr z, .play_sfx ; found Krabby, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Krabby in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret


SUBSTITUTE_DOLL_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseASubstituteFromDeckText
	ldtx bc, TargetName
	ld de, SEARCHEFFECT_SUBS

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseASubstituteText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	ld bc, SUBSTITUTE_DOLL
	call CompareDEtoBC
	jr z, .selected_nidoran
	ld bc, FROAKIE
	call CompareDEtoBC
	jr nz, .loop ; .play_sfx would be more appropriate here

.selected_nidoran
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	farcall Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no NidoranF or NidoranM card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall GetCardIDFromDeckIndex
	ld bc, SUBSTITUTE_DOLL
	call CompareDEtoBC
	jr z, .play_sfx ; found, go back to top loop
	ld bc, FROAKIE
	jr z, .play_sfx ; found, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Nidoran in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

Subs_AISelectEffect:
	call CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	call GetCardIDFromDeckIndex
	ld a, e
	cp16 SUBSTITUTE_DOLL
	jr z, .found
	cp FROAKIE
	jr nz, .loop_deck
.found
	ret

TotalRetreatCost_10xDamageEffect2:
    ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
    farcall GetTurnDuelistVariable
    ld b, a
    ld l, DUELVARS_ARENA_CARD
    ; hl is now set to the first duel variable that holds the deck indices of the turn holder's play area Pokémon
    ld c, 0 ; initial Retreat Cost counter
    ld e, c ; PLAY_AREA_ARENA

; loop through each play area Pokémon, adding its Retreat Cost to c
.loop_play_area
    ld a, [hli]
    farcall LoadCardDataToBuffer1_FromDeckIndex
    ld a, [wLoadedCard1RetreatCost]
    add c
    ld c, a
    dec b
    jr nz, .loop_play_area
.done
    ld a, c
	ret

AllEnergyInYourPlayArea_10xDamageEffect:
	ld c, 0  ; reset the Energy counter
	farcall CountAllEnergyInTurnHolderPlayArea
	farcall ATimes10	       ; convert the Energy counter into a damage value by multiplying it by 10
   	jp SetDefiniteDamage   ; and then store that damage value in various wram locations

MagnetismEffect2:
	ld de, MAGNEMITE
	call CountPokemonIDInBothPlayAreas
	ld b, a
	ld de, MAGNETON
	call CountPokemonIDInBothPlayAreas
	ld c, a
	ld de, MAGNEZONE
	call CountPokemonIDInBothPlayAreas
	add b
	add c
	sub 1
	call ATimes10
	jp AddToDamage	

EnergyDraw_PlayerHandSelection2:
	ld a, $ff
	ldh [hTemp_ffa0], a
	call CreateHandCardList
	ldtx hl, Choose1BasicEnergyCardFromDeckText
	ld d, SEARCHEFFECT_BASIC_ENERGY
	ldtx bc, BasicEnergyText

	bank1call Func_5591
.read_input
	bank1call DisplayCardList
	jr c, .bpressed ; B pressed?
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	farcall CheckIfCardIsBasicEnergy
	jr c, .play_sfx
	or a
	ret
.play_sfx
	farcall Func_3794
	jr .read_input

.try_exit
; check if Player can exit without selecting anything
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall CheckIfCardIsBasicEnergy
	jr c, .next_card
	jr .read_input ; no, has to select Energy card
.bpressed
	farcall SetUsedPokemonPowerThisTurn	
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

ELECTABUZZ_PlayerSelectEffect:
	ld a, $ff
	ldh [hTemp_ffa0], a

	call CreateDeckCardList
	ldtx hl, ChooseAELECTABUZZFromDeckText

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseAELECTABUZZText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	call GetCardIDFromDeckIndex
	cp16 ELECTABUZZ
	jr nz, .play_sfx

; Krabby was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

.play_sfx
	; play SFX and loop back
	call Func_3794
	jr .loop

.pressed_b
; figure if Player can exit the screen without selecting,
; that is, if the Deck has no Krabby card.
	ld a, DUELVARS_CARD_LOCATIONS
	call GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	call GetCardIDFromDeckIndex
	cp16 ELECTABUZZ
	jr z, .play_sfx ; found Krabby, go back to top loop
.next
	inc l
	ld a, l
	cp DECK_SIZE
	jr c, .loop_b_press

; no Krabby in Deck, can safely exit screen
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	scf
	ret

SelectUpto3AtachedEn_PlayerSelectEffect2:
	ldtx hl, ChooseAndDiscard3EnergyCardsText
	call DrawWideTextBox_WaitForInput

	xor a
	ldh [hCurSelectionItem], a
	xor a
	farcall CreateArenaOrBenchEnergyCardList
	farcall SortCardsInDuelTempListByID
	xor a
	bank1call DisplayEnergyDiscardScreen

	ld a, 3
	ld [wEnergyDiscardMenuDenominator], a
.loop_input
	bank1call HandleEnergyDiscardMenuInput
	ret c
	farcall GetNextPositionInTempList
	ldh a, [hTempCardIndex_ff98]
	ld [hl], a
	ld hl, wEnergyDiscardMenuNumerator
	inc [hl]
	ldh a, [hCurSelectionItem]
	cp 3
	jr nc, .done
	ldh a, [hTempCardIndex_ff98]
	farcall RemoveCardFromDuelTempList
	bank1call DisplayEnergyDiscardMenu
	jr .loop_input
.done
; return when 3 have been chosen
	or a
	ret

Find0RetreatCost:
	call CreateDeckCardList
	ldtx hl, ChooseA0RetCostPKMNCardFromDeckText
	ldtx bc, A0RetCostText
	lb de, SEARCHEFFECT_POKEMON, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseA0RetCostText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1RetreatCost]
	cp 0
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1RetreatCost]
	cp 0
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AI0RetreatCost:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	ld a, [wLoadedCard1RetreatCost]
	cp 0
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

Find3orMoreRetreatCost:
	call CreateDeckCardList
	ldtx hl, ChooseA3RetCostPKMNCardFromDeckText
	ldtx bc, A3RetCostText
	lb de, SEARCHEFFECT_POKEMON, 0
	farcall LookForCardsInDeck
	jr c, .exit ; no Trainer cards in the deck

; draw deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseA3RetCostText
	ldtx de, DuelistDeckText
	farcall SetCardListHeaderText

.read_input
	bank1call DisplayCardList
	jr c, .attempt_to_cancel ; the B button was pressed
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1RetreatCost]
	cp 4
	jr z, .here
	cp 3
	jr nz, .play_sfx ; not a Trainer card

; a Trainer card was selected
.here
	ldh a, [hTempCardIndex_ff98]
	ldh [hTemp_ffa0], a
	or a
	ret

; play SFX and loop back
.play_sfx
	call Func_3794
	jr .read_input

; see if the Player can exit the screen without selecting a card,
; that is, if the deck contains no Trainer cards.
.attempt_to_cancel
	ld hl, wDuelTempList
.next_card
	ld a, [hli]
	cp $ff
	jr z, .exit
	farcall LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wLoadedCard1RetreatCost]
	cp 4
	ret z
	cp 3
	jr nz, .next_card
	jr .play_sfx ; found a Trainer card, return to selection process

; no Trainer cards in the deck, can safely exit screen
.exit
	ld a, $ff
	ldh [hTemp_ffa0], a
	or a
	ret

; finds the first Trainer card in the deck
; output:
;	[hTemp_ffa0] = deck index of the chosen card ($ff if no card was chosen)
AI3orMoreRetreatCost:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; reached the end of the list
	farcall GetCardIDFromDeckIndex
	ld a, [wLoadedCard1RetreatCost]
	cp 4
	ret z
	cp 3
	jr nz, .loop_deck ; card isn't a Trainer card
	ret ; Trainer card found	

TYRANITAR_AISelectEffect2:
	call CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	call GetCardIDFromDeckIndex
	cp16 TYRANITAR
	jr nz, .loop_deck
.found
	ret
Gyarados_AISelectEffect2:
	call CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	call GetCardIDFromDeckIndex
	cp16 GYARADOS
	jr nz, .loop_deck
.found
	ret	
; loads wTxRam2 and wTxRam2_b:
; [wTxRam2]   <- wLoadedCard1Name
; [wTxRam2_b] <- input color as text symbol
; input:
;	a = type (color) constant
LoadCardNameAndInputColor:
	add a
	ld e, a
	ld d, $00
	ld hl, ColorToTextSymbol
	add hl, de

; load wTxRam2 with card's name
	ld de, wTxRam2
	ld a, [wLoadedCard1Name]
	ld [de], a
	inc de
	ld a, [wLoadedCard1Name + 1]
	ld [de], a

; load wTxRam2_b with ColorToTextSymbol
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ret	
ColorToTextSymbol:
	tx FireSymbolText
	tx GrassSymbolText
	tx LightningSymbolText
	tx WaterSymbolText
	tx FightingSymbolText
	tx PsychicSymbolText