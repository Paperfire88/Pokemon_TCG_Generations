AIActionTable_PowerfulRonald:
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
	dw CHATOT
	dw ELECTABUZZ_LV35
	dw HITMONCHAN
	dw SPIRITOMB
	dw LICKITUNG
	dw HITMONLEE
	dw STANTLER
	dw ESPEON
	dw MEWTWO_LV53
	dw RUFFLET
	dw NULL

.list_bench
	dw CHATOT
	dw HITMONLEE
	dw HITMONCHAN
	dw STANTLER
	dw RUFFLET
	dw ESPEON
	dw MEWTWO_LV53
	dw ELECTABUZZ_LV35
	dw SPIRITOMB
	dw LICKITUNG
	dw NULL

.list_retreat
	ai_retreat CHATOT, -1
	ai_retreat RUFFLET,      -1
	ai_retreat BRAVIARY,     -1
	dw NULL

.list_energy
	ai_energy ELECTABUZZ_LV35, 2, +1
	ai_energy HITMONLEE,       3, +1
	ai_energy HITMONCHAN,      3, +1
	ai_energy SPIRITOMB,         2, +0
	ai_energy ESPEON,            3, +0
	ai_energy MEWTWO_LV53,     2, +0
	ai_energy RUFFLET,           3, -1
	ai_energy BRAVIARY,          3, -1
	ai_energy LICKITUNG,       2, +0
	ai_energy CHATOT,      4, -1
	ai_energy STANTLER,          3, +0
	dw NULL

.list_prize
	dw GAMBLER
	dw ENERGY_REMOVAL
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
