EeveelutionCheckDeckEffect2:
	farcall CheckIfDeckIsEmpty
	ret nc ; return if no cards in deck
	ccf
	ret

EeveelutionPlayerSelectEffect2:
	ld a, $ff
	ldh [hTemp_ffa0], a
	farcall CreateDeckCardList
	ldtx hl, ChooseEeveelutionFromDeckText
	ldtx bc, Eeveelutiontext
	lb de, SEARCHEFFECT_POKEMON, $00
	farcall LookForCardsInDeck
	ret c

; draw Deck list interface and print text
	bank1call Func_5591
	ldtx hl, ChooseAnEeveelutionText
	ldtx de, DuelistDeckText
	bank1call SetCardListHeaderText

.loop
	bank1call DisplayCardList
	jr c, .pressed_b
	farcall GetCardIDFromDeckIndex
	ld bc, FLAREON_LV28
	farcall CompareDEtoBC
	jr z, .selected_nidoran
	ld bc, JOLTEON_LV29
	farcall CompareDEtoBC
	jr z, .selected_nidoran
	ld bc, VAPOREON_LV42
	farcall CompareDEtoBC
	jr z, .selected_nidoran
	ld bc, JYNX
	farcall CompareDEtoBC
	jr z, .selected_nidoran
	ld bc, MEWTWO_LV53
	farcall CompareDEtoBC
	jr z, .selected_nidoran
	jr nz, .loop ; .play_sfx would be more appropriate here

.selected_nidoran
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
; that is, if the Deck has no NidoranF or NidoranM card.
	ld a, DUELVARS_CARD_LOCATIONS
	farcall GetTurnDuelistVariable
.loop_b_press
	ld a, [hl]
	cp CARD_LOCATION_DECK
	jr nz, .next
	ld a, l
	farcall GetCardIDFromDeckIndex
	ld bc, FLAREON_LV28
	farcall CompareDEtoBC
	ld bc, VAPOREON_LV42
	farcall CompareDEtoBC
	ld bc, JYNX
	farcall CompareDEtoBC
	ld bc, MEWTWO_LV53
	farcall CompareDEtoBC
	jr z, .play_sfx ; found, go back to top loop
	ld bc, JOLTEON_LV29
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

EeveelutionAISelectEffect2:
	farcall CreateDeckCardList
	ld hl, wDuelTempList
.loop_deck
	ld a, [hli]
	ldh [hTemp_ffa0], a
	cp $ff
	ret z ; none found
	farcall GetCardIDFromDeckIndex
	ld a, e
	cp FLAREON_LV28
	jr z, .found
	cp VAPOREON_LV42
	jr z, .found
	cp JYNX
	jr z, .found
	cp MEWTWO_LV53
	jr z, .found
	cp JOLTEON_LV29
	jr nz, .loop_deck
.found
	ret

EeveelutionAddToHandEffect2:
	ldh a, [hTemp_ffa0]
	cp $ff
	jr z, .shuffle
	farcall SearchCardInDeckAndAddToHand
	farcall AddCardToHand
	farcall IsPlayerTurn
	jr c, .shuffle
	; display card on screen
	ldh a, [hTemp_ffa0]
	ldtx hl, FoundCardText
	bank1call DisplayCardDetailScreen
.shuffle
	farcall Func_2c0bd
	ret

Burstinginferno_DiscardDeckEffect1:
	ldh a, [hTemp_ffa0]
	ld c, a
	ld b, $00
	sub [hl]
	cp c
	jr nc, .start_discard
	; only discard number of cards that are left in deck
	ld c, a

.start_discard
	push bc
	inc c
	jr .check_remaining

.loop
	ld a, 20
	call AddToDamage
.check_remaining
	dec c
	jr nz, .loop
	ret

Burstinginferno_AIEffect:
	ld a, 70
	lb de, 70, 70
	jp SetExpectedAIDamage		

Stage1Search_DeckCheck:
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	farcall GetTurnDuelistVariable
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

FossilEggSearch_CheckDeckAndPlayArea:
	call CheckIfDeckIsEmpty
	ret c ; return if no cards in deck
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ldtx hl, NoSpaceOnTheBenchText
	cp MAX_PLAY_AREA_POKEMON
	ccf
	ret

FossilEggSearch_PutInPlayAreaEffect:
	ldh a, [hTemp_ffa0]
	cp $ff
	jr z, .shuffle
	call SearchCardInDeckAndAddToHand
	call AddCardToHand
	call PutHandPokemonCardInPlayArea
	call IsPlayerTurn
	jr c, .shuffle
	ldh a, [hTemp_ffa0]
	ldtx hl, PlacedOnTheBenchText
	bank1call DisplayCardDetailScreen
.shuffle
	call Func_2c0bd
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
	ld a, 4
	bank1call DisplayDrawNCardsScreen
	ldh a, [hTempPlayAreaLocation_ffa1]
    ldh [hTempPlayAreaLocation_ff9d], a
	ld c, 4
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
	farcall GetTurnDuelistVariable
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
	farcall LookForCardsInDeck
	ret c

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
	farcall GetTurnDuelistVariable
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