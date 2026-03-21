Script_Clerk8:
	start_script
	; give_one_of_each_trainer_booster
	; give_one_of_each_trainer_booster
	; give_one_of_each_trainer_booster
	; print_text_quit_fully Text068c
	
 	print_variable_npc_text Gal1WantToTrade1Text, Gal1WantToTrade2Text
 	ask_question_jump Gal1WouldYouLikeToTradeText, .ows_e0eb
 	print_npc_text Gal1DeclinedTradeText
 	quit_script_fully
	
 .ows_e0eb
 	jump_if_card_owned FIRE_ENERGY, .ows_e0f3
 	print_npc_text Gal1DontOwnCardText
 	quit_script_fully

 .ows_e0f3
 	jump_if_card_in_collection FIRE_ENERGY, .ows_e0fb
 	print_npc_text Gal1CardInDeckText
 	quit_script_fully

 .ows_e0fb
 	print_npc_text Gal1LetsTradeText
 	print_text Gal1TradeCompleteText
 	take_card FIRE_ENERGY
 	pick_fire_rare_card
 	print_npc_text RandomPrizeText
 	give_card VARIABLE_CARD
 	show_card_received_screen VARIABLE_CARD
 	print_npc_text Gal1ThanksText
 	quit_script_fully
