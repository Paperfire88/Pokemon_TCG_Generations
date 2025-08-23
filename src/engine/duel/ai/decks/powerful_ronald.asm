AIActionTable_PowerfulRonald:
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
	dw DEWPIDER
	dw BASCULIN
	dw BRUXISH
	dw HORSEA
	dw NULL

.list_bench
	dw DEWPIDER
	dw BASCULIN
	dw BRUXISH
	dw HORSEA
	dw NULL

.list_retreat
	ai_retreat CHATOT, -1
	ai_retreat RUFFLET,      -1
	ai_retreat BRAVIARY,     -1
	dw NULL

.list_energy
	ai_energy DEWPIDER, 2, +1
	ai_energy ARAQUANID,       3, +1
	ai_energy BASCULIN,      2, +0
	ai_energy BASCULEGION,         2, +1
	ai_energy BRUXISH,            2, +0
	ai_energy HORSEA, 2, +1
	ai_energy SEADRA,       3, +1
	dw NULL

.list_prize
	dw ENERGY_SEARCH
	dw ENERGY_REMOVAL
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
