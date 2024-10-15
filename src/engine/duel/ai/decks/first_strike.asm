AIActionTable_FirstStrike:
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
	dw HITMONCHAN
	dw SANDILE
	dw HITMONLEE
	dw CROAGUNK
	dw NULL

.list_bench
	dw SANDILE
	dw HITMONLEE
	dw HITMONCHAN
	dw CROAGUNK
	dw NULL

.list_retreat
	ai_retreat SANDILE,  -1
	ai_retreat KROKOROK, -1
	ai_retreat CROAGUNK,  -2
	dw NULL

.list_energy
	ai_energy SANDILE,     3, +0
	ai_energy KROKOROK,    4, +0
	ai_energy KROOKODILE,    4, -1
	ai_energy HITMONCHAN, 3, +0
	ai_energy HITMONLEE,  3, +0
	ai_energy CROAGUNK,     2, -1
	ai_energy TOXICROAK,   3, -1
	dw NULL

.list_prize
	dw HITMONLEE
	dw HITMONCHAN
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
