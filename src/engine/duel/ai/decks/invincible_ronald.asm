AIActionTable_InvincibleRonald:
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
	dw MAGMORTAR
	dw AUDINO
	dw TRAPINCH
	dw SCYTHER
	dw GRIMER
	dw NULL

.list_bench
	dw GRIMER
	dw SCYTHER
	dw TRAPINCH
	dw AUDINO
	dw MAGMORTAR
	dw CHATOT
	dw NULL

.list_retreat
	ai_retreat GRIMER, -1
	dw NULL

.list_energy
	ai_energy GRIMER,         1, -1
	ai_energy MUK,            3, -1
	ai_energy SCYTHER,        4, +1
	ai_energy MAGMORTAR,    2, +0
	ai_energy TRAPINCH,        2, +0
	ai_energy VIBRAVA,       3, +0
	ai_energy AUDINO,        4, +0
	ai_energy CHATOT,     4, -1
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
