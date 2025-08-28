AIActionTable_StrangePsyshock:
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
	dw CUTIEFLY
	dw SPIRITOMB
	dw ABRA
	dw INKAY
	dw NULL

.list_bench
	dw ABRA
	dw SPIRITOMB
	dw CUTIEFLY
	dw INKAY
	dw NULL

.list_retreat
	ai_retreat KADABRA,       -3
	ai_retreat ALAKAZAM,    -3
	ai_retreat CUTIEFLY, -1
	dw NULL

.list_energy
	ai_energy ABRA,       2, +2
	ai_energy KADABRA,    3, +0
	ai_energy ALAKAZAM,   3, +1
	ai_energy CUTIEFLY, 1, -1
	ai_energy SPIRITOMB,    2, +0
	ai_energy INKAY,	1, 0
	ai_energy MALAMAR,	1, +1
	dw NULL

.list_prize
	dw ABRA
	dw SPIRITOMB
	dw ALAKAZAM
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
