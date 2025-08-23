AIActionTable_GoGoRainDance:
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
	dw HORSEA
	dw WINGULL
	dw FROAKIE
	dw NULL

.list_bench
	dw FROAKIE
	dw HORSEA
	dw WINGULL
	dw NULL

.list_retreat
	ai_retreat FROAKIE,  -3
	ai_retreat FROGADIER, -2
	ai_retreat HORSEA,    -1
	dw NULL

.list_energy
	ai_energy FROAKIE,  2, +0
	ai_energy FROGADIER, 3, +1
	ai_energy GRENINJA, 6, +3
	ai_energy WINGULL,   2, +1
	ai_energy HORSEA,    2, +1
	ai_energy SEADRA,    3, +0
	ai_energy KINGDRA,    6, +3
	dw NULL

.list_prize
	dw KINGDRA
	dw GRENINJA
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
