AIActionTable_LegendaryRaikou:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_GeneralNoRetreat

.start_duel
	call InitAIDuelVars
	call .store_list_pointers
	call SetUpBossStartingHandAndDeck
	call TrySetUpBossStartingPlayArea
	ret nc
	jp AIPlayInitialBasicCards

.forced_switch
	jp AIDecideBenchPokemonToSwitchTo

.ko_switch
	jp AIDecideBenchPokemonToSwitchTo

.take_prize
	jp AIPickPrizeCards

.list_arena
	dw SHINX
	dw EMOLGA
	dw BLITZLE
	dw NULL

.list_bench
	dw SHINX
	dw EMOLGA
	dw BLITZLE
	dw NULL

.list_retreat
	ai_retreat RAIKOU,         -5
	ai_retreat ZEBSTRIKA, -5
	dw NULL

.list_energy
	ai_energy TOXEL,         2, +0
	ai_energy LUXIO,  3, +1
	ai_energy LUXRAY, 3, +1
	ai_energy EMOLGA,    2, +0
	ai_energy BLITZLE,     2, +1
	ai_energy ZEBSTRIKA,     3, +1
	ai_energy RAIKOU,     3, +1
	dw NULL

.list_prize
	dw BLITZLE
	dw RAIKOU
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDoTurn_LegendaryRaikou:
; initialize variables
	call InitAITurnVars
	farcall HandleAIAntiMewtwoDeckStrategy
	jp nc, .try_attack
; process Trainer cards
	ld a, AI_TRAINER_CARD_PHASE_01
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_04
	call AIProcessHandTrainerCards
; play Pokemon from hand
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_07
	call AIProcessHandTrainerCards
	call AIProcessRetreat
	ld a, AI_TRAINER_CARD_PHASE_10
	call AIProcessHandTrainerCards
; play Energy card if possible.
	ld a, [wAlreadyPlayedEnergy]
	or a
	jr nz, .skip_energy_attach

; if Arena card is Toxel and there's ToxtricityLv35 in hand,
; or if it's Electabuzz, try attaching Energy card
; to the Arena card if it doesn't have any energy attached.
; Otherwise if Energy card is not needed,
; go through normal AI energy attach routine.
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	cp16 TOXEL
	jr nz, .check_electabuzz
	ld de, TOXTRICITY
	call LookForCardIDInHandList_Bank5
	jr nc, .attach_normally
	jr .voltorb_or_electabuzz
.check_electabuzz
	cp16 ELECTABUZZ
	jr nz, .attach_normally

.voltorb_or_electabuzz
	call CreateEnergyCardListFromHand
	jr c, .skip_energy_attach
	ld e, PLAY_AREA_ARENA
	call CountNumberOfEnergyCardsAttached
	or a
	jr nz, .attach_normally
	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	call AITryToPlayEnergyCard
	jr c, .skip_energy_attach

.attach_normally
	call AIProcessAndTryToPlayEnergy

.skip_energy_attach
; play Pokemon from hand again
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_13
	call AIProcessHandTrainerCards
.try_attack
; attack if possible, if not,
; finish turn without attacking.
	call AIProcessAndTryToUseAttack
	ret c ; return if turn ended
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret
