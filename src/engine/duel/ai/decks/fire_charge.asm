AIActionTable_FireCharge:
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
	dw STUFFUL
	dw AUDINO
	dw STANTLER
	dw MAGMAR_LV24
	dw TOGEKISS
	dw GROWLITHE
	dw NULL

.list_bench
	dw STUFFUL
	dw AUDINO
	dw GROWLITHE
	dw MAGMAR_LV24
	dw TOGEKISS
	dw STANTLER
	dw NULL

.list_retreat
	ai_retreat TOGEKISS, -1
	ai_retreat AUDINO,         -1
	ai_retreat GROWLITHE,       -1
	dw NULL

.list_energy
	ai_energy GROWLITHE,       3, +0
	ai_energy ARCANINE_LV45,   4, +0
	ai_energy MAGMAR_LV24,     3, +0
	ai_energy TOGEKISS, 3, +0
	ai_energy STUFFUL, 2, +0
	ai_energy BEWEAR,      3, +0
	ai_energy AUDINO,         4, +0
	ai_energy STANTLER,          3, +0
	dw NULL

.list_prize
	dw GAMBLER
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
