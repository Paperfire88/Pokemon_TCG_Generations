LightningClubEntranceAfterDuel:
	ld hl, LightningClubEntranceAfterDuelTable
	jp FindEndOfDuelScript
LightningClubEntranceAfterDuelTable:
	db NPC_CASSIE
	db NPC_CASSIE
	dw Script_BeatCassie
	dw Script_LostToCassie
	db $00
Script_Clerk4:
	start_script
	print_text_quit_fully Text060e

Script_Cassie:
	start_script
	jump_if_event_greater_or_equal EVENT_CASSIE_STATE, CASSIE_DEFEATED, .DEFEATED
	test_if_event_less_than EVENT_CASSIE_STATE, CASSIE_TALKED
	print_variable_npc_text TextCassieFirstTalk, TextCassieFirstTalk
	set_event EVENT_CASSIE_STATE, CASSIE_TALKED
	ask_question_jump CassieNPCDuelText, .OktoDuel
	print_npc_text TextCassie2
	quit_script_fully
.DEFEATED
	print_npc_text TextCassieFirstTalk
	ask_question_jump CassieNPCDuelText, .OktoDuel
	print_npc_text TextCassie2
	quit_script_fully

.OktoDuel
	print_npc_text TextCassie3
	start_duel PRIZES_4, POWER_OF_FIRE_DECK_ID, MUSIC_DUEL_THEME_1
	quit_script_fully
Script_BeatCassie:
	start_script
	set_event EVENT_CASSIE_STATE, CASSIE_DEFEATED
	print_npc_text TextCassieDefeat
	give_booster_packs BOOSTER_COLOSSEUM_FIRE, BOOSTER_COLOSSEUM_FIRE, NO_BOOSTER
	print_npc_text TextCassieDefeat2
	quit_script_fully

Script_LostToCassie:
	start_script
	print_text_quit_fully TextCassieVictory	