AIActionTable_StrangePsyshock:
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
	dw AUDINO
	dw REGIDRAGO
	dw SPIRITOMB
	dw DEINO
	dw NULL

.list_bench
	dw DEINO
	dw SPIRITOMB
	dw CHATOT
	dw REGIDRAGO
	dw AUDINO
	dw NULL

.list_retreat
	ai_retreat DEINO,       -3
	ai_retreat REGIDRAGO,    -3
	ai_retreat CHATOT, -1
	ai_retreat AUDINO,    -1
	dw NULL

.list_energy
	ai_energy DEINO,       3, +1
	ai_energy ZWEILOUS,    3, +0
	ai_energy ALAKAZAM,   3, +0
	ai_energy SPIRITOMB,    2, +0
	ai_energy AUDINO,    2, -2
	ai_energy CHATOT, 4, -2
	ai_energy REGIDRAGO,    0, -8
	dw NULL

.list_prize
	dw GAMBLER
	dw SPIRITOMB
	dw ALAKAZAM
	dw SWITCH
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
