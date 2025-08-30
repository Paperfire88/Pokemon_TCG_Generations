AIActionTable_ZappingSelfdestruct:
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
	dw BLITZLE
	dw ELECTABUZZ
	dw MAGNEMITE
	dw NULL

.list_bench
	dw BLITZLE
	dw ELECTABUZZ
	dw MAGNEMITE
	dw NULL

.list_retreat
	ai_retreat MAGNEZONE, -1
	ai_retreat ELECTIVIRE, -1
	dw NULL

.list_energy
	ai_energy MAGNEMITE,  2, +1
	ai_energy MAGNETON,   3, +0
	ai_energy MAGNEZONE,   3, +0	
	ai_energy BLITZLE,         2, +1
	ai_energy ZEBSTRIKA,  3, +1
	ai_energy ELECTABUZZ, 3, +0
	ai_energy ELECTIVIRE, 3, +2
	dw NULL

.list_prize
	dw MAGNEMITE
	dw BLITZLE
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
