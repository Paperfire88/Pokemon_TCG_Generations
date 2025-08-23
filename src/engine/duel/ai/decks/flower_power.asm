AIActionTable_FlowerPower:
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
	dw APPLIN
	dw TANGELA
	dw CHIKORITA
	dw NULL

.list_bench
	dw CHIKORITA
	dw TANGELA
	dw NULL

.list_retreat
	ai_retreat FLAPPLE,     -2
	ai_retreat APPLETUN, -2
	ai_retreat CHIKORITA, -2
	ai_retreat BAYLEEF,   -2
	dw NULL

.list_energy
	ai_energy CHIKORITA,      2, +0
	ai_energy BAYLEEF,        3, +1
	ai_energy MEGANIUM,  4, +1
	ai_energy APPLIN,         2, +0
	ai_energy FLAPPLE,          3, -1
	ai_energy APPLETUN,      3, -1
	ai_energy TANGELA,      2, +0
	ai_energy TANGROWTH,     22, +1
	dw NULL

.list_prize
	dw MEGANIUM
	dw RARE_CANDY
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
