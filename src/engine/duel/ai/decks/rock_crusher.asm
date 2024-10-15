AIActionTable_RockCrusher:
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
	dw CUFANT
	dw HAWLUCHA
	dw TRAPINCH
	dw SILICOBRA
	dw NULL

.list_bench
	dw SILICOBRA
	dw TRAPINCH
	dw CUFANT
	dw HAWLUCHA
	dw NULL

.list_retreat
	ai_retreat SILICOBRA, -1
	dw NULL

.list_energy
	ai_energy SILICOBRA,  3, +1
	ai_energy SANDACONDA,  4, +0
	ai_energy TRAPINCH,  2, +1
	ai_energy VIBRAVA, 3, +0
	ai_energy FLYGON,    4, +0
	ai_energy HAWLUCHA,     2, -1
	ai_energy CUFANT,  3, +0
	dw NULL

.list_prize
	dw ENERGY_REMOVAL
	dw CUFANT
	dw NULL

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
