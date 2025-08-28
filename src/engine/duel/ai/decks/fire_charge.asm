AIActionTable_FireCharge:
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
	dw HOUNDOUR
	dw TORTUNATOR
	dw LITWICK
	dw NULL

.list_bench
	dw LITWICK
	dw HOUNDOUR
	dw TORTUNATOR
	dw NULL

.list_retreat
	ai_retreat HOUNDOUR, -1
	ai_retreat TORTUNATOR,       -1
	dw NULL

.list_energy
	ai_energy HOUNDOUR,       2, +0
	ai_energy HOUNDOOM,   3, +1
	ai_energy TORTUNATOR,     3, +1
	ai_energy LITWICK, 1, +0
	ai_energy LAMPENT, 2, +1
	ai_energy CHANDELURE,      3, +1
	dw NULL

.list_prize
	dw COPYCAT
	dw CHANDELURE
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
    