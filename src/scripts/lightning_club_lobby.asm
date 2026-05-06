LightningClubLobbyAfterDuel:
	ld hl, .after_duel_table
	jp FindEndOfDuelScript

.after_duel_table
	db NPC_IMAKUNI
	db NPC_IMAKUNI
	dw Script_BeatImakuni
	dw Script_LostToImakuni

	db NPC_CATHERINE
	db NPC_CATHERINE
	dw Script_BeatCatherine
	dw Script_LostToCatherine
	db $00

Preload_ImakuniInLightningClubLobby:
	call Check_Imakuni_State
	ret nz
	get_event_value EVENT_IMAKUNI_ROOM
	cp IMAKUNI_LIGHTNING_CLUB
	jp z, load_imakuni
	or a
	ret
Script_Chap2:
	start_script
	jump_if_event_equal EVENT_CHAP2_TRADE_STATE, CHAP2_TRADE_COMPLETED, .ows_e3d6
	test_if_event_equal EVENT_CHAP2_TRADE_STATE, CHAP2_TRADE_NOT_OFFERED
	print_variable_npc_text Text060f, Text0610
	set_event EVENT_CHAP2_TRADE_STATE, CHAP2_TRADE_OFFERED
	ask_question_jump Text0611, .ows_e3b6
	print_npc_text Text0612
	quit_script_fully

.ows_e3b6
	jump_if_card_owned ELECTIVIRE, .ows_e3be
	print_npc_text Text0613
	quit_script_fully

.ows_e3be
	jump_if_card_in_collection ELECTIVIRE, .ows_e3c6
	print_npc_text Text0614
	quit_script_fully

.ows_e3c6
	set_event EVENT_CHAP2_TRADE_STATE, CHAP2_TRADE_COMPLETED
	print_npc_text Text0615
	take_card ELECTIVIRE
	give_card ITEM_FINDER
	show_card_received_screen ITEM_FINDER
	print_npc_text Text0616
	quit_script_fully

.ows_e3d6
	print_text_quit_fully Text0617

Script_Lass4:
	start_script
	print_text_quit_fully Text0618

Script_Hood1:
	start_script
	test_if_event_false EVENT_RECEIVED_LEGENDARY_CARDS
	print_variable_npc_text Text0619, Text061a
	quit_script_fully
Script_Catherine:
	start_script
	jump_if_event_greater_or_equal EVENT_CATHERINE_STATE, CATHERINE_DEFEATED, .DEFEATED
	test_if_event_less_than EVENT_CATHERINE_STATE, CATHERINE_TALKED
	print_variable_npc_text TextCatherineFirstTalk, TextCatherine4
	set_event EVENT_CATHERINE_STATE, CATHERINE_TALKED
	ask_question_jump CatherineNPCDuelText, .OktoDuel
	print_npc_text TextCatherine2
	quit_script_fully
.DEFEATED
	print_npc_text TextCatherine4
	ask_question_jump CatherineNPCDuelText, .OktoDuel
	print_npc_text TextCatherine2
	quit_script_fully

.OktoDuel
	print_npc_text TextCatherine3
	start_duel PRIZES_6, POWER_OF_FIRE_DECK_ID, MUSIC_DUEL_THEME_1
	quit_script_fully
Script_BeatCatherine:
	start_script
	print_npc_text TextCatherineDefeat
	jump_if_event_greater_or_equal EVENT_PARKER_STATE, PARKER_DEFEATED, .defeated
	set_event EVENT_CATHERINE_STATE, CATHERINE_DEFEATED
	give_card MIRAIDON
	show_card_received_screen MIRAIDON
.defeated
	give_booster_packs BOOSTER_COLOSSEUM_FIRE, BOOSTER_COLOSSEUM_FIRE, NO_BOOSTER
	print_npc_text TextCatherineDefeat2
	quit_script_fully

Script_LostToCatherine:
	start_script
	print_text_quit_fully TextCatherineVictory