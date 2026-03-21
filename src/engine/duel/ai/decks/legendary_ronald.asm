AIActionTable_LegendaryRonald:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIDoTurn_LegendaryRonald

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
	dw ZIGZAGOON
	dw CHATOT
	dw RAYQUAZA
	dw RAIKOU
	dw SUICUNE
	dw ENTEI
	dw NULL

.list_bench
	dw ZIGZAGOON
	dw CHATOT
	dw RAYQUAZA
	dw NULL

.list_play_hand
	dw CHATOT
	dw RAYQUAZA
	dw RAIKOU
	dw SUICUNE
	dw ENTEI
	dw LUGIA
	dw NULL

.list_retreat
	ai_retreat CHATOT, -1
	dw NULL

.list_energy
	ai_energy RAYQUAZA,   4, +1
	ai_energy ENTEI,   3, +1
	ai_energy SUICUNE,  3, +0
	ai_energy RAIKOU,    3, +0
	ai_energy CHATOT,     2, +0
	ai_energy ZIGZAGOON, 1, +0
	ai_energy LUGIA,        3, +0
	ai_energy CELEBI,      0, -8
	dw NULL

.list_prize
	dw ENTEI
	dw RAYQUAZA
	dw ZIGZAGOON
	dw CHATOT
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_play_hand
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret

AIDoTurn_LegendaryRonald:
; initialize variables
	call InitAITurnVars
; process Trainer cards
	ld a, AI_TRAINER_CARD_PHASE_01
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_02
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_04
	call AIProcessHandTrainerCards

; check if AI can play EnteiLv37
; from hand and if so, play it.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	get_turn_duelist_var
	cp MAX_PLAY_AREA_POKEMON
	jr nc, .skip_moltres_1 ; skip if bench is full
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	get_turn_duelist_var
	cp DECK_SIZE - 9
	jr nc, .skip_moltres_1 ; skip if cards in deck <= 9
	ld de, KABUTOPS
	call CountPokemonIDInBothArenas
	jr c, .skip_moltres_1 ; skip if Muk in play
	ld de, ENTEI
	call LookForCardIDInHandList_Bank5
	jr nc, .skip_moltres_1 ; skip if no EnteiLv37 in hand
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_PLAY_BASIC_PKMN
	bank1call AIMakeDecision

.skip_moltres_1
; play Pokemon from hand
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
; process Trainer cards
	ld a, AI_TRAINER_CARD_PHASE_05
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_07
	call AIProcessHandTrainerCards
	call AIProcessRetreat
	ld a, AI_TRAINER_CARD_PHASE_10
	call AIProcessHandTrainerCards
; play Energy card if possible
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy
.skip_attach_energy_1
; try playing Pokemon cards from hand again
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_15
; if used Professor Oak, process new hand
; if not, then proceed to attack.
	call AIProcessHandTrainerCards
	ld a, [wPreviousAIFlags]
	and AI_FLAG_USED_PROFESSOR_OAK
	jr z, .try_attack
	ld a, AI_TRAINER_CARD_PHASE_01
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_02
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_04
	call AIProcessHandTrainerCards

; check if AI can play EnteiLv37
; from hand and if so, play it.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	get_turn_duelist_var
	cp MAX_PLAY_AREA_POKEMON
	jr nc, .skip_moltres_2 ; skip if bench is full
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	get_turn_duelist_var
	cp DECK_SIZE - 9
	jr nc, .skip_moltres_2 ; skip if cards in deck <= 9
	ld de, KABUTOPS
	call CountPokemonIDInBothArenas
	jr c, .skip_moltres_2 ; skip if Muk in play
	ld de, ENTEI
	call LookForCardIDInHandList_Bank5
	jr nc, .skip_moltres_2 ; skip if no EnteiLv37 in hand
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_PLAY_BASIC_PKMN
	bank1call AIMakeDecision

.skip_moltres_2
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
	ld a, AI_TRAINER_CARD_PHASE_05
	call AIProcessHandTrainerCards
	ld a, AI_TRAINER_CARD_PHASE_07
	call AIProcessHandTrainerCards
	call AIProcessRetreat
	ld a, AI_TRAINER_CARD_PHASE_10
	call AIProcessHandTrainerCards
	ld a, [wAlreadyPlayedEnergy]
	or a
	call z, AIProcessAndTryToPlayEnergy
.skip_attach_energy_2
	call AIDecidePlayPokemonCard
	ret c ; return if turn ended
.try_attack
; attack if possible, if not,
; finish turn without attacking.
	call AIProcessAndTryToUseAttack
	ret c ; return if turn ended
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret
