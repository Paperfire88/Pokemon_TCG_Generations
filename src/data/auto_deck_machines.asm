; each Auto Deck Machine has 5 slots for deck configurations
; each entry in an Auto Deck Machine consists of a card list
; (see data/auto_deck_card_lists.asm) and two text IDs
; for the corresponding deck name and description/flavor text

MACRO auto_deck
	dw \1 ; deck card list
	tx \2 ; deck name text ID
	tx \3 ; deck description text ID
ENDM

AutoDeckMachineEntries:
	table_width 6, AutoDeckMachineEntries

; Fighting Auto Deck Machine
	auto_deck AllFightingPokemonCardList,   AllFightingPokemonText,   AllFightingPokemonDescriptionText
	auto_deck BenchAttackCardList,          MusclesforBrainsDeckName,          BenchAttackDescriptionText
	auto_deck BattleContestCardList,        LovetoBattleDeckName,        BattleContestDescriptionText
	auto_deck HeatedBattleCardList,         HeatedBattleText,         HeatedBattleDescriptionText
	auto_deck FirstStrikeCardList,          FirstStrikeText,          FirstStrikeDescriptionText

; Rock Auto Deck Machine
	auto_deck SqueakingMouseCardList,       TrapinchAndFriendsText,       TrapinchAndFriendsDescriptionText
	auto_deck GreatQuakeCardList,           HardPokemonDeckName,           GreatQuakeDescriptionText
	auto_deck BoneAttackCardList,           BlisteringPokemonDeckName,           BoneAttackDescriptionText
	auto_deck ExcavationCardList,           ExcavationText,           ExcavationDescriptionText
	auto_deck RockCrusherCardList,          RockCrusherText,          RockCrusherDescriptionText

; Water Auto Deck Machine
	auto_deck FroakieAndFriendsCardList,   FroakieAndFriendsText,   FroakieAndFriendsDescriptionText
	auto_deck EnergyRemovalCardList,        WaterfrontPokemonDeckName,        EnergyRemovalDescriptionText
	auto_deck ParalyzeCardList,             LonelyFriendsDeckName,             ParalyzeDescriptionText
	auto_deck OnTheBeachCardList,           SoundoftheWavesDeckName,           OnTheBeachDescriptionText
	auto_deck RainDancerCardList,           RainDancerText,           RainDancerDescriptionText

; Lightning Auto Deck Machine
	auto_deck CutePokemonCardList,          MagnemiteAndFriendsDeckName,          MagnemiteAndFriendsDescriptionText
	auto_deck PokemonFluteCardList,         PikachuDeckName,         CutePokemonDescriptionText
	auto_deck YellowFlashCardList,          BoomBoomSelfdestructDeckName,          YellowFlashDescriptionText
	auto_deck ElectricShockCardList,        PowerGeneratorDeckName,        ElectricShockDescriptionText
	auto_deck ZappingSelfdestructCardList,  ZappingSelfdestructDeckName,  ZappingSelfdestructDescriptionText

; Grass Auto Deck Machine
	auto_deck ChikoritaAndFriendsCardList,  ChikoritaAndFriendsText,  ChikoritaAndFriendsDescriptionText
	auto_deck JungleCardList,               JungleText,               JungleDescriptionText
	auto_deck FlowerGardenCardList,         FlowerGardenText,         FlowerGardenDescriptionText
	auto_deck KaleidoscopeCardList,         KaleidoscopeText,         KaleidoscopeDescriptionText
	auto_deck FlowerPowerCardList,          FlowerPowerText,          FlowerPowerDescriptionText

; Psychic Auto Deck Machine
	auto_deck PsychicPowerCardList,         RaltsAndFriendsText,         RaltsAndFriendsDescriptionText
	auto_deck DreamEaterHaunterCardList,    GhostDeckName,    DreamEaterDusclopsDescriptionText
	auto_deck ScavengingMalamarCardList,    NapTimeDeckName,    ScavengingMalamarDescriptionText
	auto_deck StrangePowerCardList,         StrangePowerText,         StrangePowerDescriptionText
	auto_deck StrangePsyshockCardList,      StrangePsyshockText,      StrangePsyshockDescriptionText

; Science Auto Deck Machine
	auto_deck ScienceCorpsCardList,         DeinoAndFriendsText,         DeinoAndFriendsDescriptionText
	auto_deck LovelyNidoranCardList,        LovelyNidoranDeckName,        LovelyNidoranDescriptionText
	auto_deck FlyinPokemonCardList,         FlyinPokemonText,         FlyinPokemonDescriptionText
	auto_deck PoisonCardList,               PoisonText,               PoisonDescriptionText
	auto_deck WondersOfScienceCardList,     WondersOfScienceText,     WondersOfScienceDescriptionText

; Fire Auto Deck Machine
	auto_deck TepigAndFriendsCardList, TepigAndFriendsText, TepigAndFriendsDescriptionText
	auto_deck ChariSaurCardList,            ReshuffleDeckName,            ReplaceEmAllDescriptionText
	auto_deck TrafficLightCardList,         AngerDeckName,         TrafficLightDescriptionText
	auto_deck FirePokemonCardList,          FlamethrowerDeckName,      FirePokemonDescriptionText
	auto_deck FireChargeCardList,           FireChargeText,           FireChargeDescriptionText

; Auto Deck Machine
	auto_deck PracticeDeckCardList, PracticePlayerDeckName, PracticeDeckDescriptionText
	auto_deck LightningAndFireDeckCardList,   LightningAndFireDeckName,   LightningAndFireDeckDescriptionText
	auto_deck WaterAndFightingDeckCardList,  WaterAndFightingDeckName,  WaterAndFightingDeckDescriptionText
	auto_deck GrassAndPsychicDeckCardList,       GrassAndPsychicDeckName,       GrassAndPsychicDeckDescriptionText
	auto_deck WaterBeetleCardList,          WaterBeetleText,          WaterBeetleDescriptionText

; Legendary Auto Deck Machine
	auto_deck LegendaryEnteiCardList,     LegendaryEnteiText,     LegendaryEnteiDescriptionText
	auto_deck LegendaryRaikouCardList,      LegendaryRaikouText,      LegendaryRaikouDescriptionText
	auto_deck LegendarySuicuneCardList,    LegendarySuicuneText,    LegendarySuicuneDescriptionText
	auto_deck LegendaryLugiaCardList,   LegendaryLugiaText,   LegendaryLugiaDescriptionText
	auto_deck MysteriousPokemonCardList,    MysteriousPokemonText,    MysteriousPokemonDescriptionText

	assert_table_length NUM_DECK_MACHINE_SLOTS * NUM_DECK_MACHINES
