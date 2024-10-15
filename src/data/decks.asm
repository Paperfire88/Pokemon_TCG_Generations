DeckPointers::
	table_width 2, DeckPointers
	dw UnnamedDeck
	dw UnnamedDeck2
	dw SamsPracticeDeck
	dw PracticePlayerDeck
	dw SamsPracticeDeck
	dw CharmanderAndFriendsDeck
	dw CharmanderExtraDeck
	dw SquirtleAndFriendsDeck
	dw SquirtleExtraDeck
	dw BulbasaurAndFriendsDeck
	dw BulbasaurExtraDeck
	dw LightningAndFireDeck
	dw WaterAndFightingDeck
	dw GrassAndPsychicDeck
	dw LegendaryMoltresDeck
	dw LegendaryZapdosDeck
	dw LegendaryArticunoDeck
	dw LegendaryDragoniteDeck
	dw FirstStrikeDeck
	dw RockCrusherDeck
	dw GoGoRainDanceDeck
	dw ZappingSelfdestructDeck
	dw FlowerPowerDeck
	dw StrangePsyshockDeck
	dw WondersofScienceDeck
	dw FireChargeDeck
	dw ImRonaldDeck
	dw PowerfulRonaldDeck
	dw InvincibleRonaldDeck
	dw LegendaryRonaldDeck
	dw MusclesforBrainsDeck
	dw HeatedBattleDeck
	dw LovetoBattleDeck
	dw ExcavationDeck
	dw BlisteringPokemonDeck
	dw HardPokemonDeck
	dw WaterfrontPokemonDeck
	dw LonelyFriendsDeck
	dw SoundoftheWavesDeck
	dw PikachuDeck
	dw BoomBoomSelfdestructDeck
	dw PowerGeneratorDeck
	dw EtceteraDeck
	dw FlowerGardenDeck
	dw KaleidoscopeDeck
	dw GhostDeck
	dw NapTimeDeck
	dw StrangePowerDeck
	dw FlyinPokemonDeck
	dw LovelyNidoranDeck
	dw PoisonDeck
	dw AngerDeck
	dw FlamethrowerDeck
	dw ReshuffleDeck
	dw ImakuniDeck
	dw NULL
	assert_table_length NUM_VALID_DECKS + 1

UnnamedDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,         20
	card_item CRESSELIA,            4
	card_item TOGEPI,                4
	card_item MIMIKYU,                 4
	card_item PIDGEOT_LV40,            2
	card_item PIDGEOTTO,               2
	card_item PIDGEY,                  4
	card_item IMAKUNI_CARD,            2
	card_item GAMBLER,                 2
	card_item PROFESSOR_OAK,           2
	card_item ENERGY_REMOVAL,          2
	card_item ENERGY_RETRIEVAL,        2
	card_item ENERGY_SEARCH,           2
	card_item POKEMON_BREEDER,         2
	card_item IMPOSTER_PROFESSOR_OAK,  2
	card_item SCOOP_UP,                1
	card_item DEVOLUTION_SPRAY,        1
	card_item POTION,                  1
	card_item SUPER_POTION,            1
	deck_list_end

	deck_list_start
	card_item LIGHTNING_ENERGY, 8
	card_item GRASS_ENERGY,     8
	card_item ZAPDOS_LV68,      4
	card_item CHARJABUG,   4
	card_item ELECTRODE_LV42,   4
	card_item MANECTRIC,     4
	card_item VOLTORB,          4
	card_item EEVEE,            4
	card_item GRUBBIN,     4
	card_item CELEBI,    4
	card_item CHIKORITA,        4
	card_item BAYLEEF,          4
	card_item POKEMON_BREEDER,  4
	deck_list_end

	deck_list_start
	card_item FIRE_ENERGY,            24
	card_item PIDGEOT_LV40,            4
	card_item CHARMANDER,              4
	card_item PIDGEY,                  4
	card_item MISDREAVUS,             4
	card_item EEVEE,                   4
	card_item STANTLER,                  4
	card_item ENERGY_SEARCH,           2
	card_item GAMBLER,                 2
	card_item ITEM_FINDER,             2
	card_item IMPOSTER_PROFESSOR_OAK,  2
	card_item POKEMON_BREEDER,         2
	card_item SCOOP_UP,                2
	card_item POTION,                  1
	card_item SUPER_POTION,            1
	card_item POKEMON_BREEDER,         4
	; this deck list has 66 cards
	;deck_list_end
	db 0 ; end

	deck_list_start
	card_item PSYCHIC_ENERGY,  4
	card_item FIGHTING_ENERGY, 4
	card_item WEEDLE,          4
	card_item LARVITAR,          4
	card_item PUPITAR,    4
	card_item GOOMY,         4
	card_item SLIGGOO,       4
	card_item LUGIA,  4
	card_item MEOWTH_LV14,     4
	card_item DITTO,           4
	card_item PIDGEY,          4
	card_item PIDGEOTTO,       4
	card_item PIDGEOT_LV40,    4
	card_item CYCLIZAR, 4
	card_item POKEMON_BREEDER, 4
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY,   10
	card_item LIGHTNING_ENERGY, 12
	card_item DUSKULL,        2
	card_item MISDREAVUS,       2
	card_item MISMAGIUS,      2
	card_item DUSCLOPS,      1
	card_item DUSKNOIR,            2
	card_item ELECTABUZZ_LV35,   2
	card_item ELECTRIKE,   2
	card_item BLITZLE,      2
	card_item HELIOPTILE,      2
	card_item ZEBSTRIKA,       1
	card_item HELIOLISK,       2
	card_item ZAPDOS_LV68,       2
	card_item SHINX,    2
	card_item GOOMY,           4
	card_item SLIGGOO,         3
	card_item LUGIA,    2
	card_item PROFESSOR_OAK,     1
	card_item POKEMON_BREEDER,   2
	card_item BILL,              2
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY,   10
	card_item LIGHTNING_ENERGY, 10
	card_item CROAGUNK,            4
	card_item CRESSELIA,      4
	card_item SLOWBRO,           4
	card_item DEINO,              4
	card_item ZWEILOUS,           4
	card_item ALAKAZAM,          4
	card_item MISDREAVUS,       4
	card_item DUSCLOPS,      4
	card_item DUSKNOIR,            4
	card_item POKEMON_BREEDER,   4
	deck_list_end

	deck_list_start
	card_item FIRE_ENERGY,     24
	card_item PIDGEOT_LV40,     4
	card_item CHARMANDER,       4
	card_item PIDGEY,           4
	card_item MISDREAVUS,      4
	card_item DUSCLOPS,     4
	card_item ZIGZAGOON,          4
	card_item LINOONE,         4
	card_item POKEMON_BREEDER,  4
	card_item SCOOP_UP,         2
	card_item POTION,           1
	card_item SUPER_POTION,     1
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY,  20
	card_item CRESSELIA,     4
	card_item SLOWBRO,          4
	card_item TOGEPI,         4
	card_item SPEAROW,          4
	card_item PORYGON,          4
	card_item MISDREAVUS,      4
	card_item DUSCLOPS,     4
	card_item DUSKNOIR,           4
	card_item MEW_LV23,         4
	card_item POKEMON_BREEDER,  4
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY, 24
	card_item CRESSELIA,    4
	card_item SLOWBRO,         4
	card_item TOGEPI,        4
	card_item MEW_LV23,        4
	card_item DROWZEE,         4
	card_item SPEAROW,         4
	card_item PORYGON,         4
	card_item VENONAT,         4
	card_item VENOMOTH,        4
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY,  24
	card_item CRESSELIA,     4
	card_item TOGEPI,         4
	card_item MEW_LV23,         4
	card_item DROWZEE,          4
	card_item HYPNO,            4
	card_item ZIGZAGOON,          4
	card_item PORYGON,          4
	card_item POKEMON_BREEDER,  4
	card_item SCOOP_UP,         2
	card_item POTION,           1
	card_item SUPER_POTION,     1
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY,  24
	card_item KROOKODILE,          4
	card_item KROKOROK,          4
	card_item SANDILE,           4
	card_item MISDREAVUS,      4
	card_item DUSCLOPS,     4
	card_item ZIGZAGOON,          4
	card_item POKEMON_BREEDER,  4
	card_item DEFENDER,         2
	card_item GUST_OF_WIND,     2
	card_item SCOOP_UP,         2
	card_item POTION,           1
	card_item SUPER_POTION,     1
	deck_list_end

	deck_list_start
	card_item LIGHTNING_ENERGY, 12
	card_item ELECTRODE_LV42,    4
	card_item ELECTRIKE,   4
	card_item MAGNEMITE_LV13,    4
	card_item EEVEE,             4
	card_item VIKAVOLT,       4
	card_item JOLTEON_LV29,      4
	card_item SHINX,    4
	card_item EMOLGA,      4
	card_item PINCURCHIN,  4
	card_item BLITZLE,      4
	card_item HELIOPTILE,      4
	card_item ZEBSTRIKA,       4
	deck_list_end

	deck_list_start
	card_item FIGHTING_ENERGY, 24
	card_item HITMONCHAN,       4
	card_item SILICOBRA,          4
	card_item SANDILE,           4
	card_item BIDOOF,      4
	card_item ZIGZAGOON,          4
	card_item RUFFLET,            4
	card_item POKEDEX,          2
	card_item PLUSPOWER,        2
	card_item DEFENDER,         2
	card_item GUST_OF_WIND,     2
	card_item SCOOP_UP,         2
	card_item POTION,           1
	card_item SUPER_POTION,     1
	deck_list_end

UnnamedDeck2:
	deck_list_start
	card_item FIRE_ENERGY,              4
	card_item GRASS_ENERGY,            20
	card_item CHATOT,               2
	card_item ODDISH,                   4
	card_item GLOOM,                    2
	card_item VILEPLUME,                2
	card_item CHIKORITA,                4
	card_item BAYLEEF,                  3
	card_item CHARMANDER,               4
	card_item CHARMELEON,               3
	card_item CHARIZARD,                2
	card_item POKEMON_BREEDER,          2
	card_item AUDINO,                  2
	card_item ENERGY_RETRIEVAL,         2
	card_item PROFESSOR_OAK,            2
	card_item GUST_OF_WIND,             2
	card_item DOUBLE_COLORLESS_ENERGY,  2
	; this deck list has 62 cards
	;deck_list_end
	db 0 ; end

	deck_list_start
	card_item FIRE_ENERGY,              4
	card_item GRASS_ENERGY,            20
	card_item CHATOT,               4
	card_item CHIKORITA,                4
	card_item BAYLEEF,                  3
	card_item VENUSAUR_LV67,            2
	card_item CHARMANDER,               4
	card_item CHARMELEON,               3
	card_item CHARIZARD,                2
	card_item POKEMON_BREEDER,          3
	card_item POKEMON_TRADER,           3
	card_item ENERGY_RETRIEVAL,         2
	card_item PROFESSOR_OAK,            2
	card_item GUST_OF_WIND,             2
	card_item DOUBLE_COLORLESS_ENERGY,  2
	deck_list_end

	deck_list_start
	card_item PSYCHIC_ENERGY,  4
	card_item FIGHTING_ENERGY, 4
	card_item MEW_LV15,        4
	card_item LARVITAR,          4
	card_item PUPITAR,    4
	card_item GOOMY,         4
	card_item SLIGGOO,       4
	card_item LUGIA,  4
	card_item MEOWTH_LV14,     4
	card_item DITTO,           4
	card_item PIDGEY,          4
	card_item PIDGEOTTO,       4
	card_item PIDGEOT_LV38,    4
	card_item CYCLIZAR, 4
	card_item POKEMON_BREEDER, 4
	deck_list_end

	deck_list_start
	card_item GRASS_ENERGY,      24
	card_item TOGEPI,           4
	card_item TOGETIC,           4
	card_item CATERPIE,           4
	card_item MYSTERIOUS_FOSSIL,  4
	card_item SCYTHER,            4
	card_item PARAS,              4
	card_item STUFFUL,    4
	card_item WEEDLE,             4
	card_item TYRANTRUM,         4
	deck_list_end

	deck_list_start
	card_item LIGHTNING_ENERGY, 8
	card_item GRASS_ENERGY,     8
	card_item ZAPDOS_LV68,      4
	card_item CHARJABUG,   4
	card_item ELECTRODE_LV35,   4
	card_item MANECTRIC,     4
	card_item VOLTORB,          4
	card_item EEVEE,            4
	card_item GRUBBIN,     4
	card_item CELEBI,    4
	card_item CHIKORITA,        4
	card_item BAYLEEF,          4
	card_item POKEMON_BREEDER,  4
	deck_list_end

	deck_list_start
	card_item FIRE_ENERGY,     24
	card_item NUMEL,     4
	card_item DELTA_KINGDRA,   4
	card_item MOLTRES_LV37,     4
	card_item EEVEE,            4
	card_item CHARMANDER,       4
	card_item VULPIX,           4
	card_item ARTICUNO_LV37,    4
	card_item DREDNAW,    4
	card_item POKEMON_BREEDER,  4
	deck_list_end

	deck_list_start
	card_item GRASS_ENERGY,      20
	card_item CATERPIE,           4
	card_item MYSTERIOUS_FOSSIL,  4
	card_item POKEMON_BREEDER,    4
	card_item PSYDUCK,            4
	card_item STUFFUL,    4
	card_item WEEDLE,             4
	card_item TYRANTRUM,         4
	card_item CHIKORITA,          4
	card_item BAYLEEF,            4
	card_item VENUSAUR_LV67,      4
	deck_list_end

	deck_list_start
	card_item GRASS_ENERGY,    24
	card_item PLUSPOWER,        4
	card_item BILL,             4
	card_item POKEMON_CENTER,   4
	card_item CATERPIE,         4
	card_item NIDORANM,         4
	card_item SCYTHER,          4
	card_item PARAS,            4
	card_item STUFFUL,  4
	card_item WEEDLE,           4
	deck_list_end

	deck_list_start
	card_item WATER_ENERGY,      24
	card_item BLASTOISE,          4
	card_item SQUIRTLE,           4
	card_item HORSEA,             4
	card_item PSYDUCK,            4
	card_item POLIWAG,            4
	card_item MYSTERIOUS_FOSSIL,  4
	card_item TENTACOOL,          4
	card_item TYRANTRUM,         4
	card_item POKEMON_BREEDER,    4
	deck_list_end

	deck_list_start
	card_item WATER_ENERGY,      24
	card_item BLASTOISE,          4
	card_item WARTORTLE,          4
	card_item SQUIRTLE,           4
	card_item PSYDUCK,            4
	card_item GOLDUCK,            4
	card_item POLIWAG,            4
	card_item MYSTERIOUS_FOSSIL,  4
	card_item TYRANTRUM,         4
	card_item POTION,             4
	deck_list_end

	deck_list_start
	card_item GRASS_ENERGY,    24
	card_item SCIZOR,           4
	card_item ZUBAT,            4
	card_item GOLBAT,           4
	card_item RUFFLET,            4
	card_item BRAVIARY,           4
	card_item STUFFUL,  4
	card_item POKEMON_CENTER,   4
	card_item PLUSPOWER,        3
	card_item PROFESSOR_OAK,    2
	card_item BILL,             3
	deck_list_end

	deck_list_start
	card_item LIGHTNING_ENERGY, 12
	card_item ELECTRODE_LV42,    4
	card_item ELECTRIKE,   4
	card_item MAGNEMITE_LV13,    4
	card_item EEVEE,             4
	card_item VIKAVOLT,       4
	card_item JOLTEON_LV29,      4
	card_item SHINX,    4
	card_item EMOLGA,      4
	card_item PINCURCHIN,  4
	card_item BLITZLE,      4
	card_item HELIOPTILE,      4
	card_item ZEBSTRIKA,       4
	deck_list_end

	deck_list_start
	card_item HELIOLISK,    4
	card_item MAGNETON_LV28,  4
	card_item MAGNEZONE,  4
	card_item WATER_ENERGY,  24
	card_item SEAKING,        4
	card_item OMASTAR,        4
	card_item OMANYTE,        4
	card_item WARTORTLE,      4
	card_item BLASTOISE,      4
	card_item WEAVILE,       4
	card_item KINGLER,        4
	card_item KRABBY,         4
	card_item SNEASEL,       4
	; this deck list has 72 cards
	;deck_list_end
	db 0 ; end

	dw $4544
	dw $4d52
	dw $4c5b
	dw $4156
	dw $4a51
	dw $4753
	dw $4648
	dw $4e4b
	dw $5e55
	dw $5949

PracticePlayerDeck:
	deck_list_start
	card_item WATER_ENERGY,   2
	card_item PSYCHIC_ENERGY, 1
	card_item SEAKING,        1
	card_item STARYU,         1
	card_item FULL_HEAL,      1
	card_item GOLDEEN,       1
	card_item WATER_ENERGY,   5
	card_item DROWZEE,        1
	card_item POTION,         1
	card_item SEAKING,        1
	card_item STARMIE,        1
	card_item WATER_ENERGY,   1
	card_item BILL,           1
	card_item PSYCHIC_ENERGY, 1
	card_item ESPEON,           1
	card_item SQUIRTLE,       1
	card_item WATER_ENERGY,   1
	card_item SQUIRTLE,       1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item WARTORTLE,      1
	card_item BILL,           1
	card_item WATER_ENERGY,   1
	card_item BLASTOISE,      1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item ZIGZAGOON,        1
	card_item DEINO,           1
	card_item PSYCHIC_ENERGY, 1
	card_item HYPNO,          1
	card_item WATER_ENERGY,   1
	card_item PSYCHIC_ENERGY, 1
	card_item SEEL,           1
	card_item PSYCHIC_ENERGY, 1
	card_item ZWEILOUS,        1
	card_item POTION,         1
	card_item PSYCHIC_ENERGY, 1
	card_item DROWZEE,        1
	card_item PSYCHIC_ENERGY, 1
	card_item ZIGZAGOON,        1
	card_item DUNSPARCE,       1
	card_item SEEL,           1
	card_item DEWGONG,        1
	card_item DUNSPARCE,       1
	card_item STARYU,         1
	card_item CHEWTLE,         1
	card_item DEINO,           1
	card_item DROWZEE,        1
	card_item HYPNO,          1
	card_item ZIGZAGOON,        1
	card_item LINOONE,       1
	card_item LINOONE,       1
	card_item ALAKAZAM,       1
	deck_list_end
	tx PracticePlayerDeckName

SamsPracticeDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,        2
	card_item FIGHTING_ENERGY,         2
	card_item SANDILE,                  1
	card_item LINOONE,                1
	card_item KROOKODILE,                 1
	card_item FIGHTING_ENERGY,         2
	card_item KROOKODILE,                 1
	card_item ZIGZAGOON,                 1
	card_item FIGHTING_ENERGY,         2
	card_item SANDILE,                  1
	card_item FIGHTING_ENERGY,         1
	card_item LINOONE,                1
	card_item LIGHTNING_ENERGY,        1
	card_item SANDILE,                  1
	card_item BILL,                    1
	card_item FIGHTING_ENERGY,         1
	card_item SILICOBRA,                 1
	card_item SANDACONDA,                 1
	card_item FIGHTING_ENERGY,         1
	card_item KROKOROK,                 1
	card_item LIGHTNING_ENERGY,        1
	card_item LIGHTNING_ENERGY,        1
	card_item GUST_OF_WIND,            1
	card_item JOLTEON_LV29,            1
	card_item LIGHTNING_ENERGY,        1
	card_item ELECTABUZZ_LV35,         1
	card_item FIGHTING_ENERGY,         1
	card_item HITMONCHAN,              1
	card_item LIGHTNING_ENERGY,        1
	card_item PROFESSOR_OAK,           1
	card_item FIGHTING_ENERGY,         1
	card_item EEVEE,                   1
	card_item FIGHTING_ENERGY,         1
	card_item DOUBLE_COLORLESS_ENERGY, 1
	card_item BLITZLE,            1
	card_item LIGHTNING_ENERGY,        1
	card_item BLITZLE,            1
	card_item LIGHTNING_ENERGY,        1
	card_item POTION,                  1
	card_item LIGHTNING_ENERGY,        1
	card_item HELIOPTILE,            1
	card_item LIGHTNING_ENERGY,        1
	card_item ZEBSTRIKA,             1
	card_item HELIOLISK,             1
	card_item LIGHTNING_ENERGY,        1
	card_item JOLTEON_LV29,            1
	card_item SILICOBRA,                 1
	card_item SANDILE,                  1
	card_item KROKOROK,                 1
	card_item HAWLUCHA,                    1
	card_item CUFANT,                 1
	card_item CUFANT,                 1
	card_item RHYDON,                  1
	card_item ZIGZAGOON,                 1
	card_item EEVEE,                   1
	card_item EEVEE,                   1
	deck_list_end
	tx SamsPracticeDeckName

CharmanderAndFriendsDeck:
	deck_list_start
	card_item FIRE_ENERGY,      14
	card_item FIGHTING_ENERGY,   6
	card_item CHARMANDER,        3
	card_item CHARMELEON,        2
	card_item CHARIZARD,         1
	card_item NUMEL,         1
	card_item PONYTA,            2
	card_item MAGMAR_LV24,    	 1
	card_item VULPIX,    	 1
	card_item GROWLITHE,    	 2
	card_item SANDSHREW,           2
	card_item SANDSLASH,           1
	card_item ROCKRUFF,            3
	card_item LYCANROC,           1
	card_item LYCANROCM,  	 1
	card_item PROFESSOR_OAK,     2
	card_item BILL,              2
	card_item SWITCH,            1
	card_item POKEMON_BREEDER,   1
	card_item PLUSPOWER,         1
	card_item POTION,            1
	card_item FULL_HEAL,         1
	card_item ENERGY_SEARCH,         2
	card_item ENERGY_RETRIEVAL,         1
	card_item ENERGY_REMOVAL,         1
	card_item POKE_BALL,         2
	card_item POKEDEX,         2
	card_item DEFENDER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx CharmanderAndFriendsDeckName

CharmanderExtraDeck:
	deck_list_start
	card_item GRASS_ENERGY,    4
	card_item WATER_ENERGY,    4
	card_item PSYCHIC_ENERGY,  4
	card_item LIGHTNING_ENERGY,  4
	card_item CHIKORITA,       2
	card_item BAYLEEF,         1
	card_item NIDORANF,        2
	card_item CATERPIE,        2
	card_item METAPOD,         1
	card_item NIDORANM,        2
	card_item SCYTHER,         1
	card_item SQUIRTLE,        2
	card_item WARTORTLE,         1
	card_item SEEL,            2
	card_item DEWGONG,         1
	card_item GOLDEEN,         2
	card_item SEAKING,         1
	card_item BLITZLE,        2
	card_item ZEBSTRIKA,         1
	card_item SANDILE,        2
	card_item KROKOROK,         1
	card_item DEINO,            2
	card_item ZWEILOUS,         1
	card_item DUSKULL,      1
	card_item PIDGEY,        2
	card_item ZIGZAGOON,         2
	card_item BIDOOF,        2
	card_item GRASS_ENERGY,   8 ; irrelevant
	deck_list_end
	tx CharmanderExtraDeckName

SquirtleAndFriendsDeck:
	deck_list_start
	card_item WATER_ENERGY,    14
	card_item PSYCHIC_ENERGY,   6
	card_item SQUIRTLE,         3
	card_item WARTORTLE,        2
	card_item BLASTOISE,        1
	card_item SEEL,             2
	card_item WINGULL,          1
	card_item HORSEA,           2
	card_item GOLDEEN,          1
	card_item SEAKING,          1
	card_item DEINO,             2
	card_item ZWEILOUS,          1
	card_item MISDREAVUS,       3
	card_item MISMAGIUS,     2
	card_item PROFESSOR_OAK,     2
	card_item BILL,              2
	card_item SWITCH,            1
	card_item POKEMON_BREEDER,   1
	card_item PLUSPOWER,         1
	card_item POTION,            1
	card_item FULL_HEAL,         1
	card_item ENERGY_SEARCH,         1
	card_item ENERGY_RETRIEVAL,         2
	card_item ENERGY_REMOVAL,         1
	card_item POKE_BALL,         2
	card_item POKEDEX,         2
	card_item DEFENDER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx SquirtleAndFriendsDeckName

SquirtleExtraDeck:
	deck_list_start
	card_item GRASS_ENERGY,      4
	card_item FIRE_ENERGY,       4
	card_item LIGHTNING_ENERGY,  4
	card_item FIGHTING_ENERGY,  4
	card_item NIDORANF,          2
	card_item NIDORANM,          2
	card_item CATERPIE,          1
	card_item METAPOD,           1
	card_item WEEDLE,            1
	card_item KAKUNA,            1
	card_item SCYTHER,           1
	card_item CHARMANDER,        2
	card_item CHARMELEON,        1
	card_item MAGMAR_LV24,       1
	card_item GROWLITHE,         1
	card_item ARCANINE_LV45,     1
	card_item BLITZLE,      2
	card_item MAGNEMITE_LV13,    1
	card_item MAGNETON_LV28,     1
	card_item ELECTRIKE,   1
	card_item GRASS_ENERGY,     24 ; irrelevant
	deck_list_end
	tx SquirtleExtraDeckName

BulbasaurAndFriendsDeck:
	deck_list_start
	card_item GRASS_ENERGY,    14
	card_item LIGHTNING_ENERGY,     6
	card_item CHIKORITA,        3
	card_item BAYLEEF,          2
	card_item VENUSAUR_LV67,    1
	card_item CATERPIE,         2
	card_item METAPOD,          1
	card_item NIDORANF,         1
	card_item NIDORANM,         1
	card_item GRUBBIN,     2
	card_item NIDOKING,     2
	card_item VOLTORB,             3
	card_item ELECTRODE_LV35,          1
	card_item ELECTRODE_LV42,           1
	card_item HELIOPTILE,          1
	card_item PROFESSOR_OAK,     2
	card_item BILL,              2
	card_item SWITCH,            1
	card_item POKEMON_BREEDER,   1
	card_item PLUSPOWER,         1
	card_item POTION,            2
	card_item FULL_HEAL,         1
	card_item ENERGY_SEARCH,         1
	card_item ENERGY_RETRIEVAL,         1
	card_item ENERGY_REMOVAL,         1
	card_item POKE_BALL,         2
	card_item POKEDEX,         2
	card_item DEFENDER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx BulbasaurAndFriendsDeckName

BulbasaurExtraDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,  4
	card_item PSYCHIC_ENERGY,    4
	card_item FIGHTING_ENERGY,   3
	card_item BLITZLE,      2
	card_item EMOLGA,       1
	card_item MAGNEMITE_LV13,    1
	card_item ELECTRIKE,   1
	card_item DEINO,              2
	card_item ZWEILOUS,           1
	card_item ESPEON,              1
	card_item DUSKULL,        2
	card_item DUSCLOPS,      1
	card_item SILICOBRA,           1
	card_item SANDACONDA,           1
	card_item HITMONCHAN,        1
	card_item BILL,              1
	card_item POTION,            2
	card_item GUST_OF_WIND,      1
	card_item GRASS_ENERGY,     30 ; irrelevant
	deck_list_end
	tx BulbasaurExtraDeckName
	
LightningAndFireDeck:
	deck_list_start
	card_item FIRE_ENERGY,             10
	card_item LIGHTNING_ENERGY,        10
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item CHARMANDER,               2
	card_item CHARMELEON,               1
	card_item CHARIZARD,                1
	card_item GROWLITHE,                2
	card_item ARCANINE_LV45,            1
	card_item PONYTA,                   2
	card_item RAPIDASH,                 1
	card_item MAGMAR_LV24,              1
	card_item MAGMORTAR,              1
	card_item BLITZLE,             1
	card_item HELIOPTILE,             1
	card_item ZEBSTRIKA,              1
	card_item MAGNEMITE_LV13,           2
	card_item MAGNETON_LV28,            1
	card_item VOLTORB,                  3
	card_item ELECTRODE_LV35,           1
	card_item ELECTRODE_LV42,           1
	card_item ZIGZAGOON,                  2
	card_item LINOONE,                 1
	card_item PROFESSOR_OAK,            1
	card_item BILL,                     2
	card_item ENERGY_SEARCH,            2
	card_item SWITCH,                   2
	card_item PLUSPOWER,                2
	card_item DEFENDER,                 2
	card_item POTION,                   1
	deck_list_end
	tx LightningAndFireDeckName

WaterAndFightingDeck:
	deck_list_start
	card_item WATER_ENERGY,            12
	card_item FIGHTING_ENERGY,         10
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item POLIWAG,                  2
	card_item POLIWHIRL,                1
	card_item POLIWRATH,                1
	card_item SEEL,                     2
	card_item DEWGONG,                  1
	card_item GOLDEEN,                  2
	card_item SEAKING,                  1
	card_item STARYU,                   2
	card_item STARMIE,                  1
	card_item SANDSHREW,                2
	card_item SANDSLASH,                1
	card_item SANDILE,                   3
	card_item KROKOROK,                  2
	card_item KROOKODILE,                  1
	card_item HITMONCHAN,               1
	card_item CUFANT,                  2
	card_item RHYDON,                   1
	card_item PROFESSOR_OAK,            1
	card_item BILL,                     2
	card_item ENERGY_SEARCH,            2
	card_item POTION,                   3
	card_item FULL_HEAL,                2
	deck_list_end
	tx WaterAndFightingDeckName

GrassAndPsychicDeck:
	deck_list_start
	card_item GRASS_ENERGY,   12
	card_item PSYCHIC_ENERGY, 12
	card_item WEEDLE,          2
	card_item KAKUNA,          1
	card_item BEEDRILL,        1
	card_item NIDORANF,        2
	card_item NIDORINA,        1
	card_item PARAS,           2
	card_item PARASECT,        1
	card_item EXEGGCUTE,       2
	card_item EXEGGUTOR,       1
	card_item SCIZOR,          1
	card_item DEINO,            3
	card_item ZWEILOUS,         2
	card_item DROWZEE,         3
	card_item HYPNO,           2
	card_item ESPEON,            1
	card_item ORANGURU,       1
	card_item STANTLER,          1
	card_item BILL,            2
	card_item ENERGY_SEARCH,   2
	card_item GUST_OF_WIND,    2
	card_item POTION,          2
	card_item FULL_HEAL,       2
	; this deck list has 61 cards
	;deck_list_end
	db 0 ; end
	tx GrassAndPsychicDeckName

LegendaryMoltresDeck:
	deck_list_start
	card_item FIRE_ENERGY,            12
	card_item COLORLESS,           2
	card_item CHARMANDER,                  4
	card_item CHARMELEON,          2
	card_item CHARIZARD,               4
	card_item ARCANINE_LV45,           3
	card_item NUMEL,             4
	card_item MOLTRES_LV37,            4
	card_item PROFESSOR_OAK,            2
	card_item BILL,            2
	card_item POKEMON_TRADER,           2
	card_item POKEMON_BREEDER,           2
	card_item ENERGY_RETRIEVAL,            2
	card_item ENERGY_REMOVAL,           3
	card_item SWITCH,                   2
	card_item SCOOP_UP,            2
	card_item COMPUTER_SEARCH,            1
	card_item PLUSPOWER,            2
	card_item ITEM_FINDER,            1
	card_item GUST_OF_WIND,            2
	card_item GAMBLER,                  1
	card_item RECYCLE,            1
	deck_list_end
	tx LegendaryMoltresDeckName

LegendaryZapdosDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY, 13
	card_item SHINX,           3
	card_item EEVEE, 4
	card_item JOLTEON_LV29, 3
	card_item ZERAORA,       4
	card_item ZAPDOS_LV68,       4
	card_item CYCLIZAR,             3
	card_item PROFESSOR_OAK,            2
	card_item BILL,            3
	card_item POKEMON_TRADER,           2
	card_item ENERGY_SEARCH,            3
	card_item ENERGY_REMOVAL,           3
	card_item SWITCH,                   2
	card_item SCOOP_UP,            2
	card_item POTION,            1
	card_item PLUSPOWER,            2
	card_item ITEM_FINDER,            2
	card_item GUST_OF_WIND,            2
	card_item GAMBLER,                  1
	card_item RECYCLE,            1
	deck_list_end
	tx LegendaryZapdosDeckName

LegendaryArticunoDeck:
	deck_list_start
	card_item GRASS_ENERGY,            6
	card_item WATER_ENERGY,     8
	card_item EXEGGCUTE,              4
	card_item EXEGGUTOR,           3
	card_item SEEL,            4
	card_item DEWGONG,     3
	card_item ARTICUNO_LV37,     4
	card_item DITTO,             3
	card_item PROFESSOR_OAK,            2
	card_item BILL,            3
	card_item POKEMON_TRADER,           2
	card_item ENERGY_SEARCH,            2
	card_item ENERGY_REMOVAL,           3
	card_item SWITCH,                   2
	card_item SCOOP_UP,            3
	card_item COMPUTER_SEARCH,            1
	card_item PLUSPOWER,            2
	card_item ITEM_FINDER,            1
	card_item GUST_OF_WIND,            2
	card_item GAMBLER,                  1
	card_item RECYCLE,            1
	deck_list_end
	tx LegendaryArticunoDeckName

LegendaryDragoniteDeck:
	deck_list_start
	card_item WATER_ENERGY,            12
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item ZIGZAGOON,              2
	card_item HORSEA,					2
	card_item GOOMY,                  4
	card_item SLIGGOO,                2
	card_item GOODRA,           4
	card_item LUGIA,           2
	card_item PROFESSOR_OAK,            3
	card_item BILL,            4
	card_item LASS,            1
	card_item POKEMON_TRADER,           2
	card_item POKEMON_BREEDER,          3
	card_item ENERGY_SEARCH,            2
	card_item ENERGY_REMOVAL,           3
	card_item SWITCH,                   3
	card_item PLUSPOWER,            3
	card_item GUST_OF_WIND,            2
	card_item GAMBLER,                  1
	card_item RECYCLE,            1
	deck_list_end
	tx LegendaryDragoniteDeckName

FirstStrikeDeck:
	deck_list_start
    card_item FIGHTING_ENERGY, 13
    card_item HITMONCHAN,       4
    card_item HITMONLEE,        4
    card_item CROAGUNK,           4
    card_item HAWLUCHA,             4
    card_item PROFESSOR_OAK,           3
    card_item POKEMON_TRADER,    2
    card_item ENERGY_REMOVAL,    2
    card_item SWITCH,            2
    card_item SCOOP_UP,          2
    card_item COMPUTER_SEARCH,   1
    card_item PLUSPOWER,        4
    card_item ITEM_FINDER,   1
	card_item POTION, 2
	card_item DEFENDER, 2
    card_item GUST_OF_WIND,     4
    card_item BILL,             4
    card_item GAMBLER,   1
	card_item RECYCLE,   1
	deck_list_end
	tx FirstStrikeDeckName

RockCrusherDeck:
	deck_list_start
	card_item FIGHTING_ENERGY,         14
	card_item ROCKRUFF,                 4
	card_item LYCANROC,                  3
	card_item LARVITAR,                  4
	card_item TYRANITAR,                 2
	card_item PUPITAR,                    3
	card_item SANDSHREW, 3
	card_item SANDSLASH, 3
	card_item PROFESSOR_OAK,            3
	card_item BILL,                     4
	card_item ENERGY_SEARCH,                  4
	card_item ENERGY_REMOVAL,           2
	card_item SWITCH,                   1
	card_item POTION,          2
	card_item FULL_HEAL, 2
	card_item DEFENDER,                 2
	card_item GUST_OF_WIND,                  2
	card_item GAMBLER,                  1
	card_item RECYCLE,                  1
	deck_list_end
	tx RockCrusherDeckName

GoGoRainDanceDeck:
	deck_list_start
	card_item WATER_ENERGY,           16
	card_item SQUIRTLE,                4
	card_item WARTORTLE,               3
	card_item BLASTOISE,               4
	card_item PSYDUCK,                 4
	card_item GOLDUCK,                 3
	card_item WINGULL,                2
	card_item PROFESSOR_OAK,           3
	card_item POKEMON_BREEDER,         3
	card_item ENERGY_SEARCH,            3
	card_item ENERGY_RETRIEVAL,        3
	card_item ENERGY_REMOVAL,          2
	card_item SWITCH,                  1
	card_item PLUSPOWER,        1
    card_item ITEM_FINDER,   1
	card_item GUST_OF_WIND, 2
	card_item BILL,             3
    card_item GAMBLER,   1
	card_item RECYCLE,   1
	deck_list_end
	tx GoGoRainDanceDeckName

ZappingSelfdestructDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,        16
	card_item MAGNEMITE_LV13,           4
	card_item MAGNETON_LV28,            2
	card_item MAGNEZONE,                  4
	card_item BLITZLE,           4
	card_item ZEBSTRIKA,           2
	card_item ELECTABUZZ_LV35,          4
	card_item PROFESSOR_OAK,            2
	card_item BILL,                     3
	card_item POKEMON_BREEDER,                     3
	card_item ENERGY_RETRIEVAL,                   1
	card_item ENERGY_SEARCH,                     2
	card_item ENERGY_REMOVAL,                     2
	card_item SWITCH,                   3
	card_item COMPUTER_SEARCH,                     2
	card_item PLUSPOWER,                     2
	card_item ITEM_FINDER,                     1
	card_item GUST_OF_WIND,             1
	card_item GAMBLER,                   1
	card_item RECYCLE,                     1
	deck_list_end
	tx ZappingSelfdestructDeckName

FlowerPowerDeck:
	deck_list_start
	card_item GRASS_ENERGY,     13
	card_item CHIKORITA,         4
	card_item BAYLEEF,           3
	card_item VENUSAUR_LV67,     4
	card_item NIDOQUEEN,         4
	card_item NIDOKING,         4
	card_item PROFESSOR_OAK,     3
	card_item BILL,              3
	card_item POKEMON_BREEDER,   4
	card_item ENERGY_RETRIEVAL,  1
	card_item ENERGY_SEARCH,     4
	card_item ENERGY_REMOVAL,    2
	card_item SWITCH,            2
	card_item POKEMON_CENTER,         1
	card_item PLUSPOWER,         1
	card_item ITEM_FINDER,         1
	card_item GUST_OF_WIND,         2
	card_item POTION,            2
	card_item GAMBLER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx FlowerPowerDeckName

StrangePsyshockDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY, 14
	card_item CRESSELIA,            2
	card_item SLOWPOKE_LV18,         2
	card_item SLOWBRO,        2
	card_item MEW_LV15,         2
	card_item MEW_LV23,         2
	card_item DEINO,         4
	card_item ZWEILOUS,         3
	card_item ALAKAZAM,         4
    card_item PROFESSOR_OAK,     2
	card_item BILL,              3
	card_item POKEMON_TRADER,   2
	card_item ENERGY_RETRIEVAL,  1
	card_item ENERGY_SEARCH,     3
	card_item ENERGY_REMOVAL,    2
	card_item SWITCH,            3
	card_item COMPUTER_SEARCH,         1
	card_item PLUSPOWER,         1
	card_item ITEM_FINDER,         1
	card_item GUST_OF_WIND,         2
	card_item POTION,            2
	card_item GAMBLER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx StrangePsyshockDeckName

WondersofScienceDeck:
	deck_list_start
	card_item GRASS_ENERGY,           11
	card_item PSYCHIC_ENERGY, 4
	card_item CATERPIE,		4
	card_item WEEDLE,		2
	card_item KAKUNA,		4
	card_item GRIMER,		3
	card_item MUK,		3
	card_item CYCLIZAR,		3
	card_item MEOWTH_LV14,		3
	card_item PROFESSOR_OAK,     3
	card_item BILL,              4
	card_item POTION,     1
	card_item FULL_HEAL,     1
	card_item ENERGY_REMOVAL,    3
	card_item SWITCH,            1
	card_item POKEMON_BREEDER,         3
	card_item PLUSPOWER,         2
	card_item ITEM_FINDER,         1
	card_item GUST_OF_WIND,         2
	card_item GAMBLER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx WondersofScienceDeckName

FireChargeDeck:
	deck_list_start
	card_item FIRE_ENERGY,             13
	card_item PSYCHIC_ENERGY,             6
	card_item VULPIX,                4
	card_item NINETALES_LV32,            3
	card_item TORTUNATOR,              1
	card_item NUMEL,              3
	card_item CAMERUPT,              3
	card_item LICKITUNG,              3
	card_item PROFESSOR_OAK,     3
	card_item BILL,              4
	card_item POKEMON_TRADER,   2
	card_item ENERGY_RETRIEVAL,  1
	card_item ENERGY_SEARCH,     2
	card_item ENERGY_REMOVAL,    2
	card_item SWITCH,            2
	card_item COMPUTER_SEARCH,         2
	card_item PLUSPOWER,         1
	card_item ITEM_FINDER,         2
	card_item GUST_OF_WIND,         1
	card_item GAMBLER,         1
	card_item RECYCLE,         1
	deck_list_end
	tx FireChargeDeckName

ImRonaldDeck:
	deck_list_start
	card_item FIRE_ENERGY,       9
	card_item WATER_ENERGY,     10
	card_item FIGHTING_ENERGY,   8
	card_item CHARMANDER,        3
	card_item CHARMELEON,        2
	card_item GROWLITHE,         3
	card_item ARCANINE_LV45,     1
	card_item SQUIRTLE,          3
	card_item WARTORTLE,         2
	card_item SEEL,              2
	card_item DEWGONG,           1
	card_item CHEWTLE,            2
	card_item LARVITAR,            3
	card_item PUPITAR,      2
	card_item PROFESSOR_OAK,     1
	card_item ENERGY_RETRIEVAL,  1
	card_item ENERGY_SEARCH,     2
	card_item SWITCH,            1
	card_item PLUSPOWER,         1
	card_item DEFENDER,          1
	card_item GUST_OF_WIND,      2
	deck_list_end
	tx ImRonaldDeckName

PowerfulRonaldDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY,        7
	card_item FIGHTING_ENERGY,         9
	card_item PSYCHIC_ENERGY,          7
	card_item DOUBLE_COLORLESS_ENERGY, 3
	card_item ELECTABUZZ_LV35,         3
	card_item HITMONLEE,               2
	card_item HITMONCHAN,              2
	card_item SPIRITOMB,                 1
	card_item DROWZEE,                    2
	card_item MEW_LV23,             1
	card_item RUFFLET,                   2
	card_item BRAVIARY,                  1
	card_item TOGEKISS,               2
	card_item CHATOT,              2
	card_item STANTLER,                  3
	card_item ENERGY_RETRIEVAL,        2
	card_item SUPER_ENERGY_RETRIEVAL,  1
	card_item ENERGY_SEARCH,           1
	card_item ENERGY_REMOVAL,          2
	card_item SWITCH,                  1
	card_item PLUSPOWER,               2
	card_item GUST_OF_WIND,            2
	card_item FULL_HEAL,               1
	card_item GAMBLER,                 1
	deck_list_end
	tx PowerfulRonaldDeckName

InvincibleRonaldDeck:
	deck_list_start
	card_item GRASS_ENERGY,            7
	card_item FIRE_ENERGY,             6
	card_item FIGHTING_ENERGY,         7
	card_item DOUBLE_COLORLESS_ENERGY, 4
	card_item GRIMER,                  3
	card_item MUK,                     2
	card_item NIDOKING,                 4
	card_item MAGMORTAR,             3
	card_item MAGMAR_LV24,                 4
	card_item AUDINO,                 2
	card_item CHATOT,              2
	card_item PROFESSOR_OAK,           2
	card_item BILL,                    3
	card_item ENERGY_RETRIEVAL,        2
	card_item ENERGY_REMOVAL,          2
	card_item SCOOP_UP,                2
	card_item GUST_OF_WIND,            2
	card_item PLUSPOWER,               2
	card_item GAMBLER,                 1
	deck_list_end
	tx InvincibleRonaldDeckName

LegendaryRonaldDeck:
	deck_list_start
	card_item FIRE_ENERGY,             	8
	card_item WATER_ENERGY,	            4
	card_item LIGHTNING_ENERGY,	        4
	card_item DOUBLE_COLORLESS_ENERGY,  3
	card_item PIDGEY,             3
	card_item MOLTRES_LV37,             1
	card_item REGIDRAGO,            	    2
	card_item ARTICUNO_LV37,            1
	card_item ZAPDOS_LV68,              1
	card_item CHATOT,               3
	card_item LUGIA,           2
	card_item PROFESSOR_OAK,            3
	card_item BILL,                     3
	card_item ENERGY_SEARCH,	1
	card_item POKEMON_TRADER,           2
	card_item FULL_HEAL,	1
	card_item ENERGY_REMOVAL,           4
	card_item SCOOP_UP,                 3
	card_item GAMBLER,                  1
	card_item POTION,	1
	card_item SWITCH,                   2
	card_item COMPUTER_SEARCH,          1
	card_item PLUSPOWER,                2
	card_item GUST_OF_WIND,             3
	card_item RECYCLE,                  1
	deck_list_end
	tx LegendaryRonaldDeckName

MusclesforBrainsDeck:
	deck_list_start
	card_item FIGHTING_ENERGY,         23
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item SANDILE,                   4
	card_item KROKOROK,                  3
	card_item KROOKODILE,                  2
	card_item HITMONLEE,                2
	card_item HITMONCHAN,               2
	card_item STUFFUL,              4
	card_item BEWEAR,                  3
	card_item CHATOT,               1
	card_item STANTLER,                   2
	card_item BILL,                     2
	card_item ENERGY_REMOVAL,           1
	card_item PLUSPOWER,                2
	card_item GUST_OF_WIND,             2
	card_item POTION,                   2
	card_item SUPER_POTION,             1
	card_item FULL_HEAL,                1
	card_item REVIVE,                   1
	deck_list_end
	tx MusclesforBrainsDeckName

HeatedBattleDeck:
	deck_list_start
	card_item FIRE_ENERGY,       8
	card_item FIGHTING_ENERGY,  12
	card_item PONYTA,       4
	card_item RAPIDASH,		3
	card_item CROAGUNK,            4
	card_item TOXICROAK,          2
	card_item HITMONLEE,         3
	card_item HITMONCHAN,        3
	card_item CHATOT,        3
	card_item BILL,				 2
	card_item ENERGY_SEARCH,     4
	card_item SCOOP_UP,          2
	card_item PLUSPOWER,         3
	card_item DEFENDER,          2
	card_item POTION,            3
	card_item FULL_HEAL,         2
	deck_list_end
	tx HeatedBattleDeckName

LovetoBattleDeck:
	deck_list_start
	card_item FIGHTING_ENERGY, 12
	card_item GRASS_ENERGY, 8
	card_item CROAGUNK,           4
	card_item TOXICROAK,         3
	card_item SANDILE,           4
	card_item KROKOROK,          3
	card_item KROOKODILE,          2
	card_item ZIGZAGOON,          3
	card_item LINOONE,         2
	card_item RUFFLET,            3
	card_item BRAVIARY,           2
	card_item STANTLER,           1
	card_item PLUSPOWER,        4
	card_item DEFENDER,         4
	card_item POTION,           3
	card_item FULL_HEAL,        2
	deck_list_end
	tx LovetoBattleDeckName

ExcavationDeck:
	deck_list_start
	card_item FIGHTING_ENERGY,    15
	card_item WATER_ENERGY,        8
	card_item WINGULL,            4
	card_item PELIPPER,            1
	card_item OMANYTE,             3
	card_item OMASTAR,             2
	card_item LARVITAR,              3
	card_item PUPITAR,        1
	card_item HITMONCHAN,          3
	card_item KABUTO,              2
	card_item KABUTOPS,            1
	card_item TYRUNT,			   3
	card_item TYRANTRUM,          2
	card_item PROFESSOR_OAK,       2
	card_item BILL,                3
	card_item POKEMON_BREEDER,     3
	card_item MYSTERIOUS_FOSSIL,   4
	deck_list_end
	tx ExcavationDeckName

BlisteringPokemonDeck:
	deck_list_start
	card_item FIRE_ENERGY,             6
	card_item FIGHTING_ENERGY,         12
	card_item DOUBLE_COLORLESS_ENERGY, 2
	card_item NUMEL,                  4
	card_item CAMERUPT,                2
	card_item HAWLUCHA,                    4
	card_item SILICOBRA,                 4
	card_item SANDACONDA,                  3
	card_item MAGMAR_LV24,                    3
	card_item PROFESSOR_OAK,           2
	card_item BILL,                    3
	card_item POKEMON_TRADER,          3
	card_item ENERGY_RETRIEVAL,        2
	card_item MR_FUJI,                 2
	card_item SWITCH,                  3
	card_item DEFENDER,                3
	card_item GUST_OF_WIND,            2
	deck_list_end
	tx BlisteringPokemonDeckName

HardPokemonDeck:
	deck_list_start
	card_item FIGHTING_ENERGY, 16
	card_item ROCKRUFF,			4
	card_item TRAPINCH,          4
	card_item VIBRAVA,         3
	card_item FLYGON,            2
	card_item HAWLUCHA,             3
	card_item LARVITAR,           3
	card_item TYRANITAR,     2
	card_item CUFANT,          4
	card_item RHYDON,           1
	card_item REGIDRAGO,          2
	card_item BILL,             3
	card_item POKE_BALL,        4
	card_item DEFENDER,         4
	card_item GUST_OF_WIND,     3
	card_item POTION,           2
	deck_list_end
	tx HardPokemonDeckName

WaterfrontPokemonDeck:
	deck_list_start
	card_item WATER_ENERGY,     12
	card_item PSYCHIC_ENERGY,    7
	card_item GOLDEEN,           4
	card_item SEAKING,           3
	card_item STARYU,            4
	card_item STARMIE,           3
	card_item SLOWPOKE_LV18,     3
	card_item SLOWBRO,           2
	card_item ORANGURU,         1
	card_item AUDINO,			 3
	card_item GOOMY,           3
	card_item SLIGGOO,         1
	card_item BILL,              2
	card_item PROFESSOR_OAK,	 2
	card_item ENERGY_RETRIEVAL,  3
	card_item SWITCH,            2
	card_item POKEDEX,           1
	card_item GUST_OF_WIND,      1
	card_item POTION,            2
	card_item SUPER_POTION,      1
	deck_list_end
	tx WaterfrontPokemonDeckName

LonelyFriendsDeck:
	deck_list_start
	card_item FIGHTING_ENERGY,            8
	card_item WATER_ENERGY,            9
	card_item DOUBLE_COLORLESS_ENERGY, 4
	card_item POLIWAG,                 4
	card_item OMANYTE,                 3
	card_item OMASTAR,                 2
	card_item CYCLIZAR,         2
	card_item STUFFUL,         4
	card_item BEWEAR,              4
	card_item PROFESSOR_OAK,           2
	card_item BILL,                    3
	card_item TOGEPI_DOLL,           4
	card_item MYSTERIOUS_FOSSIL,       4
	card_item SCOOP_UP,                2
	card_item POTION,                  4
	card_item SUPER_POTION,            1
	deck_list_end
	tx LonelyFriendsDeckName

SoundoftheWavesDeck:
	deck_list_start
	card_item WATER_ENERGY,   13
	card_item GRASS_ENERGY,   6
	card_item TENTACOOL,       4
	card_item TENTACRUEL,      3
	card_item SEEL,            4
	card_item DEWGONG,         3
	card_item WINGULL,        3
	card_item PELIPPER,        2
	card_item KRABBY,          3
	card_item KINGLER,         2
	card_item CHEWTLE,          3
	card_item BILL,            4
	card_item POKEMON_TRADER,  4
	card_item ENERGY_REMOVAL,  1
	card_item PLUSPOWER,       3
	card_item FULL_HEAL,       2
	deck_list_end
	tx SoundoftheWavesDeckName

PikachuDeck:
	deck_list_start
	card_item WATER_ENERGY,             6
	card_item LIGHTNING_ENERGY,        12
	card_item BLITZLE,             4
	card_item HELIOPTILE,             2
	card_item EMOLGA,             1
	card_item PINCURCHIN,         1
	card_item SHINX,           4
	card_item LUXIO,     2
	card_item LUXRAY,	2
	card_item ZEBSTRIKA,              2
	card_item HELIOLISK,              2
	card_item BILL,                     4
	card_item SWITCH,                   4
	card_item POKE_BALL,                4
	card_item POTION,                   4
	card_item SUPER_POTION,             2
	card_item FULL_HEAL,                4
	deck_list_end
	tx PikachuDeckName

BoomBoomSelfdestructDeck:
	deck_list_start
	card_item GRASS_ENERGY,      8
	card_item LIGHTNING_ENERGY, 15
	card_item KOFFING,           4
	card_item WEEZING,           3
	card_item CHARJABUG,    4
	card_item MAGNETON_LV28,     3
	card_item MAGNEZONE,     2
	card_item TYNAMO,			 4
	card_item EELEKTRIK,		 3
	card_item EELEKTROSS,		 2
	card_item PROFESSOR_OAK,     3
	card_item BILL,				 3
	card_item ENERGY_SEARCH,     4
	card_item DEFENDER,          2
	deck_list_end
	tx BoomBoomSelfdestructDeckName

PowerGeneratorDeck:
	deck_list_start
	card_item LIGHTNING_ENERGY, 16
	card_item GRASS_ENERGY, 	8
	card_item BLITZLE,      4
	card_item ZEBSTRIKA,		 3
	card_item VOLTORB,           4
	card_item ELECTRODE_LV35,    2
	card_item ELECTRODE_LV42,    2
	card_item ELECTRIKE,   4
	card_item MANECTRIC,   3
	card_item ZERAORA,       2
	card_item BILL,              3
	card_item POKEMON_TRADER,    3
	card_item SWITCH,            2
	card_item DEFENDER,          4
	deck_list_end
	tx PowerGeneratorDeckName

EtceteraDeck:
	deck_list_start
	card_item GRASS_ENERGY,     8
	card_item FIRE_ENERGY,      4
	card_item LIGHTNING_ENERGY, 4
	card_item FIGHTING_ENERGY,  4
	card_item PSYCHIC_ENERGY,   4
	card_item CATERPIE,         1
	card_item WEEDLE,           1
	card_item NIDORANF,         2
	card_item ODDISH,           2
	card_item GRUBBIN,     2
	card_item CHARMANDER,       2
	card_item MAGMAR_LV24,      1
	card_item BLITZLE,     2
	card_item MAGNEMITE_LV13,   1
	card_item SILICOBRA,          1
	card_item SANDILE,           2
	card_item MUNNA,       2
	card_item DROWZEE,             1
	card_item BILL,             3
	card_item ENERGY_RETRIEVAL, 2
	card_item ENERGY_SEARCH,    3
	card_item POKE_BALL,        3
	card_item PLUSPOWER,        3
	card_item DEFENDER,         2
	deck_list_end
	tx EtceteraDeckName

FlowerGardenDeck:
	deck_list_start
	card_item GRASS_ENERGY,            20
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item CHIKORITA,                3
	card_item BAYLEEF,                  2
	card_item VENUSAUR_LV67,            2
	card_item ODDISH,                   3
	card_item GLOOM,                    2
	card_item VILEPLUME,                2
	card_item BELLSPROUT,               3
	card_item WEEPINBELL,               2
	card_item VICTREEBEL,               1
	card_item TANGELA_LV8,              2
	card_item GRUBBIN,             2
	card_item POKEMON_TRADER,           2
	card_item POKEMON_BREEDER,          3
	card_item ENERGY_SEARCH,            4
	card_item SWITCH,                   2
	card_item POTION,                   2
	card_item FULL_HEAL,                1
	deck_list_end
	tx FlowerGardenDeckName

KaleidoscopeDeck:
	deck_list_start
	card_item GRASS_ENERGY,            10
	card_item FIRE_ENERGY,              4
	card_item WATER_ENERGY,             4
	card_item LIGHTNING_ENERGY,         4
	card_item DOUBLE_COLORLESS_ENERGY,  3
	card_item VENONAT,                  4
	card_item VENOMOTH,                 3
	card_item FLAREON_LV28,             2
	card_item VAPOREON_LV42,            2
	card_item JOLTEON_LV29,             2
	card_item DITTO,                    4
	card_item EEVEE,                    4
	card_item BILL,                     3
	card_item MR_FUJI,                  2
	card_item ENERGY_SEARCH,            3
	card_item SWITCH,                   4
	card_item GUST_OF_WIND,             2
	deck_list_end
	tx KaleidoscopeDeckName

GhostDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,          15
	card_item GRASS_ENERGY,             6
	card_item DOUBLE_COLORLESS_ENERGY,  3
	card_item ZUBAT,                    4
	card_item GOLBAT,                   3
	card_item DUSKULL,               4
	card_item MISDREAVUS,              2
	card_item DUSCLOPS,             2
	card_item MISMAGIUS,             2
	card_item DUSKNOIR,                   4
	card_item DITTO,                    3
	card_item PROFESSOR_OAK,            2
	card_item BILL,                     2
	card_item POKEMON_BREEDER,          2
	card_item GUST_OF_WIND,             1
	card_item POTION,                   2
	card_item FULL_HEAL,                1
	card_item RECYCLE,                  2
	deck_list_end
	tx GhostDeckName

NapTimeDeck:
	deck_list_start
	card_item GRASS_ENERGY,     8
	card_item PSYCHIC_ENERGY,  16
	card_item GRIMER,            4
	card_item MUK,        3
	card_item MUNNA,       4
	card_item MUSHARNA,     3
	card_item STUFFUL,  4
	card_item BEWEAR,       3
	card_item BILL,             3
	card_item FULL_HEAL,		3
	card_item SWITCH,           2
	card_item PLUSPOWER,        3
	card_item GUST_OF_WIND,     2
	card_item POTION,           2
	deck_list_end
	tx NapTimeDeckName

StrangePowerDeck:
	deck_list_start
	card_item PSYCHIC_ENERGY,          17
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item CRESSELIA,             4
	card_item SLOWPOKE_LV18,             4
	card_item SLOWBRO,                  2
	card_item DROWZEE,                  4
	card_item HYPNO,                    3
	card_item SPIRITOMB,                  2
	card_item ESPEON,                     2
	card_item MIMIKYU,                  1
	card_item MEW_LV23,                 2
	card_item STANTLER,                2
	card_item REGIDRAGO,                  1
	card_item POKEMON_TRADER,           2
	card_item ENERGY_RETRIEVAL,         2
	card_item ENERGY_REMOVAL,           2
	card_item SUPER_ENERGY_REMOVAL,     1
	card_item PLUSPOWER,                2
	card_item ITEM_FINDER,              1
	card_item GUST_OF_WIND,             1
	card_item FULL_HEAL,                1
	deck_list_end
	tx StrangePowerDeckName

FlyinPokemonDeck:
	deck_list_start
	card_item GRASS_ENERGY,            18
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item ZUBAT,                    4
	card_item GOLBAT,                   3
	card_item SCIZOR,           2
	card_item PIDGEY,                   4
	card_item PIDGEOTTO,                3
	card_item PIDGEOT_LV38,             2
	card_item SPEAROW,                  4
	card_item FEAROW,                   3
	card_item IMPOSTER_PROFESSOR_OAK,   2
	card_item LASS,                     2
	card_item FULL_HEAL,				2
	card_item BILL,                     3
	card_item POTION,                   4
	deck_list_end
	tx FlyinPokemonDeckName

LovelyNidoranDeck:
	deck_list_start
	card_item GRASS_ENERGY,    18
	card_item FIGHTING_ENERGY, 8
	card_item NIDORANF,         4
	card_item NIDORINA,         2
	card_item NIDOQUEEN,        4
	card_item NIDORANM,         4
	card_item NIDORINO,         2
	card_item NIDOKING,         4
	card_item PROFESSOR_OAK,    2
	card_item BILL,             3
	card_item POKEMON_BREEDER,  2
	card_item SWITCH,           2
	card_item POKE_BALL,        4
	card_item GAMBLER,          1
	deck_list_end
	tx LovelyNidoranDeckName

PoisonDeck:
	deck_list_start
	card_item GRASS_ENERGY,           13
	card_item FIGHTING_ENERGY,		  10
	card_item CATERPIE,                  4
	card_item WEEDLE,                  3
	card_item KAKUNA,                4
	card_item CROAGUNK,				   4
	card_item TOXICROAK,				   3
	card_item PARAS,				   4
	card_item PARASECT,				   3
	card_item PROFESSOR_OAK,           2
	card_item IMPOSTER_PROFESSOR_OAK,  2
	card_item POKEMON_BREEDER,         3
	card_item POTION,                  2
	card_item FULL_HEAL,               2
	card_item GAMBLER,                 1
	deck_list_end
	tx PoisonDeckName

AngerDeck:
	deck_list_start
	card_item FIRE_ENERGY,             10
	card_item WATER_ENERGY,          8
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item GROWLITHE,                3
	card_item CAMERUPT,            2
	card_item PONYTA,                   3
	card_item ZIGZAGOON,                  3
	card_item RAPIDASH,                 2
	card_item RUFFLET,                    3
	card_item BRAVIARY,                   2
	card_item DRUDDIGON,                   3
	card_item PROFESSOR_OAK,            2
	card_item BILL,                     3
	card_item ENERGY_RETRIEVAL,         2
	card_item COMPUTER_SEARCH,          2
	card_item PLUSPOWER,                4
	card_item DEFENDER,                 2
	card_item GUST_OF_WIND,             2
	deck_list_end
	tx AngerDeckName

FlamethrowerDeck:
	deck_list_start
	card_item FIRE_ENERGY,             15
	card_item DOUBLE_COLORLESS_ENERGY,  4
	card_item CHARMANDER,               4
	card_item CHARMELEON,               3
	card_item CHARIZARD,                2
	card_item VULPIX,                   4
	card_item NINETALES_LV32,           2
	card_item MAGMAR_LV24,              4
	card_item MAGMORTAR,              2
	card_item FLAREON_LV28,             2
	card_item EEVEE,                    3
	card_item BILL,                     4
	card_item POKEMON_TRADER,           1
	card_item ENERGY_RETRIEVAL,         2
	card_item SUPER_ENERGY_RETRIEVAL,   1
	card_item SWITCH,                   2
	card_item PLUSPOWER,                2
	card_item GUST_OF_WIND,             3
	deck_list_end
	tx FlamethrowerDeckName

ReshuffleDeck:
	deck_list_start
	card_item FIRE_ENERGY,             15
	card_item WATER_ENERGY,				8
	card_item DOUBLE_COLORLESS_ENERGY,  2
	card_item BAGON,					4
	card_item SHELGON,					3
	card_item SALAMENCE,				2
	card_item DRUDDIGON,				3
	card_item CHATOT,               4
	card_item STANTLER,                   1
	card_item BILL,                     2
	card_item ENERGY_RETRIEVAL,         2
	card_item ENERGY_REMOVAL,           1
	card_item SUPER_ENERGY_REMOVAL,     1
	card_item SWITCH,                   2
	card_item POKEMON_CENTER,           1
	card_item POTION,                   2
	; this deck list has 63 cards
	;deck_list_end
	db 0
	tx ReshuffleDeckName

ImakuniDeck:
	deck_list_start
	card_item WATER_ENERGY,   10
	card_item PSYCHIC_ENERGY, 16
	card_item PSYDUCK,         4
	card_item GOLDUCK,         3
	card_item CRESSELIA,    2
	card_item SLOWPOKE_LV18,   2
	card_item SLOWBRO,         3
	card_item DROWZEE,         4
	card_item HYPNO,           3
	card_item ORANGURU,       4
	card_item IMAKUNI_CARD,    4
	card_item MAINTENANCE,     2
	card_item POKEMON_FLUTE,   2
	card_item GAMBLER,         1
	deck_list_end
	tx ImakuniDeckName
