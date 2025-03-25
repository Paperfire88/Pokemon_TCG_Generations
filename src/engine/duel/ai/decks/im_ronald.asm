AIActionTable_ImRonald:
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
	dw CHEWTLE
	dw SEEL
	dw CHARMANDER
	dw LARVITAR
	dw FROAKIE
	dw SIZZLIPEDE
	dw NULL

.list_bench
	dw CHARMANDER
	dw FROAKIE
	dw SEEL
	dw LARVITAR
	dw SIZZLIPEDE
	dw CHEWTLE
	dw NULL

.list_retreat
	dw NULL

.list_energy
	ai_energy CHARMANDER,     3, +0
	ai_energy CHARMELEON,     5, +0
	ai_energy SIZZLIPEDE,      2, +0
	ai_energy CENTISKORCH,  4, +0
	ai_energy FROAKIE,       2, +0
	ai_energy WARTORTLE,      3, +0
	ai_energy SEEL,           3, +0
	ai_energy DEWGONG,        4, +0
	ai_energy CHEWTLE,         3, +0
	ai_energy LARVITAR,         3, +0
	ai_energy TYRANITAR,   3, +0
	dw NULL

.list_prize
	dw CHEWTLE
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
