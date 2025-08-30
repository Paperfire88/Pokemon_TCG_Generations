AIActionTable_FirstStrike:
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
	dw HITMONCHAN
	dw HITMONLEE
	dw HITMONTOP
	dw JANGMO_O
	dw NULL

.list_bench
	dw HITMONCHAN
	dw HITMONLEE
	dw JANGMO_O
	dw NULL

.list_retreat
	ai_retreat JANGMO_O,  -1
	ai_retreat HITMONCHAN, -1
	ai_retreat KOMMO_O,  -2
	dw NULL

.list_energy
	ai_energy JANGMO_O,     2, +0
	ai_energy HAKAMO_O,    2, +1
	ai_energy KOMMO_O,    4, +1
	ai_energy HITMONCHAN, 3, +0
	ai_energy HITMONLEE,  3, +0
	ai_energy HITMONTOP,    3, +0
	dw NULL

.list_prize
	dw KOMMO_O
	dw RARE_CANDY
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
    store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
