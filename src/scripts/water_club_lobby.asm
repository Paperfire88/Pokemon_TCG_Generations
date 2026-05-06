WaterClubLobbyAfterDuel:
	ld hl, .after_duel_table
	jp FindEndOfDuelScript

.after_duel_table
	db NPC_IMAKUNI
	db NPC_IMAKUNI
	dw Script_BeatImakuni
	dw Script_LostToImakuni
	db NPC_JACOB
	db NPC_JACOB
	dw Script_BeatJacob
	dw Script_LostToJacob
	db NPC_CODY
	db NPC_CODY
	dw Script_BeatCody
	dw Script_LostToCody
	db $00

Check_Imakuni_State:
	get_event_value EVENT_IMAKUNI_STATE
	cp IMAKUNI_TALKED
	jr c, .dont_load
	get_event_value EVENT_TEMP_DUELED_IMAKUNI
	jr nz, .dont_load
	retscf
.dont_load
	or a
	ret
Preload_ImakuniInWaterClubLobby:
	call Check_Imakuni_State
	ret nz
	get_event_value EVENT_IMAKUNI_ROOM
	cp IMAKUNI_WATER_CLUB
	jr z, load_imakuni
	or a
	ret
load_imakuni:
	bank1call Load_Imakuni_Music
	retscf
Script_Gal1:
	start_script
	jump_if_event_equal EVENT_GAL1_TRADE_STATE, GAL1_TRADE_COMPLETED, .ows_e10e
	test_if_event_equal EVENT_GAL1_TRADE_STATE, GAL1_TRADE_NOT_OFFERED
	print_variable_npc_text Gal1WantToTrade1Text, Gal1WantToTrade2Text
	set_event EVENT_GAL1_TRADE_STATE, GAL1_TRADE_OFFERED
	ask_question_jump Gal1WouldYouLikeToTradeText, .ows_e0eb
	print_npc_text Gal1DeclinedTradeText
	quit_script_fully

.ows_e0eb
	jump_if_card_owned RELICANTH, .ows_e0f3
	print_npc_text Gal1DontOwnCardText
	quit_script_fully

.ows_e0f3
	jump_if_card_in_collection RELICANTH, .ows_e0fb
	print_npc_text Gal1CardInDeckText
	quit_script_fully

.ows_e0fb
	set_event EVENT_GAL1_TRADE_STATE, GAL1_TRADE_COMPLETED
	print_npc_text Gal1LetsTradeText
	print_text Gal1TradeCompleteText
	take_card RELICANTH
	give_card DRUDDIGON
	show_card_received_screen DRUDDIGON
	print_npc_text Gal1ThanksText
	quit_script_fully

.ows_e10e
	print_text_quit_fully Gal1AfterTradeText
Script_Lass1:
	start_script
	jump_if_event_equal EVENT_LASS1_MENTIONED_IMAKUNI, TRUE, .ows_e121
	print_npc_text Lass1NormalText
	set_event EVENT_LASS1_MENTIONED_IMAKUNI, TRUE
	set_event EVENT_IMAKUNI_STATE, IMAKUNI_MENTIONED
	quit_script_fully

.ows_e121
	jump_if_event_not_equal EVENT_IMAKUNI_ROOM, IMAKUNI_WATER_CLUB, .ows_e12d
	jump_if_event_true EVENT_TEMP_DUELED_IMAKUNI, .ows_e12d
	print_text_quit_fully Lass1ImakuniHereText

.ows_e12d
	print_text_quit_fully Lass1ImakuniLeftText

Preload_Man2:
	get_event_value EVENT_JOSHUA_STATE
	cp JOSHUA_DEFEATED
	ret
Script_Man2:
	start_script
	print_text_quit_fully Man2Text

Script_Pappy2:
	start_script
	print_text_quit_fully Pappy2Text
Preload_NPC_IF_AMY_BEATED:
	get_event_value EVENT_BEAT_AMY
	cp TRUE
	ccf
	ret	
Script_Jacob:
	start_script
	jump_if_event_greater_or_equal EVENT_JACOB_STATE, JACOB_DEFEATED, .DEFEATED
	test_if_event_less_than EVENT_JACOB_STATE, JACOB_TALKED
	print_variable_npc_text TextJacobFirstTalk, TextJacob4
	set_event EVENT_JACOB_STATE, JACOB_TALKED
	ask_question_jump JacobNPCDuelText, .OktoDuel
	print_npc_text TextJacob2
	quit_script_fully
.DEFEATED
	print_npc_text TextJacob4
	ask_question_jump JacobNPCDuelText, .OktoDuel
	print_npc_text TextJacob2
	quit_script_fully

.OktoDuel
	print_npc_text TextJacob3
	start_duel PRIZES_4, POWER_OF_FIRE_DECK_ID, MUSIC_DUEL_THEME_1
	quit_script_fully
Script_BeatJacob:
	start_script
	print_npc_text TextJacobDefeat
	set_event EVENT_JACOB_STATE, JACOB_DEFEATED
	give_booster_packs BOOSTER_COLOSSEUM_FIRE, BOOSTER_COLOSSEUM_FIRE, NO_BOOSTER
	print_npc_text TextJacobDefeat2
	quit_script_fully
Script_LostToJacob:
	start_script
	print_text_quit_fully TextJacobVictory
Script_Cody:
	start_script
	jump_if_event_greater_or_equal EVENT_CODY_STATE, CODY_DEFEATED, .DEFEATED
	test_if_event_less_than EVENT_CODY_STATE, CODY_TALKED
	print_variable_npc_text TextCodyFirstTalk, TextCody4
	set_event EVENT_CODY_STATE, CODY_TALKED
	ask_question_jump CodyNPCDuelText, .OktoDuel
	print_npc_text TextCody2
	quit_script_fully
.DEFEATED
	print_npc_text TextCody4
	ask_question_jump CodyNPCDuelText, .OktoDuel
	print_npc_text TextCody2
	quit_script_fully

.OktoDuel
	print_npc_text TextCody3
	start_duel PRIZES_4, POWER_OF_FIRE_DECK_ID, MUSIC_DUEL_THEME_1
	quit_script_fully
Script_BeatCody:
	start_script
	print_npc_text TextCodyDefeat
	set_event EVENT_CODY_STATE, CODY_DEFEATED
	give_booster_packs BOOSTER_COLOSSEUM_FIRE, BOOSTER_COLOSSEUM_FIRE, NO_BOOSTER
	print_npc_text TextCodyDefeat2
	quit_script_fully
Script_LostToCody:
	start_script
	print_text_quit_fully TextCodyVictory