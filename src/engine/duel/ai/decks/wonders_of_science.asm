AIActionTable_WondersOfScience:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	jp AIMainTurnLogic

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
	dw MewtwoCard
	dw MEWTWO_ALT_LV60
	dw MEWTWO_LV60
	dw PHANTUMP
	dw FERROSEED
	dw PORYGON
	dw NULL

.list_bench
	dw PHANTUMP
	dw FERROSEED
	dw MEWTWO_ALT_LV60
	dw MEWTWO_LV60
	dw MewtwoCard
	dw PORYGON
	dw NULL

.list_retreat
	dw NULL

.list_energy
	ai_energy PHANTUMP,          3, +0
	ai_energy TREVENANT,             4, +0
	ai_energy FERROSEED,         2, +0
	ai_energy FERROTHORN,         3, +0
	ai_energy MewtwoCard,     2, -1
	ai_energy MEWTWO_ALT_LV60, 2, -1
	ai_energy MEWTWO_LV60,     2, -1
	ai_energy PORYGON,         2, -1
	dw NULL

.list_prize
	dw TREVENANT
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
