AIActionTable_LegendaryEntei:
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
	ret nc ; Play Area set up was successful
	jp AIPlayInitialBasicCards

.forced_switch
	jp AIDecideBenchPokemonToSwitchTo

.ko_switch
	jp AIDecideBenchPokemonToSwitchTo

.take_prize
	jp AIPickPrizeCards

.list_arena
	dw SIZZLIPEDE
	dw SALANDIT
	dw NULL

.list_bench
	dw SALANDIT
	dw SIZZLIPEDE
	dw LITWICK
	dw NULL

.list_play_hand
	dw ENTEI
	dw NULL

.list_retreat
	ai_retreat HOUNDOUR,    -1
	ai_retreat SALANDIT,	-1
	dw NULL

.list_energy
	ai_energy SALANDIT,         2, +0
	ai_energy SALAZZLE, 3, +1
	ai_energy SIZZLIPEDE,      2, +0
	ai_energy CENTISKORCH,  3, +1
	ai_energy ENTEI,   4, +1
	ai_energy LITWICK,   1, +0
	dw NULL

.list_prize
	dw ENERGY_REMOVAL
	dw ENTEI
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
