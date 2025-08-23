AIActionTable_RockCrusher:
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
	dw ROCKRUFF
	dw LARVITAR
	dw MEOWTH
	dw NULL

.list_bench
	dw ROCKRUFF
	dw LARVITAR
	dw MEOWTH
	dw NULL

.list_retreat
	ai_retreat TYRANITAR, -1
	ai_retreat PERRSERKER, -1
	ai_retreat LYCANROC, +0
	dw NULL

.list_energy
	ai_energy ROCKRUFF,  2, +1
	ai_energy LYCANROC,  3, +1
	ai_energy LARVITAR,  2, +1
	ai_energy PUPITAR, 3, +2
	ai_energy TYRANITAR,    4, +2
	ai_energy MEOWTH,  2, +1
	ai_energy PERRSERKER,  3, +1
	dw NULL

.list_prize
	dw ENERGY_REMOVAL
	dw PERRSERKER
	dw TYRANITAR
	dw POTION
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
