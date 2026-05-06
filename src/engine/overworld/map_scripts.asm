Load_Imakuni_Music:
	ld a, MUSIC_IMAKUNI
	ld [wDefaultSong], a
    ret
Load_Challenge_Hall_Music:
    ld a, MUSIC_CHALLENGE_HALL
	ld [wDefaultSong], a
    ret
LoadMap_1:
    call DisableLCD
	call EnableSRAM
	bank1call DiscardSavedDuelData
	call DisableSRAM
	ld a, GAME_EVENT_OVERWORLD
	ld [wGameEvent], a
	xor a
	ld [wReloadOverworldCallbackPtr], a
	ld [wReloadOverworldCallbackPtr + 1], a
	ld [wMatchStartTheme], a
	ld [wd317], a
    bank1call WhiteOutDMGPals
	call ZeroObjectPositions
	xor a
	ld [wTileMapFill], a
	call LoadSymbolsFont
	call Set_OBJ_8x8
	xor a
	ld [wLineSeparation], a
	xor a
	ld [wd291], a
    ret
