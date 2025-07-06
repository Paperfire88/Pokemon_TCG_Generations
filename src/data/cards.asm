ChikoritaCard:
	db TYPE_PKMN_GRASS ; type
	gfx ChikoritaCardGfx ; gfx
	tx ChikoritaName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw CHIKORITA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SleepingGasName ; name
	tx MayInflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GastlySleepingGasEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLEEPING_GAS ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx LeechSeedName ; name
	tx ExeggcutesLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggcuteLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx SeedName ; category
	db 1 ; Pokedex number
	db 13 ; level
	db 2, 4 ; length
	dw 15 * 10 ; weight
	tx ChikoritaDescription ; description
	db 16

BayleefCard:
	db TYPE_PKMN_GRASS ; type
	gfx BayleefCardGfx ; gfx
	tx BayleefName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw BAYLEEF
	db 70 ; hp
	db STAGE1 ; stage
	tx ChikoritaName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SunshineCallName ; name
	tx SunshineCallDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GrassPkmnSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy GRASS, 3 ; energies
	tx GreenForceName ; name
	tx GreenForceDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw GreenForceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx SeedName ; category
	db 2 ; Pokedex number
	db 20 ; level
	db 3, 3 ; length
	dw 29 * 10 ; weight
	tx BayleefDescription ; description
	db 16

MeganiumCard:
	db TYPE_PKMN_GRASS ; type
	gfx MeganiumCardGfx ; gfx
	tx MeganiumName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw MEGANIUM
	db 100 ; hp
	db STAGE2 ; stage
	tx BayleefName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EnergyTransName ; name
	tx EnergyTransDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw VenusaurEnergyTransEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 3 ; energies
	tx GaintBloomName ; name
	tx GiantBloomDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw GiantBloomEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db INFLICT_PARALYSIS/INFLICT_SLEEP ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx HerbName ; category
	db 3 ; Pokedex number
	db 67 ; level
	db 6, 7 ; length
	dw 221 * 10 ; weight
	tx MeganiumDescription ; description
	db 0

CelebiCard:
	db TYPE_PKMN_GRASS ; type
	gfx CelebiCardGfx ; gfx
	tx CelebiName ; name
	db STAR ; rarity
	db PROMOTIONAL | NONE ; sets
	dw CELEBI
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SolarPowerName ; name
	tx SolarPowerDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw VenusaurSolarPowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SOLAR_POWER ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx PsychicName ; name
	tx PsychicDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw MewtwoPsychicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_LIGHTNING ; resistance
	tx TimeTravelName ; category
	db 4 ; Pokedex number
	db 64 ; level
	db 6, 7 ; length
	dw 221 * 10 ; weight
	tx CelebiDescription ; description
	db 0

WurmpleCard:
	db TYPE_PKMN_GRASS ; type
	gfx WurmpleCardGfx ; gfx
	tx WurmpleName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw WURMPLE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx PoisonStingName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw WeedlePoisonStingEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx WailName ; name
	tx WailDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MarowakWailEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_CRY ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx WormName ; category
	db 5 ; Pokedex number
	db 13 ; level
	db 1, 0 ; length
	dw 6 * 10 ; weight
	tx CaterpieDescription ; description
	db 19

SilcoonCard:
	db TYPE_PKMN_GRASS ; type
	gfx SilcoonCardGfx ; gfx
	tx SilcoonName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw SILCOON
	db 60 ; hp
	db STAGE1 ; stage
	tx WurmpleName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx StiffenName ; name
	tx MetapodsStiffenDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MetapodStiffenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy GRASS, 2 ; energies
	tx StunSporeName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MetapodStunSporeEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx CocoonName ; category
	db 6 ; Pokedex number
	db 21 ; level
	db 2, 4 ; length
	dw 22 * 10 ; weight
	tx MetapodDescription ; description
	db 16

BeautiflyCard:
	db TYPE_PKMN_GRASS ; type
	gfx BeautiflyCardGfx ; gfx
	tx BeautiflyName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw BEAUTIFLY
	db 90 ; hp
	db STAGE2 ; stage
	tx SilcoonName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MiracleScalesName ; name
	tx MiracleScalesDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SOLAR_POWER ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx StrangePollenName ; name
	tx StrangePollenDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx ButterflyName ; category
	db 7 ; Pokedex number
	db 33 ; level
	db 3, 7 ; length
	dw 71 * 10 ; weight
	tx ButterfreeDescription ; description
	db 0

RowletCard:
	db TYPE_PKMN_GRASS ; type
	gfx RowletCardGfx ; gfx
	tx RowletName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw ROWLET
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx LuckyFindName ; name
	tx LuckyFindDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw LuckyFindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1; energies
	tx SkillDiveName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 0 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx HairyBugName ; category
	db 10 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 7 * 10 ; weight
	tx WeedleDescription ; description
	db 16

DartrixCard:
	db TYPE_PKMN_GRASS ; type
	gfx DartrixCardGfx ; gfx
	tx DartrixName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DARTRIX
	db 70 ; hp
	db STAGE1 ; stage
	tx RowletName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx AgilityName ; name
	tx RapidashsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK | FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1; energies
	tx SkillDiveName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx CocoonName ; category
	db 11 ; Pokedex number
	db 26 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx KakunaDescription ; description
	db 16

BeedrillCard:
	db TYPE_PKMN_GRASS ; type
	gfx BeedrillCardGfx ; gfx
	tx BeedrillName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw BEEDRILL
	db 80 ; hp
	db STAGE2 ; stage
	tx DartrixName ; pre-evo name

	; attack 1
	energy COLORLESS, 3 ; energies
	tx TwineedleName ; name
	tx DoubleAttackX30Description ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw BeedrillTwineedleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy COLORLESS, 2, GRASS, 1, ; energies
	tx HuntingArrowName ; name
	tx HuntingArrowDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw HuntingArrowEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx PoisonBeeName ; category
	db 12 ; Pokedex number
	db 47 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx BeedrillDescription ; description
	db 0

ShelmetCard:
	db TYPE_PKMN_GRASS ; type
	gfx ShelmetCardGfx ; gfx
	tx ShelmetName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SHELMET
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name
	
	; attack 1
	energy GRASS, 1 ; energies
	tx CallForFamilyName ; name
	tx GrassCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw GrassCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx LeechLifeName ; name
	tx LeechLifeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw LeechLifeEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx SnailName ; category
	db 13 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 15 * 10 ; weight
	tx NidoranFDescription ; description
	db 19

AccelgorCard:
	db TYPE_PKMN_GRASS ; type
	gfx AccelgorCardGfx ; gfx
	tx AccelgorName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ACCELGOR
	db 80 ; hp
	db STAGE1 ; stage
	tx ShelmetName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx DarkMistName ; name
	tx PunkRockDescription; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PunkRockEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMOG ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx NinjaTornadoName ; name
	tx NinjaTornadoDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw NinjaTornadoEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GUST_OF_WIND ; animation

	db 0 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx ShellOutName ; category
	db 14 ; Pokedex number
	db 44 ; level
	db 2, 7 ; length
	dw 44 * 10 ; weight
	tx NidorinaDescription ; description
	db 0

IllumiseCard:
	db TYPE_PKMN_GRASS ; type
	gfx IllumiseCardGfx ; gfx
	tx IllumiseName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ILLUMISE
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx ChaoticNoiseName ; name
	tx ChaoticNoiseDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw ChatoicNoiseEffectCommands ; effect commands
	db INFLICT_CONFUSION/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SUPERSONIC ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx BoyfriendsName ; name
	tx BoyfriendsDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw NidoqueenBoyfriendsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BOYFRIENDS ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx FireflyName ; category
	db 17 ; Pokedex number
	db 43 ; level
	db 4, 3 ; length
	dw 132 * 10 ; weight
	tx NidoqueenDescription ; description
	db 0

KarrablastCard:
	db TYPE_PKMN_GRASS ; type
	gfx KarrablastCardGfx ; gfx
	tx KarrablastName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw KARRABLAST
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StepInName ; name
	tx StepInDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DragoniteStepInEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx HornHazardName ; name
	tx MayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NidoranMHornHazardEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx ClampingName ; category
	db 15 ; Pokedex number
	db 20 ; level
	db 1, 4 ; length
	dw 15 * 10 ; weight
	tx NidoranMDescription ; description
	db 19

EscavalierCard:
	db TYPE_PKMN_GRASS ; type
	gfx EscavalierCardGfx ; gfx
	tx EscavalierName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ESCAVALIER
	db 80 ; hp
	db STAGE1 ; stage
	tx KarrablastName ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx TwineedleName ; name
	tx TwineedleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw TwineedleEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy COLORLESS, 2, FIGHTING, 1 ; energies
	tx IronTackleName ; name
	tx IronTackleDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw IronTackleEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DRILL ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx CavalryName ; category
	db 16 ; Pokedex number
	db 45 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx NidorinoDescription ; description
	db 0

NidokingCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidokingCardGfx ; gfx
	tx NidokingName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw NIDOKING
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx ToxicVibrationName ; name
	tx ToxicVibrationDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw VibrationToxicEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SUPERSONIC ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx SupersonicName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PoisonBoostEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx FireflyName ; category
	db 18 ; Pokedex number
	db 48 ; level
	db 4, 7 ; length
	dw 137 * 10 ; weight
	tx NidokingDescription ; description
	db 0

ApplinCard:
	db TYPE_PKMN_GRASS ; type
	gfx ApplinCardGfx ; gfx
	tx ApplinName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw APPLIN
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1, ; energies
	tx TradeName ; name
	tx TradeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TradeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx StoneBarrageName ; name
	tx StoneBarrageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw GeodudeStoneBarrageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_STONE_BARRAGE ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx AppleCoreName ; category
	db 22 ; Pokedex number
	db 8 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx OddishDescription ; description
	db 16

GloomCard:
	db TYPE_PKMN_GRASS ; type
	gfx GloomCardGfx ; gfx
	tx GloomName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw GLOOM
	db 70 ; hp
	db STAGE1 ; stage
	tx ApplinName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx EnergyAbsorptionName ; name
	tx EnergyAbsorptionDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MewtwoAltLV60EnergyAbsorptionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1, ; energies
	tx FoulOdorName ; name
	tx ApplefallDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS  ; category
	dw ApplefallEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_ODOR ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx AppleWingName ; category
	db 23 ; Pokedex number
	db 32 ; level
	db 2, 7 ; length
	dw 19 * 10 ; weight
	tx GloomDescription ; description
	db 0

VileplumeCard:
	db TYPE_PKMN_GRASS ; type
	gfx VileplumeCardGfx ; gfx
	tx VileplumeName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw VILEPLUME
	db 80 ; hp
	db STAGE1 ; stage
	tx ApplinName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx HealName ; name
	tx HealDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw VileplumeHealEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1, ; energies
	tx PetalDanceName ; name
	tx SweetImpactDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw SweetImpactEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PETAL_DANCE ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx AppleNectarName ; category
	db 24 ; Pokedex number
	db 35 ; level
	db 3, 11 ; length
	dw 41 * 10 ; weight
	tx VileplumeDescription ; description
	db 0

ShroomishCard:
	db TYPE_PKMN_GRASS ; type
	gfx ShroomishCardGfx ; gfx
	tx ShroomishName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SHROOMISH
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx SporeName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SPORE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx MushroomName ; category
	db 25 ; Pokedex number
	db 8 ; level
	db 1, 0 ; length
	dw 12 * 10 ; weight
	tx ParasDescription ; description
	db 19

BreloomCard:
	db TYPE_PKMN_GRASS ; type
	gfx BreloomCardGfx ; gfx
	tx BreloomName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw BRELOOM
	db 70 ; hp
	db STAGE1 ; stage
	tx ShroomishName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx ToxicSporeName ; name
	tx ToxicSporeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PoisonSporeEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SPORE ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2, ; energies
	tx BattleBlastName ; name
	tx BattleBlastDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw BattleBlastEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx MushroomName ; category
	db 26 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx ParasectDescription ; description
	db 0

YanmaCard:
	db TYPE_PKMN_GRASS ; type
	gfx YanmaCardGfx ; gfx
	tx YanmaName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw YANMA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx UTurnName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx AgilityName ; name
	tx RapidashsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK | FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx ThinWingName ; category
	db 27 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx VenonatDescription ; description
	db 16

YanmegaCard:
	db TYPE_PKMN_GRASS ; type
	gfx YanmegaCardGfx ; gfx
	tx YanmegaName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw YANMEGA
	db 70 ; hp
	db STAGE1 ; stage
	tx YanmaName ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx LinearAttackName ; name
	tx LinearAttackDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LinearAttackEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_WHIRLWIND_ZIGZAG ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx SonicboomName ; name
	tx SonicboomDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw SonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SONICBOOM ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx OgreDarnerName ; category
	db 28 ; Pokedex number
	db 38 ; level
	db 4, 11 ; length
	dw 28 * 10 ; weight
	tx YANMEGADescription ; description
	db 0

BounsweetCard:
	db TYPE_PKMN_GRASS ; type
	gfx BounsweetCardGfx ; gfx
	tx BounsweetName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw BOUNSWEET
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx TackleName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx EnergySearchName ; name
	tx EnergySearchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergySearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx FruitName ; category
	db 29 ; Pokedex number
	db 11 ; level
	db 2, 4 ; length
	dw 9 * 10 ; weight
	tx BounsweetDescription ; description
	db 19

SteeneeCard:
	db TYPE_PKMN_GRASS ; type
	gfx SteeneeCardGfx ; gfx
	tx SteeneeName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw STEENEE
	db 70 ; hp
	db STAGE1 ; stage
	tx BounsweetName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx LeafGuardName ; name
	tx ExpandDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw JigglypuffExpandEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PROTECT ; animation

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx WorrySeedName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx FruitName ; category
	db 30 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 14 * 10 ; weight
	tx SteeneeDescription ; description
	db 16

TsareenaCard:
	db TYPE_PKMN_GRASS ; type
	gfx TsareenaCardGfx ; gfx
	tx TsareenaName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw TSAREENA
	db 100 ; hp
	db STAGE2 ; stage
	tx SteeneeName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx AttractName ; name
	tx AttractDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw VictreebelLureEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db INFLICT_CONFUSION ; flags 3
	db 0
	db ATK_ANIM_LURE ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx JumpingSideKickName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx FruitName ; category
	db 31 ; Pokedex number
	db 42 ; level
	db 5, 7 ; length
	dw 34 * 10 ; weight
	tx VictreebelDescription ; description
	db 0

PhantumpCard:
	db TYPE_PKMN_GRASS ; type
	gfx PhantumpCardGfx ; gfx
	tx PhantumpName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw PHANTUMP
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx AstonishName ; name
	tx AstonishDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw AstonishEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx VanishName ; name
	tx SteelWingDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw MinimizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PROTECT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx StumpName ; category
	db 32 ; Pokedex number
	db 17 ; level
	db 2, 11 ; length
	dw 66 * 10 ; weight
	tx GrimerDescription ; description
	db 19

TrevenantCard:
	db TYPE_PKMN_GRASS ; type
	gfx TrevenantCardGfx ; gfx
	tx TrevenantName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw TREVENANT
	db 70 ; hp
	db STAGE1 ; stage
	tx PhantumpName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ForestCurseName ; name
	tx ForestCurseDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MukToxicGasEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx SludgeName ; name
	tx ShadowClawDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ShadowClawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx ElderTreeName ; category
	db 33 ; Pokedex number
	db 34 ; level
	db 3, 11 ; length
	dw 66 * 10 ; weight
	tx MukDescription ; description
	db 0

SnoverCard:
	db TYPE_PKMN_GRASS ; type
	gfx SnoverCardGfx ; gfx
	tx SnoverName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw SNOVER
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx StarFreezeName ; name
	tx MayInflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GastlySleepingGasEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BLIZZARD ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx MegaDrainName ; name
	tx ButterfreesMegaDrainDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_WATER ; resistance
	tx FrostTreeName ; category
	db 34 ; Pokedex number
	db 24 ; level
	db 1, 4 ; length
	dw 6 * 10 ; weight
	tx ExeggcuteDescription ; description
	db 19

AbomasnowCard:
	db TYPE_PKMN_GRASS ; type
	gfx AbomasnowCardGfx ; gfx
	tx AbomasnowName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw ABOMASNOW
	db 90 ; hp
	db STAGE1 ; stage
	tx SnoverName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, GRASS, 1 ; energies
	tx BlizzardName ; name
	tx BlizzardDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ArticunoBlizzardEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_BLIZZARD ; animation

	; attack 2
	energy COLORLESS, 1, GRASS, 2 ; energies
	tx WoodHammerName ; name
	tx WoodHammerDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw WoodHammerEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 30
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_WATER ; resistance
	tx FrostTreeName ; category
	db 35 ; Pokedex number
	db 45 ; level
	db 6, 7 ; length
	dw 265 * 10 ; weight
	tx ExeggutorDescription ; description
	db 0

FerroseedCard:
	db TYPE_PKMN_GRASS ; type
	gfx FerroseedCardGfx ; gfx
	tx FerroseedName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw FERROSEED
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx RollingTackleName ; name
	tx TerrorStrikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokTerrorStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1, ; energies
	tx PinMissileName ; name
	tx TripleAttackX20Description ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw SandslashFurySwipesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_PSYCHIC ; resistance
	tx ThornSeedName ; category
	db 36 ; Pokedex number
	db 23 ; level
	db 2, 0 ; length
	dw 2 * 10 ; weight
	tx FerroseedDescription ; description
	db 16

FerrothornCard:
	db TYPE_PKMN_GRASS ; type
	gfx FerrothornCardGfx ; gfx
	tx FerrothornName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw FERROTHORN
	db 80 ; hp
	db STAGE1 ; stage
	tx FerroseedName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SpikesName ; name
	tx SpikesDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SOLAR_POWER ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx GaleName ; name
	tx GaleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotGaleEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON | FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_PSYCHIC ; resistance
	tx ThornPodName ; category
	db 37 ; Pokedex number
	db 57 ; level
	db 3, 11 ; length
	dw 21 * 10 ; weight
	tx FerrothornDescription ; description
	db 0

TangelaLv8Card:
	db TYPE_PKMN_GRASS ; type
	gfx TangelaLv8CardGfx ; gfx
	tx TangelaName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw TANGELA_LV8
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx VineInviteName ; name
	tx VineInviteDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw VinePullEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP ; animation

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx GrassKnotName ; name
	tx LowKickDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw LowKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx VineName ; category
	db 114 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv8Description ; description
	db 16

TangrowthCard:
	db TYPE_PKMN_GRASS ; type
	gfx TangrowthCardGfx ; gfx
	tx TangrowthName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw TANGROWTH
	db 100 ; hp
	db STAGE1 ; stage
	tx TangelaName ; pre-evo name

	; attack 2
	energy GRASS, 1 ; energies
	tx PowerWhipName ; name
	tx PowerWhipDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw ExeggutorBigEggsplosionEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_BIG_HIT ; animation

	; attack 2
	energy GRASS, 3 ; energies
	tx StickandAbsorbName ; name
	tx StickandAbsorbDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw StickandAbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_EFFECT ; animation

	db 4 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx VineName ; category
	db 114 ; Pokedex number
	db 52 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv8Description ; description
	db 0

ScytherCard:
	db TYPE_PKMN_GRASS ; type
	gfx ScytherCardGfx ; gfx
	tx ScytherName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw SCYTHER
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx HelpfulSlashName ; name
	tx HelpfulSlashDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw HelpfullSlashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx SlashName ; name
	tx DontApplyWsRsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx MantisName ; category
	db 123 ; Pokedex number
	db 25 ; level
	db 4, 11 ; length
	dw 123 * 10 ; weight
	tx ScytherDescription ; description
	db 16

ScizorCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx ScizorCardGfx ; gfx
	tx ScizorName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw SCIZOR
	db 80 ; hp
	db STAGE1 ; stage
	tx ScytherName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, FIGHTING, 1 ; energies
	tx SteelWingName ; name
	tx SteelWingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MinimizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 2, GRASS, 1 ; energies
	tx XScissorName ; name
	tx XScissorDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw XScissorEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx StagbeetleName ; category
	db 127 ; Pokedex number
	db 45 ; level
	db 4, 11 ; length
	dw 121 * 10 ; weight
	tx PinsirDescription ; description
	db 0

TepigCard:
	db TYPE_PKMN_FIRE ; type
	gfx TepigCardGfx ; gfx
	tx TepigName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw CHARMANDER
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx TackleName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx ScorchingEmbersName ; name
	tx ScorchingEmbersDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SearingFlameEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FirePigName ; category
	db 46 ; Pokedex number
	db 10 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx TepigDescription ; description
	db 21

PigniteCard:
	db TYPE_PKMN_FIRE ; type
	gfx PigniteCardGfx ; gfx
	tx PigniteName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PIGNITE
	db 80 ; hp
	db STAGE1 ; stage
	tx TepigName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, FIRE, 1 ; energies
	tx TakeDownName ; name
	tx ThunderpunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzThunderpunchEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx FlamethrowerName ; name
	tx do20ifDiscardDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw FlamethrowerYesNoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FirePigName ; category
	db 47 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx PigniteDescription ; description
	db 18

EmboarCard:
	db TYPE_PKMN_FIRE ; type
	gfx EmboarCardGfx ; gfx
	tx EmboarName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw EMBOAR
	db 120 ; hp
	db STAGE2 ; stage
	tx PigniteName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FirestarterName ; name
	tx FirestarterDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FirestarterEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIRE, 3 ; energies
	tx FlareblitzName ; name
	tx FlareblitzDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw ArcanineFlamesOfRageEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx MegaFirePigName ; category
	db 48 ; Pokedex number
	db 76 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx EmboarDescription ; description
	db 0

HoundourCard:
	db TYPE_PKMN_FIRE ; type
	gfx HoundourCardGfx ; gfx
	tx HoundourName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw HOUNDOUR
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx SmogName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MagmarSmogEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMOG ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx EntrapName ; name
	tx EntrapDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw EntrapCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_NIGHTMARE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx DarkName ; category
	db 49 ; Pokedex number
	db 11 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx HoundourDescription ; description
	db 16

HoundoomCard:
	db TYPE_PKMN_FIRE ; type
	gfx HoundoomCardGfx ; gfx
	tx HoundoomName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw HOUNDOOM
	db 70 ; hp
	db STAGE1 ; stage
	tx HoundourName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx FireFangName ; name
	tx InflictBurnDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MayBurnEffectEffectCommands ; effect commands
	db BURNED ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 2, FIRE, 1 ; energies
	tx FirePaybackName ; name
	tx FirePaybackDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw FirePaybackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_SPIN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx DarkName ; category
	db 50 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx HoundoomDescription ; description
	db 0

SizzlipedeCard:
	db TYPE_PKMN_FIRE ; type
	gfx SizzlipedeCardGfx ; gfx
	tx SizzlipedeName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw SIZZLIPEDE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx SearingFlameName ; name
	tx MayInflictBurnDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MayBurnEffectEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx RadiatorName ; category
	db 51 ; Pokedex number
	db 18 ; level
	db 2, 4 ; length
	dw 42 * 10 ; weight
	tx SizzlipedeDescription ; description
	db 19

CentiskorchCard:
	db TYPE_PKMN_FIRE ; type
	gfx CentiskorchCardGfx ; gfx
	tx CentiskorchName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw CENTISKORCH
	db 80 ; hp
	db STAGE1 ; stage
	tx SizzlipedeName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx PunishingEmbersName ; name
	tx PunishingEmbersDescripion ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PunishingEmbersEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 2
	energy FIRE, 3 ; energies
	tx BurstinginfernoName ; name
	tx BurstinginfernoDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw BurstinginfernoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_GRASS ; resistance
	tx RadiatorName ; category
	db 52 ; Pokedex number
	db 45 ; level
	db 6, 3 ; length
	dw 342 * 10 ; weight
	tx CentiskorchDescription ; description
	db 0

NumelCard:
	db TYPE_PKMN_FIRE ; type
	gfx NumelCardGfx ; gfx
	tx NumelName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw NUMEL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FetchName ; name
	tx FetchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KangaskhanFetchEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx CollectFireName ; name
	tx EnergyConversionDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw GastlyEnergyConversionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 10
	db ATK_ANIM_ENERGY_CONVERSION ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx NumbName ; category
	db 57 ; Pokedex number
	db 22 ; level
	db 2, 11 ; length
	dw 55 * 10 ; weight
	tx FlareonLv22Description ; description
	db 19

CameruptCard:
	db TYPE_PKMN_FIRE ; type
	gfx CameruptCardGfx ; gfx
	tx CameruptName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw CAMERUPT
	db 80 ; hp
	db STAGE1 ; stage
	tx NumelName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FiregiverName ; name
	tx FiregiverDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MoltresFiregiverEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIREGIVER ; animation

	; attack 2
	energy COLORLESS, 1, FIRE, 1 ; energies
	tx CinderCannonName ; name
	tx CinderCannonDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw CinderCannonEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx EruptionName ; category
	db 58 ; Pokedex number
	db 44 ; level
	db 6, 3 ; length
	dw 342 * 10 ; weight
	tx ArcanineLv34Description ; description
	db 0

DarumakaCard:
	db TYPE_PKMN_FIRE ; type
	gfx DarumakaCardGfx ; gfx
	tx DarumakaName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw DARUMAKA
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx CallForFamilyName ; name
	tx FireCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw FireCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2, FIRE, 1 ; energies
	tx FlameTailName ; name
	tx ThunderJoltDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw GnawOffEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx ZenCharmName ; category
	db 53 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx DarumakaDescription ; description
	db 16

DarmanitanCard:
	db TYPE_PKMN_FIRE ; type
	gfx DarmanitanCardGfx ; gfx
	tx DarmanitanName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw DARMANITAN
	db 90 ; hp
	db STAGE1 ; stage
	tx DarumakaName ; pre-evo name

	; attack 1
	energy COLORLESS, 2, FIRE, 1 ; energies
	tx FirePunchName ; name
	tx FirePunchDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw FirePunchEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_PUNCH ; animation

	; attack 1
	energy FIRE, 2, COLORLESS,2, ; energies
	tx CounterPunchName ; name
	tx DamageCounterDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw CounterpunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx BlazingName ; category
	db 54 ; Pokedex number
	db 53 ; level
	db 5, 7 ; length
	dw 209 * 10 ; weight
	tx DarmanitanDescription ; description
	db 0

LitleoCard:
	db TYPE_PKMN_FIRE ; type
	gfx LitleoCardGfx ; gfx
	tx LitleoName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw LITLEO
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx RoarName ; name
	tx TerrorStrikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokTerrorStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx EmberName ; name
	tx do10ifDiscardDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw EmberYesNoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx LionCubName ; category
	db 55 ; Pokedex number
	db 14 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx DarumakaDescription ; description
	db 16

PyroarCard:
	db TYPE_PKMN_FIRE ; type
	gfx PyroarCardGfx ; gfx
	tx PyroarName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw PYROAR
	db 70 ; hp
	db STAGE1 ; stage
	tx LitleoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FlareCommandName ; name
	tx FlareCommandDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FlareCommandEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GUST_OF_WIND ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx FlamethrowerName ; name
	tx do20ifDiscardDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw FlamethrowerYesNoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx RoyalName ; category
	db 56 ; Pokedex number
	db 41 ; level
	db 5, 7 ; length
	dw 209 * 10 ; weight
	tx DarmanitanDescription ; description
	db 0

FlareonLv28Card:
	db TYPE_PKMN_FIRE ; type
	gfx FlareonLv28CardGfx ; gfx
	tx FlareonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw FLAREON_LV28
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EvolutionaryFlameName ; name
	tx EvolutionaryFlameDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw EvolutionaryFlameEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_EVOLUTIONARY_FLAME ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx DestructiveFlameName ; name
	tx DestructiveFlameDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DestructiveFlameEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FlameName ; category
	db 200 ; Pokedex number
	db 38 ; level
	db 2, 11 ; length
	dw 55 * 10 ; weight
	tx FlareonLv28Description ; description
	db 0

TortunatorCard:
	db TYPE_PKMN_FIRE ; type
	gfx TortunatorCardGfx ; gfx
	tx TurtonatorName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw TORTUNATOR
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx SpitShotName ; name
	tx StretchKickDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw HitmonleeStretchKickEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2
	energy FIRE, 3 ; energies
	tx ExploJetName ; name
	tx BurstinginfernoDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw BurstinginfernoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx FlameName ; category
	db 59 ; Pokedex number
	db 45 ; level
	db 6, 7 ; length
	dw 132 * 10 ; weight
	tx MoltresLv35Description ; description
	db 0

EnteiCard:
	db TYPE_PKMN_FIRE ; type
	gfx EnteiCardGfx ; gfx
	tx EnteiName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw ENTEI
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FiregiverName ; name
	tx FiregiverDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MoltresFiregiverEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIREGIVER ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx VolcanicClawName ; name
	tx VolcanicClawDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw VolcanicClawEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx VolcanoName ; category
	db 60 ; Pokedex number
	db 87 ; level
	db 6, 7 ; length
	dw 132 * 10 ; weight
	tx MoltresLv37Description ; description
	db 0

FuecocoCard:
	db TYPE_PKMN_FIRE ; type
	gfx FuecocoCardGfx ; gfx
	tx FuecocoName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw FUECOCO
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1, ; energies
	tx TradeName ; name
	tx TradeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw TradeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation
	
	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx EmberName ; name
	tx do10ifDiscardDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw EmberYesNoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FireCrocName ; category
	db 61 ; Pokedex number
	db 12 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx FuecocoDescription ; description
	db 16

CrocalorCard:
	db TYPE_PKMN_FIRE ; type
	gfx CrocalorCardGfx ; gfx
	tx CrocalorName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw CROCALOR
	db 80 ; hp
	db STAGE1 ; stage
	tx FuecocoName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx ConfusionSong ; name
	tx FoulOdorDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GloomFoulOdorEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_ODOR ; animation
	
	; attack 2
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx FlamethrowerName ; name
	tx do20ifDiscardDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw FlamethrowerYesNoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FireCrocName ; category
	db 62 ; Pokedex number
	db 34 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx CrocalorDescription ; description
	db 16

SkeledirgeCard:
	db TYPE_PKMN_FIRE ; type
	gfx SkeledirgeCardGfx ; gfx
	tx SkeledirgeName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw SKELEDIRGE
	db 110 ; hp
	db STAGE2 ; stage
	tx CrocalorName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx VitalitySongName ; name
	tx VitalitySongDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw HealingWindEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_RECOVER ; animation
	
	; attack 2
	energy FIRE, 2, PSYCHIC, 1 ; energies
	tx KarateChopName ; name
	tx KarateChopDescription ; description
	dw NONE ; description (cont)
	db 90 ; damage
	db DAMAGE_MINUS ; category
	dw MachokeKarateChopEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx SingerName ; category
	db 63 ; Pokedex number
	db 67 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx SkeledirgeDescription ; description
	db 0

BagonCard:
	db TYPE_PKMN_FIRE ; type
	gfx BagonCardGfx ; gfx
	tx BagonName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw BAGON
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx HeadbuttName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation
	
	; attack 2
	energy FIRE, 1, WATER, 1 ; energies
	tx DraconicDreamsName ; name
	tx DraconicDreamsDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw DraconicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx RockHeadName ; category
	db 64 ; Pokedex number
	db 18 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx BagonDescription ; description
	db 16

ShelgonCard:
	db TYPE_PKMN_FIRE ; type
	gfx ShelgonCardGfx ; gfx
	tx ShelgonName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw SHELGON
	db 80 ; hp
	db STAGE1 ; stage
	tx BagonName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx ProtectChargeName ; name
	tx MetapodsStiffenDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw MetapodStiffenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation
	
	; attack 2
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx DragonbreathName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx EnduranceName ; category
	db 65 ; Pokedex number
	db 48 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx ShelgonDescription ; description
	db 18

SalamenceCard:
	db TYPE_PKMN_FIRE ; type
	gfx SalamanceCardGfx ; gfx
	tx SalamenceName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw SALAMENCE
	db 110 ; hp
	db STAGE2 ; stage
	tx ShelgonName ; pre-evo name

	; attack 1
	energy FIRE, 1, WATER, 1 ; energies
	tx ShootThroughName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_WHIRLWIND_ZIGZAG ; animation
	
	; attack 2
	energy WATER, 2, FIRE, 2 ; energies
	tx DragonRageName ; name
	tx DontApplyWsRsDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DRAGON_RAGE ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIGHTING ; resistance
	tx DragonName ; category
	db 66 ; Pokedex number
	db 77 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx SalamanceDescription ; description
	db 0

DruddigonCard:
	db TYPE_PKMN_FIRE ; type
	gfx DruddigonCardGfx ; gfx
	tx DruddigonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw DRUDDIGON
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx RevenegeName ; name
	tx TremulousFistDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw Do10MorePerInjuredPokesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation
	
	; attack 2
	energy FIRE, 1, COLORLESS, 2, ; energies
	tx DragonClawName ; name
	tx DontApplyWsRsDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx CaveName ; category
	db 67 ; Pokedex number
	db 43 ; level
	db 6, 7 ; length
	dw 132 * 10 ; weight
	tx HoundoomDescription ; description
	db 0

HoohCard:
	db TYPE_PKMN_FIRE ; type
	gfx HoohCardGfx ; gfx
	tx HoohName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw HOOH
	db 100 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1, ; energies
	tx RevivalBlessName ; name
	tx ReviveDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ReviveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx RaibowBurnName ; name
	tx RainbowBurnDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw DragonRageEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx RainbowName ; category
	db 71 ; Pokedex number
	db 93 ; level
	db 6, 7 ; length
	dw 132 * 10 ; weight
	tx HoohDescription ; description
	db 0

FroakieCard:
	db TYPE_PKMN_WATER ; type
	gfx FroakieCardGfx ; gfx
	tx FroakieName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw FROAKIE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx BubbleName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FroakieBubbleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BUBBLES ; animation

	; attack 1
	energy WATER, 1, ; energies
	tx WaterDripName ; name
	tx WaterDripDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw WaterDripEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx BubbleFrogName ; category
	db 72 ; Pokedex number
	db 10 ; level
	db 1, 8 ; length
	dw 20 * 10 ; weight
	tx FroakieDescription ; description
	db 21

WartortleCard:
	db TYPE_PKMN_WATER ; type
	gfx WartortleCardGfx ; gfx
	tx WartortleName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw WARTORTLE
	db 70 ; hp
	db STAGE1 ; stage
	tx FroakieName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx WaterDuplicateName ; name
	tx WaterDuplicateDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw WaterDuplicateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1 ; energies
	tx WaterSplashName ; name
	tx WaterSplashDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw WaterSplashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_GUN ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx BubbleFrogName ; category
	db 73 ; Pokedex number
	db 24 ; level
	db 3, 3 ; length
	dw 50 * 10 ; weight
	tx WartortleDescription ; description
	db 18

GreninjaCard:
	db TYPE_PKMN_WATER ; type
	gfx GreninjaCardGfx ; gfx
	tx GreninjaName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw GRENINJA
	db 90 ; hp
	db STAGE2 ; stage
	tx WartortleName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RainDanceName ; name
	tx RainDanceDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BlastoiseRainDanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1, ; energies
	tx CoordinatedShurikenName ; name
	tx CoordinatedShurikenDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw CoordinatedShurikenEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WHIRLPOOL ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx NinjaName; category
	db 74 ; Pokedex number
	db 52 ; level
	db 5, 3 ; length
	dw 189 * 10 ; weight
	tx GreninjaDescription ; description
	db 0

BuizelCard:
	db TYPE_PKMN_WATER ; type
	gfx BuizelCardGfx ; gfx
	tx BuizelName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw BUIZEL
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PushAsideName ; name
	tx TerrorStrikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokTerrorStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 1
	energy COLORLESS, 1, WATER, 1 ; energies
	tx AgilityName ; name
	tx RapidashsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK | FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx SeaWeaselName ; category
	db 75 ; Pokedex number
	db 15 ; level
	db 2, 7 ; length
	dw 43 * 10 ; weight
	tx BuizelDescription ; description
	db 19

FloatzelCard:
	db TYPE_PKMN_WATER ; type
	gfx FloatzelCardGfx ; gfx
	tx FloatzelName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw FLOATZEL
	db 70 ; hp
	db STAGE1 ; stage
	tx BuizelName ; pre-evo name

	; attack 1
	energy WATER, 1, ; energies
	tx AquaticRescueName ; name
	tx SuperRodDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AquaticRescueEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_WHIRLPOOL ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1, ; energies
	tx AquaJetName ; name
	tx AquaJetDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw AquaJetEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_WATER_JETS ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_WATER ; resistance
	tx SeaWeaselName ; category
	db 76 ; Pokedex number
	db 37 ; level
	db 5, 7 ; length
	dw 169 * 10 ; weight
	tx FloatzelDescription ; description
	db 0

BruxishCard:
	db TYPE_PKMN_WATER ; type
	gfx BruxishCardGfx ; gfx
	tx BruxishName ; name
	db DIAMOND ; rarity
	db LABORATORY | PRO ; sets
	dw BRUXISH
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx ConfuseRayName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1, ; energies
	tx PsychicFangsName ; name
	tx PsychicFangsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw PsychicFangsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx DopeyName ; category
	db 79 ; Pokedex number
	db 29 ; level
	db 3, 11 ; length
	dw 79 * 10 ; weight
	tx BruxishDescription ; description
	db 0

TympoleCard:
	db TYPE_PKMN_WATER ; type
	gfx TympoleCardGfx ; gfx
	tx TympoleName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw TYMPOLE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx BubbleName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FroakieBubbleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BUBBLES ; animation

	; attack 2
	energy FIGHTING, 1 ; energies
	tx FlailName ; name
	tx MagikarpsFlailDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw FlailEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx TadpoleName ; category
	db 77 ; Pokedex number
	db 13 ; level
	db 2, 0 ; length
	dw 27 * 10 ; weight
	tx PoliwagDescription ; description
	db 19

PalpitoadCard:
	db TYPE_PKMN_WATER ; type
	gfx PalpitoadCardGfx ; gfx
	tx PalpitoadName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw PALPITOAD
	db 70 ; hp
	db STAGE1 ; stage
	tx TympoleName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, WATER, 1 ; energies
	tx RageName ; name
	tx FlareonsRageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw RageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx DigName ; name
	tx EarthquakeDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DugtrioEarthquakeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx VibrationName ; category
	db 78 ; Pokedex number
	db 28 ; level
	db 3, 4 ; length
	dw 44 * 10 ; weight
	tx PoliwhirlsDescription ; description
	db 16

SeismitoadCard:
	db TYPE_PKMN_WATER ; type
	gfx SeismitoadCardGfx ; gfx
	tx SeismitoadName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SEISMITOAD
	db 110 ; hp
	db STAGE2 ; stage
	tx PalpitoadName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx QuakingPunchName ; name
	tx HeadacheDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw BUIZELHeadacheEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 2 ; energies
	tx TremulousFistName ; name
	tx TremulousFistDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw Do10MorePerInjuredPokesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx VibrationName ; category
	db 79 ; Pokedex number
	db 68 ; level
	db 4, 3 ; length
	dw 119 * 10 ; weight
	tx PoliwrathDescription ; description
	db 0

SeelCard:
	db TYPE_PKMN_WATER ; type
	gfx SeelCardGfx ; gfx
	tx SeelName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SEEL
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx HeadbuttName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1 ; energies
	tx FriendshipSongName ; name
	tx FriendshipSongDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw JigglypuffFriendshipSongEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx SeaLionName ; category
	db 82 ; Pokedex number
	db 12 ; level
	db 3, 7 ; length
	dw 198 * 10 ; weight
	tx SeelDescription ; description
	db 16

DewgongCard:
	db TYPE_PKMN_WATER ; type
	gfx DewgongCardGfx ; gfx
	tx DewgongName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw DEWGONG
	db 80 ; hp
	db STAGE1 ; stage
	tx SeelName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx FindIceName ; name
	tx FindIceDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw Add2WaterEnergyFromDeckEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx IcePillarName ; name
	tx IcePillarDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PillarEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_WATER ; resistance
	tx SeaLionName ; category
	db 83 ; Pokedex number
	db 42 ; level
	db 5, 7 ; length
	dw 265 * 10 ; weight
	tx DewgongDescription ; description
	db 0

WingullCard:
	db TYPE_PKMN_WATER ; type
	gfx WingullCardGfx ; gfx
	tx WingullName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw WINGULL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx FetchName ; name
	tx FetchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KangaskhanFetchEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx AgilityName ; name
	tx RapidashsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK | FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx SeagullName ; category
	db 84 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 9 * 10 ; weight
	tx ShellderDescription ; description
	db 19

PelipperCard:
	db TYPE_PKMN_WATER ; type
	gfx PelipperCardGfx ; gfx
	tx CloysterName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw PELIPPER
	db 80 ; hp
	db STAGE1 ; stage
	tx WingullName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx HealingWindName ; name
	tx HealingWindDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DragoniteHealingWindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HEALING_WIND ; animation

	; attack 2
	energy COLORLESS, 1, WATER, 1, ; energies
	tx AquaWindName ; name
	tx AquaWindDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AquaWindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx WaterBirdName ; category
	db 85 ; Pokedex number
	db 35 ; level
	db 4, 11 ; length
	dw 292 * 10 ; weight
	tx CloysterDescription ; description
	db 0

ClauncherCard:
	db TYPE_PKMN_WATER ; type
	gfx ClauncherCardGfx ; gfx
	tx ClauncherName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw CLAUNCHER
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx LockOnName ; name
	tx VictreebelsAcidDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw VictreebelAcidEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_BEAM ; animation

	; attack 2
	energy WATER, 1 ; energies
	tx WaterGunName ; name
	tx PoliwagsWaterGunDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw PoliwagWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIRE ; resistance
	tx WaterGunName ; category
	db 86 ; Pokedex number
	db 20 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx ClauncherDescription ; description
	db 16

ClawitzerCard:
	db TYPE_PKMN_WATER ; type
	gfx ClawitzerCardGfx ; gfx
	tx ClawitzerName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw CLAWITZER
	db 80 ; hp
	db STAGE1 ; stage
	tx ClauncherName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx SaltWaterName ; name
	tx SaltWaterDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SaltWaterEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx SharpshootingName ; name
	tx SharpshootingDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw SharpshootingEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_HYDRO_PUMP ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIRE ; resistance
	tx HowlitzerName ; category
	db 87 ; Pokedex number
	db 47 ; level
	db 4, 3 ; length
	dw 132 * 10 ; weight
	tx ClawitzerDescription ; description
	db 0

HorseaCard:
	db TYPE_PKMN_WATER ; type
	gfx HorseaCardGfx ; gfx
	tx HorseaName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw HORSEA
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 1 ; energies
	tx SmokescreenName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw HorseaSmokescreenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 88 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 18 * 10 ; weight
	tx HorseaDescription ; description
	db 19

SeadraCard:
	db TYPE_PKMN_WATER ; type
	gfx SeadraCardGfx ; gfx
	tx SeadraName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw SEADRA
	db 70 ; hp
	db STAGE1 ; stage
	tx HorseaName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx WaterArrowName ; name
	tx StretchKickDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw HitmonleeStretchKickEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_WATER_GUN ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 2 ; energies
	tx RapidsName ; name
	tx RapidsDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw HyperBeam50EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLPOOL ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIRE ; resistance
	tx DragonName ; category
	db 89 ; Pokedex number
	db 33 ; level
	db 3, 1 ; length
	dw 55 * 10 ; weight
	tx SeadraDescription ; description
	db 19

KingdraCard:
	db TYPE_PKMN_WATER ; type
	gfx KingdraGfx ; gfx
	tx KingdraName ; name
	db STAR ; rarity
	db EVOLUTION |	NONE ; sets
	dw KINGDRA
	db 100 ; hp
	db STAGE2 ; stage
	tx SeadraName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx DragonTornadoName ; name
	tx DragonTornadoDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw RhydonRamEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_WHIRLPOOL ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx HydroPumpName ; name
	tx HydroPumpDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw VaporeonHydroPumpEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYDRO_PUMP ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_WATER ; resistance
	tx DragonName ; category
	db 90 ; Pokedex number
	db 55 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx NinetalesLv35Description ; description
	db 0

GoldeenCard:
	db TYPE_PKMN_WATER ; type
	gfx GoldeenCardGfx ; gfx
	tx GoldeenName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw GOLDEEN
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx FlailName ; name
	tx FlareonsRageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw RageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 1, WATER, 1 ; energies
	tx SwarmtheWoundName ; name
	tx JynxsMeditateDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MeditateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx HostileName ; category
	db 91 ; Pokedex number
	db 32 ; level
	db 2, 0 ; length
	dw 33 * 10 ; weight
	tx GoldeenDescription ; description
	db 21

SeakingCard:
	db TYPE_PKMN_WATER ; type
	gfx SeakingCardGfx ; gfx
	tx SeakingName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw SEAKING
	db 70 ; hp
	db STAGE1 ; stage
	tx GoldeenName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx FlailName ; name
	tx FlareonsRageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw RageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1, PSYCHIC, 1 ; energies
	tx LastRespectsName ; name
	tx LastRespectsDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw LastRespectsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_JETS ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BigFishName ; category
	db 92 ; Pokedex number
	db 58 ; level
	db 4, 3 ; length
	dw 86 * 10 ; weight
	tx SeakingDescription ; description
	db 0

DewpiderCard:
	db TYPE_PKMN_WATER ; type
	gfx DewpiderCardGfx ; gfx
	tx DewpiderName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw DEWPIDER
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx BubbleName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FroakieBubbleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BUBBLES ; animation

	; attack 2
	energy WATER, 2 ; energies
	tx StikcyWedName ; name
	tx StickyWebDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw IncreaseRetreatCostCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx WaterBubbleName ; category
	db 93 ; Pokedex number
	db 15 ; level
	db 2, 7 ; length
	dw 76 * 10 ; weight
	tx DewpiderDescription ; description
	db 16

AraquanidCard:
	db TYPE_PKMN_WATER ; type
	gfx AraquanidCardGfx ; gfx
	tx AraquanidName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ARAQUANID
	db 70 ; hp
	db STAGE1 ; stage
	tx DewpiderName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx HydroDrainName ; name
	tx HydroDrainDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw HydroDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx LiquidationName ; name
	tx LiquidationDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw GyaradosBubblebeamEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BUBBLES ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx WaterBubbleName ; category
	db 94 ; Pokedex number
	db 38 ; level
	db 3, 7 ; length
	dw 176 * 10 ; weight
	tx AraquanidDescription ; description
	db 0

ChewtleCard:
	db TYPE_PKMN_WATER ; type
	gfx ChewtleCardGfx ; gfx
	tx ChewtleName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw CHEWTLE
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx CallForFamilyName ; name
	tx KrabbysCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw WaterCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 2, WATER, 1 ; energies
	tx FlameTailName ; name
	tx ThunderJoltDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuThunderJoltEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx SnappingName ; category
	db 97 ; Pokedex number
	db 25 ; level
	db 8, 2 ; length
	dw 485 * 10 ; weight
	tx LaprasDescription ; description
	db 16

DrednawCard:
	db TYPE_PKMN_WATER ; type
	gfx DrednawCardGfx ; gfx
	tx DrednawName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw DREDNAW
	db 100 ; hp
	db STAGE1 ; stage
	tx ChewtleName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx ViseBiteName ; name
	tx ViseBiteDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ViseBiteEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 2
	energy COLORLESS, 2, FIGHTING, 2, ; energies
	tx JawLockName ; name
	tx JawLockDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw JawLockEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_RAMPAGE ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx BiteName ; category
	db 98 ; Pokedex number
	db 59 ; level
	db 3, 3 ; length
	dw 64 * 10 ; weight
	tx VaporeonLv29Description ; description
	db 0

VaporeonLv42Card:
	db TYPE_PKMN_WATER ; type
	gfx VaporeonLv42CardGfx ; gfx
	tx VaporeonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw VAPOREON_LV42
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SwirlName ; name
	tx SwirlDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SwirlEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_PKMN_POWER_1 ; animation
	
	; attack 2
	energy WATER, 3 ; energies
	tx HydroPumpName ; name
	tx HydroPumpDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw VaporeonHydroPumpEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYDRO_PUMP ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIRE ; resistance
	tx BubbleJetName ; category
	db 201 ; Pokedex number
	db 42 ; level
	db 3, 3 ; length
	dw 64 * 10 ; weight
	tx VaporeonLv42Description ; description
	db 0

OmanyteCard:
	db TYPE_PKMN_WATER ; type
	gfx OmanyteCardGfx ; gfx
	tx OmanyteName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw OMANYTE
	db 60 ; hp
	db STAGE1 ; stage
	tx MysteriousFossilName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ClairvoyanceName ; name
	tx ClairvoyanceDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx FastEvolutionName ; name
	tx FastEvolutionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw EvolutionPkmnSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx SpiralName ; category
	db 99 ; Pokedex number
	db 29 ; level
	db 1, 4 ; length
	dw 17 * 10 ; weight
	tx OmanyteDescription ; description
	db 17

OmastarCard:
	db TYPE_PKMN_WATER ; type
	gfx OmastarCardGfx ; gfx
	tx OmastarName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw OMASTAR
	db 110 ; hp
	db STAGE2 ; stage
	tx OmanyteName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PrimalGuidanceName ; name
	tx PrimalGuidanceDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ShinyFeatherEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx TimeSpiralName ; name
	tx TimeStreamDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw TimeStreamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLPOOL ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx SpiralName ; category
	db 100 ; Pokedex number
	db 62 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx OmastarDescription ; description
	db 0

RelicanthCard:
	db TYPE_PKMN_WATER ; type
	gfx RelicanthCardGfx ; gfx
	tx RelicanthName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw RELICANTH
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FossilSearchName ; name
	tx FossilSearchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw Add2FossilsFromDeckEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx AmnesiaName ; name
	tx PoliwhirlsAmnesiaDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AmnesiaEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_AMNESIA ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx LongevityName ; category
	db 101 ; Pokedex number
	db 35 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx ArticunoLv35Description ; description
	db 0

SuicuneCard:
	db TYPE_PKMN_WATER ; type
	gfx SuicuneCardGfx ; gfx
	tx SuicuneName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw SUICUNE
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx QuickfreezeName ; name
	tx QuickfreezeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw EvolutionaryFlameEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx CrystalStreamName ; name
	tx CrystalStreamDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw CrystalStreamEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx FreezeName ; category
	db 144 ; Pokedex number
	db 37 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx SuicuneDescription ; description
	db 0

BlitzleCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx BlitzleCardGfx ; gfx
	tx BlitzleName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw BLITZLE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx SparkName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ElectrifiedName ; category
	db 103 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx BlitzleDescription ; description
	db 19

ZebstrikaCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZebstrikaCardGfx ; gfx
	tx ZebstrikaName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ZEBSTRIKA
	db 70 ; hp
	db STAGE1 ; stage
	tx BlitzleName ; pre-evo name

	; attack 1
	energy COLORLESS, 0 ; energies
	tx SprintName ; name
	tx SprintDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SprintEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx BurstofLightningName ; name
	tx AquaStreamDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw AquaStreamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERBOLT; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_GRASS ; resistance
	tx ThunderboltName ; category
	db 104 ; Pokedex number
	db 40 ; level
	db 2, 7 ; length
	dw 66 * 10 ; weight
	tx ZebstrikaDescription ; description
	db 0

HelioptileCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx HelioptileCardGfx ; gfx
	tx HelioptileName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw HELIOPTILE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx TackleName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy LIGHTNING, 1 ; energies
	tx FriendshipSongName ; name
	tx FriendshipSongDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw JigglypuffFriendshipSongEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx GeneratorName ; category
	db 105 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx HelioptileDescription ; description
	db 16

HelioliskCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx HelioliskCardGfx ; gfx
	tx HelioliskName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw HELIOLISK
	db 70 ; hp
	db STAGE1 ; stage
	tx HelioptileName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx DrawChainName ; name
	tx DrawChainDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DrawChainEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx DischargeName ; name
	tx DischargeDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DischargeYesNoEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDER ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx GeneratorName ; category
	db 106 ; Pokedex number
	db 45 ; level
	db 2, 7 ; length
	dw 66 * 10 ; weight
	tx HelioliskDescription ; description
	db 0

PincurchinCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx PincurchinCardGfx ; gfx
	tx PincurchinName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw PINCURCHIN
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx StunNeedleName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw JolteonStunNeedleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy LIGHTNING, 2 ; energies
	tx WailName ; name
	tx WailDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MarowakWailEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_CRY ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SeaUrchinName ; category
	db 107 ; Pokedex number
	db 36 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PincurchinDescription ; description
	db 0

ShinxCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ShinxCardGfx ; gfx
	tx ShinxName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SHINX
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx RoarName ; name
	tx TerrorStrikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokTerrorStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy LIGHTNING, 2 ; energies
	tx SparkName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx FlashName ; category
	db 108 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx ShinxDescription ; description
	db 16

LuxioCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx LuxioCardGfx ; gfx
	tx LuxioName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw LUXIO
	db 70 ; hp
	db STAGE1 ; stage
	tx ShinxName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, LIGHTNING, 1 ; energies
	tx ThunderFangName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx EnergyRaidName ; name
	tx EnergyRaidDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw EnergyRaidEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDERSHOCK; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx SparkName ; category
	db 109 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx LuxioDescription ; description
	db 16

LuxrayCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx LuxrayCardGfx ; gfx
	tx LuxrayName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw LUXRAY
	db 100 ; hp
	db STAGE2 ; stage
	tx LuxioName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StepInName ; name
	tx StepInDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DragoniteStepInEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx EnergyCrushName ; name
	tx EnergyCrushDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw EnergyCrushEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx GleamEyesName ; category
	db 110 ; Pokedex number
	db 53 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx LuxrayDescription ; description
	db 0

EmolgaCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx EmolgaCardGfx ; gfx
	tx EmolgaName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw EMOLGA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx CallForFamilyName ; name
	tx LightningCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LightningCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx NuzzleName ; name
	tx NuzzleDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NuzzleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	db 0 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIGHTING ; resistance
	tx SkySquirrelName ; category
	db 111 ; Pokedex number
	db 34 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx EmolgaDescription ; description
	db 0

MagnemiteLv13Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnemiteLv13CardGfx ; gfx
	tx MagnemiteName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGNEMITE_LV13
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx MetalSoundName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SONICBOOM ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx MagnetismName ; name
	tx MagnetismDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw MagnetismEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 40
	db ATK_ANIM_THUNDER_WAVE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx MagnetName ; category
	db 112 ; Pokedex number
	db 13 ; level
	db 1, 0 ; length
	dw 13 * 10 ; weight
	tx MagnemiteLv13Description ; description
	db 19

MagnetonLv28Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnetonLv28CardGfx ; gfx
	tx MagnetonName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGNETON_LV28
	db 70 ; hp
	db STAGE1 ; stage
	tx MagnemiteName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx ThunderWaveName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonThunderWaveEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx MagneticReleaseName ; name
	tx PsychicDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw MewtwoPsychicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx MagnetName ; category
	db 113 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 132 * 10 ; weight
	tx MagnetonLv28Description ; description
	db 16

MagnezoneCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnezoneCardGfx ; gfx
	tx MagnezoneName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGNEZONE
	db 110 ; hp
	db STAGE2 ; stage
	tx MagnetonName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MagneticCircuitName ; name
	tx MagneticCircuitDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MagnetPulseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy LIGHTNING, 3, ; energies
	tx MagneticBombName ; name
	tx MagneticBombDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw MagneticBombEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx MagnetName ; category
	db 114 ; Pokedex number
	db 55 ; level
	db 3, 3 ; length
	dw 132 * 10 ; weight
	tx MagnetonLv35Description ; description
	db 0

ToxelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ToxelCardGfx ; gfx
	tx ToxelName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw TOXEL
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx ThunderWaveName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	; attack 2
	energy DARKNESS, 1 ; energies
	tx AcidName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw WeedlePoisonStingEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GOO ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx BabyName ; category
	db 115 ; Pokedex number
	db 10 ; level
	db 1, 8 ; length
	dw 23 * 10 ; weight
	tx ToxelDescription ; description
	db 21

ToxtricityLv35Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ToxtricityLv35CardGfx ; gfx
	tx ToxtricityName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw TOXTRICITY
	db 70 ; hp
	db STAGE1 ; stage
	tx ToxelName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1, ; energies
	tx PunkRockName ; name
	tx PunkRockDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PunkRockEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_PARALYSIS; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SUPERSONIC ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx PunkName ; category
	db 116 ; Pokedex number
	db 42 ; level
	db 3, 11 ; length
	dw 147 * 10 ; weight
	tx ToxtricityLv35Description ; description
	db 0

ToxtricityLv42Card:
	db TYPE_PKMN_DARKNESS ; type
	gfx ToxtricityLv42CardGfx ; gfx
	tx ToxtricityName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw TOXTRICITY_LOW
	db 70 ; hp
	db STAGE1 ; stage
	tx ToxelName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx ThunderpunchName ; name
	tx ThunderpunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzThunderpunchEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERPUNCH ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1, ; energies
	tx LoudMixName ; name
	tx ElectricalRiotDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw RiotEffectCommands ; effect commands
	db NONE; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx PunkName ; category
	db 116 ; Pokedex number
	db 46 ; level
	db 3, 11 ; length
	dw 147 * 10 ; weight
	tx ToxtricityLv42Description ; description
	db 0

ElectrikeCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectrikeCardGfx ; gfx
	tx ElectrikeName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw ELECTRIKE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx FetchName ; name
	tx FetchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KangaskhanFetchEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1, LIGHTNING, 1 ; energies
	tx ThunderFangName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx LightningName ; category
	db 118 ; Pokedex number
	db 20 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElectabuzzLv20Description ; description
	db 16

ManectricCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ManectricCardGfx ; gfx
	tx ManectricName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MANECTRIC
	db 70 ; hp
	db STAGE1 ; stage
	tx ElectrikeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SwitchCurrentname ; name
	tx SwitchCurrentdescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SOLAR_POWER ; animation

	; attack 1
	energy LIGHTNING, 3 ; energies
	tx DisconnectName ; name
	tx HeadacheDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw BUIZELHeadacheEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_THUNDERBOLT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx DischargeName ; category
	db 119 ; Pokedex number
	db 44 ; level
	db 2, 7 ; length
	dw 54 * 10 ; weight
	tx JolteonLv24Description ; description
	db 0

WattrelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx WattrelCardGfx ; gfx
	tx WattrelName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw WATTREL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1, ; energies
	tx ElectromagneticSonarName ; name
	tx RecycleDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw RecycleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation
	
	; attack 2
	energy LIGHTNING, 2, COLORLESS, 2, ; energies
	tx DischargeName ; name
	tx TerasparkDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw TeraSparkEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSTORM ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx ElectronName ; category
	db 125 ; Pokedex number
	db 17 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv64Description ; description
	db 0

KilowattrelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx KilowattrelCardGfx ; gfx
	tx KilowattrelName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw KILOWATTREL
	db 70 ; hp
	db STAGE1 ; stage
	tx WattrelName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ThickSkinnedName ; name
	tx ThickSkinnedDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SnorlaxThickSkinnedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx BodySlamName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SnorlaxBodySlamEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 206 ; Pokedex number
	db 42 ; level
	db 6, 11 ; length
	dw 1014 * 10 ; weight
	tx SnorlaxDescription ; description
	db 0

JolteonLv29Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx JolteonLv29CardGfx ; gfx
	tx JolteonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw JOLTEON_LV29
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EvolutionaryThunderName ; name
	tx SneakAttackDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SnapEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy LIGHTNING, 3 ; energies
	tx FollowUpBoltName ; name
	tx JynxsMeditateDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw MeditateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERBOLT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_WATER ; resistance
	tx LightningName ; category
	db 202 ; Pokedex number
	db 49 ; level
	db 2, 7 ; length
	dw 54 * 10 ; weight
	tx JolteonLv29Description ; description
	db 0

GrubbinCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx GrubbinCardGfx ; gfx
	tx GrubbinName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw GRUBBIN
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx IronGripName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PinsirIronGripEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx LarvaName ; category
	db 40 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv12Description ; description
	db 16

CharjabugCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx CharjabugCardGfx ; gfx
	tx CharjabugName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw CHARJABUG
	db 70 ; hp
	db STAGE1 ; stage
	tx GrubbinName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 2 ; energies
	tx MagneticStormName ; name
	tx GigashockDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw CoordinatedShurikenEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx BatteryName ; category
	db 41 ; Pokedex number
	db 25 ; level
	db 1, 0 ; length
	dw 13 * 10 ; weight
	tx MagnemiteLv15Description ; description
	db 19

VikavoltCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx VikavoltCardGfx ; gfx
	tx VikavoltName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw VIKAVOLT
	db 100 ; hp
	db STAGE2 ; stage
	tx CharjabugName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx UTurnName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 4 ; energies
	tx ElectroCannonName ; name
	tx ThunderboltDescription ; description
	dw NONE ; description (cont)
	db 120 ; damage
	db DAMAGE_NORMAL ; category
	dw ZapCannonEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 9
	db ATK_ANIM_THUNDERBOLT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx StagbeetleName ; category
	db 42 ; Pokedex number
	db 40 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv40Description ; description
	db 0

ZeraoraCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZeraoraCardGfx ; gfx
	tx ZeraoraName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ZERAORA
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1, ; energies
	tx EnergyAbsorptionName ; name
	tx EnergyAbsorptionDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MewtwoAltLV60EnergyAbsorptionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 3 ; energies
	tx PlasmafName ; name
	tx PlasmaFistDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw PlasmaFistEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 9
	db ATK_ANIM_THUNDERPUNCH ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ThunderclapName ; category
	db 120 ; Pokedex number
	db 74 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv64Description ; description
	db 0

RaikouCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx RaikouCardGfx ; gfx
	tx RaikouName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw RAIKOU
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PealOfThunderName ; name
	tx PealOfThunderDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ZapdosPealOfThunderEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PEAL_OF_THUNDER ; animation

	; attack 2
	energy LIGHTNING, 3 ; energies
	tx LightningSparkName ; name
	tx LightningSparkDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw LightningSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx ElectricName ; category
	db 145 ; Pokedex number
	db 68 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv68Description ; description
	db 0

TynamoCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx TynamoCardGfx ; gfx
	tx TynamoName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw TYNAMO
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx CowardiceName ; name
	tx CowardiceDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw TentacoolCowardiceEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx ThundershockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	db 0 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx EleFishName ; category
	db 122 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx TynamoDescription ; description
	db 19

EelektrikCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx EelektrikCardGfx ; gfx
	tx EelektrikName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw EELEKTRIK
	db 80 ; hp
	db STAGE1 ; stage
	tx TynamoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx AdHocShockName ; name
	tx QuickfreezeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ArticunoQuickfreezeEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation
	
	; attack 2
	energy LIGHTNING, 2, ; energies
	tx SuctionHealName ; name
	tx SuctionHealDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SuctionHealCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx EleFishName ; category
	db 123 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx BlitzleDescription ; description
	db 19

EelektrossCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx EelektrossCardGfx ; gfx
	tx EelektrossName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw EELEKTROSS
	db 110 ; hp
	db STAGE2 ; stage
	tx EelektrikName ; pre-evo name

	; attack 1
	energy LIGHTNING, 2, ; energies
	tx SuctionHealName ; name
	tx SuctionHealDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SuctionHealCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy LIGHTNING, 3, ; energies
	tx ElectricalRendName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERBOLT ; animation

	db 3 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx EleFishName ; category
	db 124 ; Pokedex number
	db 52 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx BlitzleDescription ; description
	db 0

SandshrewCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandshrewCardGfx ; gfx
	tx MeowthName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SANDSHREW
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PayDayName ; name
	tx PayDayDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MeowthPayDayEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx BarrierName ; name
	tx ThunderpunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzThunderpunchEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx ScratchCatName ; category
	db 126 ; Pokedex number
	db 12 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx SandshrewDescription ; description
	db 19

SandslashCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandslashCardGfx ; gfx
	tx SandslashName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw SANDSLASH
	db 70 ; hp
	db STAGE1 ; stage
	tx MeowthName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx ShareLootName ; name
	tx ShareLootDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ShareLootEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_HIT ; animation

	energy COLORLESS, 1, FIGHTING, 2 ; energies
	tx TreasureRushName ; name
	tx TreasureRushDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw TreasureRushEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx VikingName ; category
	db 127 ; Pokedex number
	db 33 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx SandslashDescription ; description
	db 0

SilicobraCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SilicobraCardGfx ; gfx
	tx SilicobraName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SILICOBRA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx SandTombName ; name
	tx StickyWebDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw IncreaseRetreatCostCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 2
	energy COLORLESS, 1, FIGHTING, 1 ; energies
	tx DredgeUpName ; name
	tx DredgeUpDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw DredgeUpEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx SandSnakeName ; category
	db 128 ; Pokedex number
	db 18 ; level
	db 0, 8 ; length
	dw 2 * 10 ; weight
	tx DiglettDescription ; description
	db 19

SandacondaCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandacondaCardGfx ; gfx
	tx SandacondaName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw SANDACONDA
	db 80 ; hp
	db STAGE1 ; stage
	tx SilicobraName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SandPitName ; name
	tx SandPitDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SOLAR_POWER ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx BigSandCannonName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SandshrewSandAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx SandSnakeName ; category
	db 129 ; Pokedex number
	db 36 ; level
	db 2, 4 ; length
	dw 73 * 10 ; weight
	tx DugtrioDescription ; description
	db 0

SandileCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandileCardGfx ; gfx
	tx SandileName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SANDILE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx MudSlapName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SandshrewSandAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx DesertCrocName ; category
	db 132 ; Pokedex number
	db 20 ; level
	db 2, 7 ; length
	dw 43 * 10 ; weight
	tx MachopDescription ; description
	db 21

KrokorokCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KrokorokCardGfx ; gfx
	tx KrokorokName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw KROKOROK
	db 80 ; hp
	db STAGE1 ; stage
	tx SandileName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx TormentName ; name
	tx PoliwhirlsAmnesiaDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AmnesiaEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_AMNESIA ; animation

	; attack 2
	energy COLORLESS, 1, FIGHTING, 2 ; energies
	tx DredgeUpName ; name
	tx DredgeUpDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DredgeUpEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_PSYCHIC ; resistance
	tx DesertCrocName ; category
	db 133 ; Pokedex number
	db 40 ; level
	db 4, 11 ; length
	dw 155 * 10 ; weight
	tx MachokeDescription ; description
	db 16

KrookodileCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KrookodileCardGfx ; gfx
	tx KrookodileName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw KROOKODILE
	db 110 ; hp
	db STAGE2 ; stage
	tx KrokorokName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StrikesBackName ; name
	tx StrikesBackDescription ; description
	tx StrikesBackDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MachampStrikesBackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx ObsidianFangsName ; name
	tx JynxsMeditateDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw MeditateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_PSYCHIC ; resistance
	tx IntimidationName ; category
	db 134 ; Pokedex number
	db 67 ; level
	db 5, 3 ; length
	dw 287 * 10 ; weight
	tx MachampDescription ; description
	db 0

TrapinchCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx TrapinchCardGfx ; gfx
	tx TrapinchName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw TRAPINCH
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx HornHazardName ; name
	tx MayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NidoranMHornHazardEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx DigName ; name
	tx EarthquakeDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw DugtrioEarthquakeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx AntPitName ; category
	db 135 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 44 * 10 ; weight
	tx GeodudeDescription ; description
	db 19

VibravaCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx VibravaCardGfx ; gfx
	tx VibravaName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw VIBRAVA
	db 70 ; hp
	db STAGE1 ; stage
	tx TrapinchName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx DragonbreathName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx HyperBeamName ; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw FLOATZELHyperBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HYPER_BEAM ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx VibrationName ; category
	db 136 ; Pokedex number
	db 35 ; level
	db 3, 3 ; length
	dw 232 * 10 ; weight
	tx GravelerDescription ; description
	db 16

FlygonCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx FlygonCardGfx ; gfx
	tx FlygonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw FLYGON
	db 100 ; hp
	db STAGE2 ; stage
	tx VibravaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx IrritatingBuzzName ; name
	tx IrritatingBuzzDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw IrritatingBuzzEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 1, FIGHTING, 2 ; energies
	tx DustyPillarName ; name
	tx DustyPillarDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw GrassKnotEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx MysticName ; category
	db 137 ; Pokedex number
	db 56 ; level
	db 4, 7 ; length
	dw 662 * 10 ; weight
	tx GolemDescription ; description
	db 0

HawluchaCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HawluchaCardGfx ; gfx
	tx HawluchaName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw HAWLUCHA
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx MixUpName ; name
	tx PayDayDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MeowthPayDayEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 3 ; energies
	tx SkyDropName ; name
	tx SkyDropDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_MINUS ; category
	dw SkyDropEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx WrestlingName ; category
	db 138 ; Pokedex number
	db 42 ; level
	db 28, 10 ; length
	dw 463 * 10 ; weight
	tx OnixDescription ; description
	db 0

LarvitarCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx LarvitarCardGfx ; gfx
	tx LarvitarName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw LARVITAR
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MountainEaterName ; name
	tx MountainEaterDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw MountainEaterEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx RockThrowName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx RockSkinName ; category
	db 139 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx CuboneDescription ; description
	db 19

PupitarCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx PupitarCardGfx ; gfx
	tx PupitarName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw PUPITAR
	db 70 ; hp
	db STAGE1 ; stage
	tx LarvitarName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx RageName ; name
	tx FlareonsRageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw RageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx ExplosiveEvolutionName ; name
	tx ExplosiveEvolutionDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw Exp_EvolutionEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx HardShellName ; category
	db 140 ; Pokedex number
	db 32 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv32Description ; description
	db 16

TyranitarCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx TyranitarCardGfx ; gfx
	tx TyranitarName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw TYRANITAR
	db 120 ; hp
	db STAGE2 ; stage
	tx PupitarName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx SandCrushName ; name
	tx SandCrushDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SandCrushEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 3, COLORLESS, 1 ; energies
	tx MountainClashName ; name
	tx MountainClashDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MountainClashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSTORM ; animation

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx ArmorName ; category
	db 141 ; Pokedex number
	db 64 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv26Description ; description
	db 0

HitmonleeCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HitmonleeCardGfx ; gfx
	tx HitmonleeName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw HITMONLEE
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx StretchKickName ; name
	tx StretchKickDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw HitmonleeStretchKickEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_STRETCH_KICK ; animation

	; attack 2
	energy FIGHTING, 3 ; energies
	tx HighJumpKickName ; name
	tx HighJumpKickDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw HighJumpKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx KickingName ; category
	db 142 ; Pokedex number
	db 30 ; level
	db 4, 11 ; length
	dw 110 * 10 ; weight
	tx HitmonleeDescription ; description
	db 0

HitmonchanCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HitmonchanCardGfx ; gfx
	tx HitmonchanName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw HITMONCHAN
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx JabName ; name
	tx MachPunchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MachPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx SpecialPunchName ; name
	tx SpecialPunchDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw SpecialPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx PunchingName ; category
	db 143 ; Pokedex number
	db 33 ; level
	db 4, 7 ; length
	dw 111 * 10 ; weight
	tx HitmonchanDescription ; description
	db 0

CufantCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx CufantCardGfx ; gfx
	tx CufantName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw CUFANT
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx CallforFriendName ; name
	tx CallforFriendDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MarowakCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx GaleName ; name
	tx GaleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotGaleEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON | FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx CopperdermName ; category
	db 144 ; Pokedex number
	db 18 ; level
	db 3, 3 ; length
	dw 254 * 10 ; weight
	tx RhyhornDescription ; description
	db 16

CopperajahCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx CopperajahCardGfx ; gfx
	tx CopperajahName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw RHYDON
	db 100 ; hp
	db STAGE1 ; stage
	tx CufantName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx DigDrainName ; name
	tx ButterfreesMegaDrainDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 2 ; energies
	tx AdamantinePressName ; name
	tx AdamantinePressDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw AdamantinePressEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 30
	db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx CopperdermName ; category
	db 145 ; Pokedex number
	db 48 ; level
	db 6, 3 ; length
	dw 265 * 10 ; weight
	tx RhydonDescription ; description
	db 0

KabutoCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutoCardGfx ; gfx
	tx KabutoName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw KABUTO
	db 60 ; hp
	db STAGE1 ; stage
	tx MysteriousFossilName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx KabutoArmorName ; name
	tx KabutoArmorDescription ; description
	tx PKMNBodyCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw KabutoKabutoArmorEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx FastEvolutionName ; name
	tx FastEvolutionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw EvolutionPkmnSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx ShellfishName ; category
	db 146 ; Pokedex number
	db 19 ; level
	db 1, 8 ; length
	dw 25 * 10 ; weight
	tx KabutoDescription ; description
	db 19

KabutopsCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutopsCardGfx ; gfx
	tx KabutopsName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw KABUTOPS
	db 100 ; hp
	db STAGE2 ; stage
	tx KabutoName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PrimalAuraName ; name
	tx PrimalAuraDesription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw NoOppTrainersEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GUST_OF_WIND ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx ParabolicName ; name
	tx KabutiDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw KabitopsEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx ShellfishName ; category
	db 147 ; Pokedex number
	db 60 ; level
	db 4, 3 ; length
	dw 89 * 10 ; weight
	tx KabutopsDescription ; description
	db 0

TyruntCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx TyruntCardGfx ; gfx
	tx TyruntName ; name
	db CIRCLE ; rarity
	db LABORATORY | FOSSIL ; sets
	dw TYRUNT
	db 60 ; hp
	db STAGE1 ; stage
	tx MysteriousFossilName ; pre-evo name

	; attack 1
	energy FIGHTING, 2, ; energies
	tx CrunchName ; name
	tx CrunchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw CrunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HYPER_BEAM ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx HornAttackName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx RoyalName ; category
	db 148 ; Pokedex number
	db 22 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx CuboneDescription ; description
	db 19

TyrantrumCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx TyrantrumCardGfx ; gfx
	tx TyrantrumName ; name
	db STAR ; rarity
	db LABORATORY | FOSSIL ; sets
	dw TYRANTRUM
	db 100 ; hp
	db STAGE2 ; stage
	tx TyruntName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PrehistoricPowerName ; name
	tx PrehistoricPowerDescription ; description
	tx 	PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw AerodactylPrehistoricPowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 2 ; energies
	tx DragonImpactName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx DespotName ; category
	db 149 ; Pokedex number
	db 68 ; level
	db 5, 11 ; length
	dw 130 * 10 ; weight
	tx AerodactylDescription ; description
	db 1

RockruffCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx RockruffCardGfx ; gfx
	tx RockruffName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw ROCKRUFF
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx RoarName ; name
	tx TerrorStrikeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ArbokTerrorStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation	

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE; resistance
	tx PuppyName ; category
	db 150 ; Pokedex number
	db 14 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx CuboneDescription ; description
	db 19

LycanrocCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx LycanrocCardGfx ; gfx
	tx LycanrocName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw LYCANROC
	db 70 ; hp
	db STAGE1 ; stage
	tx RockruffName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx CrunchName ; name
	tx CrunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw CrunchEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx AccelRockName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx WolfName ; category
	db 151 ; Pokedex number
	db 38 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv26Description ; description
	db 0

LycanrocMCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx LycanrocMCardGfx ; gfx
	tx LycanrocName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw LYCANROCM
	db 80 ; hp
	db STAGE1 ; stage
	tx RockruffName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, FIGHTING, 1 ; energies
	tx BloodThirstyClawsName ; name
	tx MetalReversalDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GustOfWindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation
	
	; attack 2
	energy FIGHTING, 2, COLORLESS, 2 ; energies
	tx DangerousRougueName ; name
	tx DangerousRougueDescription ; description
	dw NONE ; description (cont)
	db 80 ; damage
	db DAMAGE_NORMAL ; category
	dw MrFujiEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx WolfName ; category
	db 151 ; Pokedex number
	db 52 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv32Description ; description
	db 0

GalladeCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx GalladeCardGfx ; gfx
	tx GalladeName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw GALLADE
	db 110 ; hp
	db STAGE2 ; stage
	tx KirliaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RisingSwordName ; name
	tx RisingSwordDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw PlusPowerSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx CuttoSizeName ; name
	tx CuttoSizeDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw PowerLariatEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx BonekeeperName ; category
	db 105 ; Pokedex number
	db 55 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv32Description ; description
	db 0

RaltsCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx RaltsCardGfx ; gfx
	tx RaltsName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw RALTS
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FutureSightName ; name
	tx FutureSightDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw RaltsProphecyEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx ConfuseRayName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 16

KirliaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx KirliaCardGfx ; gfx
	tx KirliaName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw KIRLIA
	db 70 ; hp
	db STAGE1 ; stage
	tx RaltsName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PsychicResearchName ; name
	tx PsychicResearchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw EvolutionPkmnSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx DrainingKissName ; name
	tx ButterfreesMegaDrainDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 16

GardevoirCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GardevoirCardGfx ; gfx
	tx GardevoirName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw GARDEVOIR
	db 100 ; hp
	db STAGE2 ; stage
	tx KirliaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PsyShadowName ; name
	tx PsyShadowDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw PsyShadowEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx MoonblastName ; name
	tx MoonblastDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw MoonblastEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK|HEAL_USER ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 55 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 0		

InkayCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx InkayCardGfx ; gfx
	tx InkayName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw INKAY
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx RipOffName ; name
	tx AstonishDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw AstonishEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx ConfusionWaveName ; name
	tx FoulOdorDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GloomFoulOdorEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_ODOR ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx RevolvingName ; category
	db 156 ; Pokedex number
	db 18 ; level
	db 3, 11 ; length
	dw 79 * 10 ; weight
	tx BruxishDescription ; description
	db 16

MalamarCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MalamarCardGfx ; gfx
	tx MalamarName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw MALAMAR
	db 70 ; hp
	db STAGE1 ; stage
	tx InkayName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ContraryBehaviorName ; name
	tx StrangeBehaviorDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MalamarStrangeBehaviorEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx MaliceTentaclesName ; name
	tx MaliceTentaclesDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MaliceTentacleEffectCommands ; effect commands
	db INFLICT_CONFUSION	 ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_PSYCHIC ; resistance
	tx OverturningName ; category
	db 157 ; Pokedex number
	db 36 ; level
	db 5, 3 ; length
	dw 173 * 10 ; weight
	tx MalamarDescription ; description
	db 0

DuskullCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DuskullCardGfx ; gfx
	tx DuskullName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw DUSKULL
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx HauntName ; name
	tx HauntDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw HauntEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYPNOSIS ; animation

	; attack 2
	energy PSYCHIC, 1, ; energies
	tx DarkRevivalName ; name
	tx DarkRevivalDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PokemonFluteEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 0 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx RequiemName ; category
	db 158 ; Pokedex number
	db 8 ; level
	db 4, 3 ; length
	dw 2 ; weight
	tx GastlyLv8Description ; description
	db 16

DusclopsCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DusclopsCardGfx ; gfx
	tx DusclopsName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw DUSCLOPS
	db 70 ; hp
	db STAGE1 ; stage
	tx DuskullName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx WillOWispName ; name
	tx InflictBurnDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw BurnEffectEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx CallBackName ; name
	tx CallBackDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw CallBackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BeckonName ; category
	db 159 ; Pokedex number
	db 37 ; level
	db 5, 3 ; length
	dw 2 ; weight
	tx HaunterDescription ; description
	db 16

DusknoirCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DusknoirCardGfx ; gfx
	tx DusknoirName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw DUSKNOIR
	db 100 ; hp
	db STAGE2 ; stage
	tx DusclopsName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SinisterHandName ; name
	tx SinisterHandDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw GengarCurseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx PhantomPainName ; name
	tx PhantomPainDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw PhantomPainEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db NONE ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx GripperName ; category
	db 160 ; Pokedex number
	db 58 ; level
	db 4, 11 ; length
	dw 89 * 10 ; weight
	tx GengarDescription ; description
	db 1

MisdreavusCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MisdreavusCardGfx ; gfx
	tx MisdreavusName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MISDREAVUS
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx LullabyName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SING ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx HexName ; name
	tx HexDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw HexEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx ScreechName ; category
	db 161 ; Pokedex number
	db 27 ; level
	db 4, 3 ; length
	dw 2 ; weight
	tx GastlyLv17Description ; description
	db 16

MismagiusCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MismagiusCardGfx ; gfx
	tx MismagiusName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MISMAGIUS
	db 70 ; hp
	db STAGE1 ; stage
	tx MisdreavusName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx SleepingMagicName ; name
	tx SleepingMagicDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SleepLureEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db INFLICT_SLEEP ; flags 3
	db 0
	db ATK_ANIM_LURE ; animation

	; attack 2
	energy PSYCHIC, 3 ; energies
	tx HorrorChantName ; name
	tx HorrorChantDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw HorrorChantEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx MagicalName ; category
	db 162 ; Pokedex number
	db 52 ; level
	db 5, 3 ; length
	dw 2 ; weight
	tx HaunterDescription ; description
	db 0

SpiritombCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx SpiritombCardGfx ; gfx
	tx SpiritombName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw SPIRITOMB
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx InvisibleWallName ; name
	tx InvisibleWallDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MrMimeInvisibleWallEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx HexName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx ForbiddenName ; category
	db 165 ; Pokedex number
	db 48 ; level
	db 4, 3 ; length
	dw 120 * 10 ; weight
	tx MrMimeDescription ; description
	db 3

EspeonCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx EspeonCardGfx ; gfx
	tx EspeonName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ESPEON
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DevoFlashName ; name
	tx DevoFlashDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DevoFlashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 2 ; energies
	tx PsyReportName ; name
	tx PsyReportDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw PsyReportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx SunName ; category
	db 203 ; Pokedex number
	db 53 ; level
	db 4, 7 ; length
	dw 90 * 10 ; weight
	tx JynxDescription ; description
	db 0

MewtwoCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoCardGfx ; gfx
	tx MewtwoName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw MEWTWO_LV60
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MindReportName ; name
	tx MindReportDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MindReportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx PsychicName ; name
	tx PsychicDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw MewtwoPsychicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx GeneticName ; category
	db 150 ; Pokedex number
	db 60 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 0

MimikyuCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MimikyuCardGfx ; gfx
	tx MimikyuName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw MIMIKYU
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DummyDollName ; name
	tx NeutralizingShieldDescription ; description
	tx PKMNBodyCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MewNeutralizingShieldEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx JealousEyesNames ; name
	tx JealousEyesDescription ; description
	tx JealousEyesDescriptionCont ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw JealousEyesEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx DisguiseName ; category
	db 151 ; Pokedex number
	db 8 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 3

MewLv23Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewLv23CardGfx ; gfx
	tx MewName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw MEW
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx PsywaveName ; name
	tx PsywaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw MewPsywaveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx DevolutionBeamName ; name
	tx DevolutionBeamDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MewDevolutionBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 8

CarbinkCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx CarbinkCardGfx ; gfx
	tx CarbinkName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw CARBINK
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx LuckyFindName ; name
	tx LuckyFindDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw TrainerSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1, PSYCHIC, 1 ; energies
	tx PowerGemName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 0

BeldumCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx BeldumCardGfx ; gfx
	tx BeldumName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw BELDUM
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name
	
	; attack 1
	energy COLORLESS, 1 ; energies
	tx AllureName ; name
	tx FetchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KangaskhanFetchEffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1, PSYCHIC, 1 ; energies
	tx TakeDownName ; name
	tx ThunderJoltDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuThunderJoltEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx IronBallName ; category
	db 169 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx BeldumDescription ; description
	db 19

MetangCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MetangCardGfx ; gfx
	tx MetangName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw METANG
	db 80 ; hp
	db STAGE1 ; stage
	tx BeldumName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx ComputingProwessName ; name
	tx ComputingProwessDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw UltravisionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT	 ; animation
	
	; attack 2
	energy PSYCHIC, 1, COLORLESS, 2 ; energies
	tx PsychicName ; name
	tx PsychicDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw MewtwoPsychicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_PSYCHIC ; resistance
	tx IronClawName ; category
	db 170 ; Pokedex number
	db 38 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MetangDescription ; description
	db 16

MetagrossCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MetagrossCardGfx ; gfx
	tx MetagrossName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw METAGROSS
	db 120 ; hp
	db STAGE2 ; stage
	tx MetangName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx MetalReversalName ; name
	tx MetalReversalDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GustOfWindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation
	
	; attack 2
	energy PSYCHIC, 1, COLORLESS, 2, ; energies
	tx MeteorMashName ; RequiemName
	tx MeteorMashDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw MeteorMashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 3 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_PSYCHIC ; resistance
	tx IronLegName ; category
	db 171 ; Pokedex number
	db 68 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MetagrossDescription ; description
	db 0		

MunnaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MunnaCardGfx ; gfx
	tx MunnaName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw MUNNA
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name
	
	; attack 1
	energy PSYCHIC, 1 ; energies
	tx DreamyWishName ; name
	tx DreamyWishDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DreamyWishEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx DreamSphereName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYPNOSIS ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx DreamEaterName ; category
	db 172 ; Pokedex number
	db 18 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx MunnaDescription ; description
	db 16
MusharnaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MusharnaCardGfx ; gfx
	tx MusharnaName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw MUSHARNA
	db 80 ; hp
	db STAGE1 ; stage
	tx MunnaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DreamMistName ; name
	tx DreamMistDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DreamMistEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy PSYCHIC, 2 ; energies
	tx SleepDrainName ; name
	tx SleepDrainDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw SleepDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx DrowsingName ; category
	db 173 ; Pokedex number
	db 36 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx HonchkrowDescription ; description
	db 0

BlipbugCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx BlipbugCardGfx ; gfx
	tx BlipbugName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw BLIPBUG
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx CallForFamilyName ; name
	tx PsychicCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw PsychicCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx MysteriousPowderName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx LarvaName ; category
	db 43 ; Pokedex number
	db 9 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv12Description ; description
	db 16

DottlerCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DottlerCardGfx ; gfx
	tx DottlerName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw DOTTLER
	db 70 ; hp
	db STAGE1 ; stage
	tx BlipbugName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx BugsRadarName ; name
	tx ProphecyDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw HypnoProphecyEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx DisruptiveSignalName ; name
	tx DisruptiveSignalDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw DisruptiveSignalEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYPER_BEAM ; animation	

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx RadomeName ; category
	db 44 ; Pokedex number
	db 25 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 16

OrbeetleCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx OrbeetleCardGfx ; gfx
	tx OrbeetleName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw ORBEETLE
	db 90 ; hp
	db STAGE2 ; stage
	tx DottlerName ; pre-evo name

	; attack 1
	energy PSYCHIC, 2 ; energies
	tx BrainShakeName ; name
	tx BrainShakeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw BrainShakeEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx SatelliteBeamName ; name
	tx SatelliteBeamDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw SatelliteBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx SevenSpotName ; category
	db 45 ; Pokedex number
	db 60 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx OrbeetleDescription ; description
	db 0		

CutieflyCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx CutieflyCardGfx ; gfx
	tx CutieflyName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw CUTIEFLY
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx FairyWindName ; name
	tx GrowlDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GrowlEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 0 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx HypnosisName ; category
	db 96 ; Pokedex number
	db 7 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx MurkrowDescription ; description
	db 19

RibombeeCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx RibombeeCardGfx ; gfx
	tx RibombeeName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw RIBOMBEE
	db 70 ; hp
	db STAGE1 ; stage
	tx CutieflyName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx FairyPollenName ; name
	tx FairyPollenDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FairyPollenEffectCommands ; effect commands
	db INFLICT_BURN/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx DrainingKissName ; name
	tx ButterfreesMegaDrainDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 0 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx HypnosisName ; category
	db 97 ; Pokedex number
	db 48 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx HonchkrowDescription ; description
	db 0

CresseliaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx CresseliaCardGfx ; gfx
	tx CresseliaName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw CRESSELIA
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx EnergyAbsorptionName ; name
	tx EnergyAbsorptionDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MewtwoAltLV60EnergyAbsorptionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx PsyburnName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx GeneticName ; category
	db 150 ; Pokedex number
	db 60 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 0

DeinoCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DeinoCardGfx ; gfx
	tx DeinoName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw DEINO
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DeepGrowlName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AbraPsyshockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 1
	energy COLORLESS, 1, DARKNESS, 1 ; energies
	tx TakeDownName ; name
	tx ThunderJoltDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GnawOffEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx IrateName ; category
	db 152 ; Pokedex number
	db 20 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx AbraDescription ; description
	db 16

ZweilousCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ZweilousCardGfx ; gfx
	tx ZweilousName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ZWEILOUS
	db 80 ; hp
	db STAGE1 ; stage
	tx DeinoName ; pre-evo name

	; attack 1
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx StompOffName ; name
	tx StompOffDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw StompOffEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 2 ; energies
	tx TakeDownName ; name
	tx TakeDownDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw ArcanineTakeDownEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 30
	db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx HostileName ; category
	db 153 ; Pokedex number
	db 58 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx KadabraDescription ; description
	db 19

HydreigonCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx HydreigonCardGfx ; gfx
	tx HydreigonName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw HYDREIGON
	db 100 ; hp
	db STAGE2 ; stage
	tx ZweilousName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DarkImpulseName ; name
	tx DarkImpulseDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw LightningHasteEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx DarkDestructionName ; name
	tx DarkDestructionDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw DarkDestructionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx BrutalName ; category
	db 154 ; Pokedex number
	db 72 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx AlakazamDescription ; description
	db 0

MurkrowCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx MurkrowCardGfx ; gfx
	tx MurkrowName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MURKROW
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx FlockPeckName ; name
	tx FlockPeckDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FlockPeckEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy DARKNESS, 2 ; energies
	tx ResentFulWingsName ; name
	tx ResentFulWingsDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ResentFulWingsEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_AMNESIA ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx DarkName ; category
	db 163 ; Pokedex number
	db 25 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx MurkrowDescription ; description
	db 17

HonchkrowCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx HonchkrowCardGfx ; gfx
	tx HonchkrowName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw HONCHKROW
	db 80 ; hp
	db STAGE1 ; stage
	tx MurkrowName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx NightSyndicateName ; name
	tx NightSyndicateDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw NightSyndicateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 3 ; energies
	tx BlackwingVengeanceName ; name
	tx BlackwingVengeanceDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw BlackwingVengeanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_PSYCHIC ; resistance
	tx BigBossName ; category
	db 164 ; Pokedex number
	db 56 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx HonchkrowDescription ; description
	db 0

UmbreonCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx UmbreonCardGfx ; gfx
	tx UmbreonName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw UMBREON
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DarkerRingName ; name
	tx DarkerRingDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DarkerRingEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx ToxicName ; name
	tx ToxicDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NidokingToxicEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_TOXIC ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx MoonlightName ; category
	db 204 ; Pokedex number
	db 53 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 0

CascoonCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx CascoonCardGfx ; gfx
	tx CascoonName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw CASCOON
	db 70 ; hp
	db STAGE1 ; stage
	tx WurmpleName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx StiffenName ; name
	tx MetapodsStiffenDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MetapodStiffenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx PoisonPowderName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw Poison50PercentEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SnakeName ; category
	db 8 ; Pokedex number
	db 21 ; level
	db 6, 7 ; length
	dw 15 * 10 ; weight
	tx EkansDescription ; description
	db 19

DustoxCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DustoxCardGfx ; gfx
	tx DustoxName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw DUSTOX
	db 80 ; hp
	db STAGE2 ; stage
	tx CascoonName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SmogScreenName ; name
	tx SmogScreenDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SmogScreenAttackEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx ChemicalScaleName ; name
	tx ChemicalScaleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ChemicalScaleEffectCommands ; effect commands
	db INFLICT_BURN | INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx CobraName ; category
	db 9 ; Pokedex number
	db 33 ; level
	db 11, 6 ; length
	dw 143 * 10 ; weight
	tx ArbokDescription ; description
	db 0

SkrelpCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SkrelpCardGfx ; gfx
	tx SkrelpName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw SKRELP
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 2
	energy DARKNESS, 1 ; energies
	tx AcidName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw WeedlePoisonStingEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GOO ; animation

	; attack 2
	energy DARKNESS, 1 ; energies
	tx SmokescreenName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw HorseaSmokescreenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx MockKelpName ; category
	db 80 ; Pokedex number
	db 10 ; level
	db 2, 11 ; length
	dw 100 * 10 ; weight
	tx TentacoolDescription ; description
	db 19

DragalgeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DragalgeCardGfx ; gfx
	tx DragalgeName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DRAGALGE
	db 70 ; hp
	db STAGE1 ; stage
	tx SkrelpName ; pre-evo name

	; attack 1
    energy 0 ; energies
    tx PoisonReefName ; name
    tx PoisonReefDescription ; description
    dw NONE ; description (cont)
    db 0 ; damage
    db POKEMON_POWER ; category
    dw DeepSleepEffectCommands ; effect commands
    db NONE ; flags 1
    db NONE ; flags 2
    db NONE ; flags 3
    db 0
    db ATK_ANIM_PKMN_POWER_1

	; attack 2
	energy DARKNESS, 2 ; energies
	tx DragonsVenomName ; name
	tx DragonsVenomDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw DragonsVenomEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMOG ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx MockKelpName ; category
	db 81 ; Pokedex number
	db 39 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx TentacruelDescription ; description
	db 0

SkorupiCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SkorupiCardGfx ; gfx
	tx SkorupiName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw SKORUPI
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DarkChargeName ; name
	tx DarkChargeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DarkChargeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy COLORLESS, 1, DARKNESS, 1 ; energies
	tx DangerousClawName ; name
	tx FoulGasDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw KoffingFoulGasEffectCommands ; effect commands
	db INFLICT_POISON | INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_GAS ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx ScorpionName ; category
	db 38 ; Pokedex number
	db 28 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 16

DrapionCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DrapionCardGfx ; gfx
	tx DrapionName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DRAPION
	db 80 ; hp
	db STAGE1 ; stage
	tx SkorupiName ; pre-evo name

	; attack 1
	energy COLORLESS, 2, DARKNESS, 1, ; energies
	tx WrackdownName ; name
	tx WrackdownDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw WrackdownCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation
	
	; attack 2
	energy DARKNESS, 2, COLORLESS, 2 ; energies
	tx HazardousClawsName ; name
	tx HazardousClawsDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw HazardousEffectCommands ; effect commands
	db INFLICT_POISON | INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POISON_FANG ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx OgreScorpionName ; category
	db 39 ; Pokedex number
	db 52 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 0		

ZubatCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ZubatCardGfx ; gfx
	tx ZubatName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw ZUBAT
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx SkillDiveName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy DARKNESS, 1 ; energies
	tx LeechLifeName ; name
	tx LeechLifeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw LeechLifeEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BatName ; category
	db 19 ; Pokedex number
	db 10 ; level
	db 2, 7 ; length
	dw 17 * 10 ; weight
	tx ZubatDescription ; description
	db 19

GolbatCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GolbatCardGfx ; gfx
	tx GolbatName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw GOLBAT
	db 60 ; hp
	db STAGE1 ; stage
	tx ZubatName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SneakAttackName ; name
	tx SneakAttackDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SnapEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy DARKNESS, 2 ; energies
	tx LeechLifeName ; name
	tx LeechLifeDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw LeechLifeEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BatName ; category
	db 20 ; Pokedex number
	db 29 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx GolbatDescription ; description
	db 19

CrobatCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx CrobatCardGfx ; gfx
	tx CrobatName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw CROBAT
	db 90 ; hp
	db STAGE2 ; stage
	tx GolbatName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SurpriseBiteName ; name
	tx SurpriseBiteDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw Snap2EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 2 ; energies
	tx ToxicName ; name
	tx ToxicDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NidokingToxicEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_TOXIC ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BatName ; category
	db 21 ; Pokedex number
	db 54 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx GolbatDescription ; description
	db 0

CroagunkCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx CroagunkCardGfx ; gfx
	tx CroagunkName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw CROAGUNK
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1, ; energies
	tx PoisonStingName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw WeedlePoisonStingEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy FIGHTING, 1 ; energies
	tx LowKickName ; name
	tx LowKickDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw LowKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx ToxicMouthName ; category
	db 130 ; Pokedex number
	db 7 ; level
	db 1, 8 ; length
	dw 62 * 10 ; weight
	tx MankeyDescription ; description
	db 17

ToxicroakCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ToxicroakCardGfx ; gfx
	tx ToxicroakName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw TOXICROAK
	db 70 ; hp
	db STAGE1 ; stage
	tx CroagunkName ; pre-evo name

	; attack 1
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx CornerName ; name
	tx CornerDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw CornerEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_TOXIC ; animation

	; attack 2
	energy COLORLESS, 1, DARKNESS, 2 ; energies
	tx PoisonBoostName ; name
	tx PoisonBoostDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw PoisonBoostEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx ToxicMouthName ; category
	db 131 ; Pokedex number
	db 35 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx PrimeapeDescription ; description
	db 0

SneaselCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SneaselCardGfx ; gfx
	tx SneaselName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw SNEASEL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FurySwipesName ; name
	tx TripleAttackX10Description ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw FurySwipesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	; attack 2
	energy DARKNESS, 2 ; energies
	tx KnockOffName; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FLOATZELHyperBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 28 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx SneaselDescription ; description
	db 16

WeavileCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx WeavileCardGfx ; gfx
	tx GyaradosName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw WEAVILE
	db 70 ; hp
	db STAGE1 ; stage
	tx SneaselName ; pre-evo name

	; attack 1
	energy DARKNESS, 1,; energies
	tx MercilessName ; name
	tx MercilessDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MercilessEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 1, DARKNESS, 2 ; energies
	tx DarkPulseName ; name
	tx DarkPulseDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw DarkPulseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC; resistance
	tx SharpClawName ; category
	db 96 ; Pokedex number
	db 51 ; level
	db 21, 4 ; length
	dw 518 * 10 ; weight
	tx GyaradosDescription ; description
	db 0

RookideeCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RookideeCardGfx ; gfx
	tx RookideeName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ROOKIDEE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx EnergySearchName ; name
	tx EnergySearchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw EnergySearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx WhirlwindName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeWhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TinyBirdName ; category
	db 174 ; Pokedex number
	db 18 ; level
	db 1, 0 ; length
	dw 4 * 10 ; weight
	tx RookideeDescription ; description
	db 16

CorvisquireCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx CorvisquireCardGfx ; gfx
	tx CorvisquireName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw CORVISQUIRE
	db 70 ; hp
	db STAGE1 ; stage
	tx RookideeName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MessengerName ; name
	tx ComputingProwessDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw UltravisionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 3 ; energies
	tx WhirlwindName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeWhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx RavenName ; category
	db 175 ; Pokedex number
	db 36 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx CorvisquireDescription ; description
	db 16

CorviknightCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx CorviknightCardGfx ; gfx
	tx CorviknightName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw CORVIKNIGHT
	db 100 ; hp
	db STAGE2 ; stage
	tx CorvisquireName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx SteelWingName ; name
	tx SteelWingDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MinimizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx HurricaneName ; name
	tx HurricaneDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotHurricaneEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx RavenName ; category
	db 176 ; Pokedex number
	db 58 ; level
	db 4, 11 ; length
	dw 87 * 10 ; weight
	tx CorviknightDescription ; description
	db 0

ZigzagoonCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ZigzagoonCardGfx ; gfx
	tx ZigzagoonName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ZIGZAGOON
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx TeamAssemblyName ; name
	tx PokeBallDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PokeBallEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx PinMissileName ; name
	tx TripleAttackX20Description ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw SandslashFurySwipesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	db 0 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx RatName ; category
	db 177 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 8 * 10 ; weight
	tx RattataDescription ; description
	db 19

LinooneCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx LinooneCardGfx ; gfx
	tx LinooneName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw LINOONE
	db 70 ; hp
	db STAGE1 ; stage
	tx ZigzagoonName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SniffOutName ; name
	tx SniffOutDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw SniffOutEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx QuickAttackName ; name
	tx QuickAttackDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw QuickAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx RushingName ; category
	db 178 ; Pokedex number
	db 41 ; level
	db 2, 4 ; length
	dw 41 * 10 ; weight
	tx RaticateDescription ; description
	db 3

TailowCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TailowCardGfx ; gfx
	tx TailowName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw TAILOW
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx ScoutName ; name
	tx ScoutDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ScoutEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx AgilityName ; name
	tx RapidashsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK | FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TinyBirdName ; category
	db 179 ; Pokedex number
	db 13 ; level
	db 1, 0 ; length
	dw 4 * 10 ; weight
	tx TailowDescription ; description
	db 19

SwellowCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SwellowCardGfx ; gfx
	tx SwellowName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw SWELLOW
	db 70 ; hp
	db STAGE1 ; stage
	tx TailowName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DriveOffName ; name
	tx DriveOffDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DriveOffEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GUST_OF_WIND ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx BraveBirdName ; name
	tx JigglypuffsDoubleEdgeDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw JigglypuffDoubleEdgeEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT_RECOIL ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx SwellowName ; category
	db 180 ; Pokedex number
	db 37 ; level
	db 3, 11 ; length
	dw 84 * 10 ; weight
	tx FearowDescription ; description
	db 0

TogepiCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TogepiCardGfx ; gfx
	tx TogepiName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw TOGEPI
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FriendshipSongName ; name
	tx FriendshipSongDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw JigglypuffFriendshipSongEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx MetronomeName ; name
	tx ClefablesMetronomeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ClefairyMetronomeEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx SpikeBallName ; category
	db 181 ; Pokedex number
	db 14 ; level
	db 2, 0 ; length
	dw 17 * 10 ; weight
	tx ClefairyDescription ; description
	db 16

TogeticCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TogeticCardGfx ; gfx
	tx TogeticName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw TOGETIC
	db 70 ; hp
	db STAGE1 ; stage
	tx TogepiName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EvolutionaryLightName ; name
	tx EvolutionaryLightDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw EvolutionPkmnSearchPokepowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx MetronomeName ; name
	tx ClefablesMetronomeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ClefableMetronomeEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx HappinessName ; category
	db 182 ; Pokedex number
	db 34 ; level
	db 4, 3 ; length
	dw 88 * 10 ; weight
	tx ClefableDescription ; description
	db 17

TogekissCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TogekissCardGfx ; gfx
	tx TogekissName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw TOGEKISS
	db 100 ; hp
	db STAGE2 ; stage
	tx TogeticName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MetronomeName ; name
	tx ClefablesMetronomeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ClefableMetronomeEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx BlessedWindsName ; name
	tx BlessedWindsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw BlessedWindsEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx JubileeName ; category
	db 183 ; Pokedex number
	db 52 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv12Description ; description
	db 0

CyclizarCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx CyclizarCardGfx ; gfx
	tx ComfeyName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw CYCLIZAR
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx ExploreName ; name
	tx PokedexDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PokedexEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw EnergyBoostEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx MountName ; category
	db 205 ; Pokedex number
	db 32 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv13Description ; description
	db 0

StuffulName:
	db TYPE_PKMN_COLORLESS ; type
	gfx StuffulNameGfx ; gfx
	tx StuffulName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw STUFFUL
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx CallForFamilyName ; name
	tx ColorlessCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ColorlessCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx PoundName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx FlailingName ; category
	db 184 ; Pokedex number
	db 14 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv14Description ; description
	db 16

BewearCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx BewearCardGfx ; gfx
	tx BewearName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw BEWEAR
	db 80 ; hp
	db STAGE1 ; stage
	tx StuffulName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx SkyUppercut ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx DoTheWaveName ; name
	tx DoTheWaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw WigglytuffDoTheWaveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx StrongArmName ; category
	db 185 ; Pokedex number
	db 36 ; level
	db 3, 3 ; length
	dw 26 * 10 ; weight
	tx WigglytuffDescription ; description
	db 0

BidoofCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx BidoofCardGfx ; gfx
	tx BidoofName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw BIDOOF
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx BiteName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx RecycleName ; name
	tx RecycleDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw RecycleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx PlumpMouseName ; category
	db 186 ; Pokedex number
	db 15 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MeowthLv15Description ; description
	db 16

BibarelCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx BibarelCardGfx ; gfx
	tx BibarelName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw BIBAREL
	db 70 ; hp
	db STAGE1 ; stage
	tx BidoofName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx RescueName ; name
	tx EnergyConversionDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw GastlyEnergyConversionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 10
	db ATK_ANIM_ENERGY_CONVERSION ; animation

	; attack 2
	energy COLORLESS, 2, WATER, 1 ; energies
	tx CrunchName ; name
	tx CrunchDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw CrunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HYPER_BEAM ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_WATER ; resistance
	tx BeaverName ; category
	db 187 ; Pokedex number
	db 25 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx PersianDescription ; description
	db 0

RayquazaCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RayquazaCardGfx ; gfx
	tx RayquazaName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw RAYQUAZA
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx PsychicName ; name
	tx JynxsMeditateDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw MeditateEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx SageOrderName ; name
	tx ProfessorOakDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ProfessorOakEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SageName ; category
	db 195 ; Pokedex number
	db 55 ; level
	db 2, 7 ; length
	dw 33 * 10 ; weight
	tx ChanseyDescription ; description
	db 3

RuffletCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RuffletCardGfx ; gfx
	tx RuffletName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw RUFFLET
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FuryAttackName ; name
	tx DoubleAttackX10Description ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw DoduoFuryAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx WhirlwindName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeWhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx EagletName ; category
	db 192 ; Pokedex number
	db 40 ; level
	db 4, 7 ; length
	dw 86 * 10 ; weight
	tx DoduoDescription ; description
	db 19

BraviaryCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx BraviaryCardGfx ; gfx
	tx BraviaryName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw BRAVIARY
	db 70 ; hp
	db STAGE1 ; stage
	tx RuffletName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RetreatAidName ; name
	tx RetreatAidDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DodrioRetreatAidEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx SkyDropName ; name
	tx SkyDropDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_MINUS ; category
	dw SkyDropEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx ValiantName ; category
	db 193 ; Pokedex number
	db 68 ; level
	db 5, 11 ; length
	dw 188 * 10 ; weight
	tx DodrioDescription ; description
	db 1

DrampaCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx DrampaCardGfx ; gfx
	tx DrampaName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw LICKITUNG
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx DragonbreathName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	; attack 2
	energy COLORLESS, 2, FIRE, 1 ; energies
	tx RageName ; name
	tx FlareonsRageDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw RageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_FIRE ; resistance
	tx PlacidName ; category
	db 194 ; Pokedex number
	db 46 ; level
	db 3, 11 ; length
	dw 144 * 10 ; weight
	tx LickitungDescription ; description
	db 0

AudinoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx AudinoCardGfx ; gfx
	tx AudinoName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw AUDINO
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx HealerName ; name
	tx HealDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw VileplumeHealEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2, ; energies
	tx DrainSlapName ; name
	tx LeechLifeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw LeechLifeEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx HearingName ; category
	db 191 ; Pokedex number
	db 60 ; level
	db 3, 7 ; length
	dw 76 * 10 ; weight
	tx FarfetchdDescription; description
	db 8

ChatotCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ChatotCardGfx ; gfx
	tx ChatotName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw CHATOT
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MimicName ; name
	tx CopycatDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw GamblerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx ChatterName ; name
	tx ChatterDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ChatterEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_SING ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_PSYCHIC ; resistance
	tx MusicNoteName ; category
	db 196 ; Pokedex number
	db 40 ; level
	db 7, 3 ; length
	dw 176 * 10 ; weight
	tx ChatotDescription ; description
	db 0

StantlerCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx StantlerCardGfx ; gfx
	tx StantlerName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw STANTLER
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MystifyingHornsName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYPNOSIS ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx RampageName ; name
	tx RampageDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw TaurosRampageEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx BigHornName ; category
	db 197 ; Pokedex number
	db 32 ; level
	db 4, 7 ; length
	dw 195 * 10 ; weight
	tx TaurosDescription ; description
	db 0

DittoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx DittoCardGfx ; gfx
	tx DittoName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw DITTO
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PoundName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx MorphName ; name
	tx MorphDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DittoMorphEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx TransformName ; category
	db 198 ; Pokedex number
	db 19 ; level
	db 1, 0 ; length
	dw 9 * 10 ; weight
	tx DittoDescription ; description
	db 0

EeveeCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx EeveeCardGfx ; gfx
	tx EeveeName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw EEVEE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx QuickAttackName ; name
	tx MachPunchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MachPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx SignsOfEvolutionName ; name
	tx DraconicDreamsDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw DraconicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx EvolutionName ; category
	db 199 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 14 * 10 ; weight
	tx EeveeDescription ; description
	db 17

PorygonCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PorygonCardGfx ; gfx
	tx PorygonName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw PORYGON
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx BeamName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx DataRetrievalName ; name
	tx EeeekDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ShuffleHandThenDraw4EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx VirtualName ; category
	db 137 ; Pokedex number
	db 12 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx PorygonDescription ; description
	db 16

Porygon2Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx Porygon2CardGfx ; gfx
	tx Porygon2Name ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw PORYGON2
	db 70 ; hp
	db STAGE1 ; stage
	tx PorygonName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx LuckyFindName ; name
	tx LuckyFindDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw TrainerSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx TDCommandName ; name
	tx TDCommandDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw TDCommandEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx VirtualName ; category
	db 137 ; Pokedex number
	db 12 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx PorygonDescription ; description
	db 16

PorygonZCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PorygonZCardGfx ; gfx
	tx PorygonZName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw PORYGONZ
	db 100 ; hp
	db STAGE1 ; stage
	tx Porygon2Name ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ConversionZname ; name
	tx ConversionZDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw PsyShadowEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx ZCommandName ; name
	tx ZCommandDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw ZCommandEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx VirtualName ; category
	db 137 ; Pokedex number
	db 12 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx PorygonDescription ; description
	db 0

GoomyCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx GoomyCardGfx ; gfx
	tx GoomyName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw GOOMY
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PoundName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx GooeyName ; name
	tx ChikoritasLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw ChikoritaLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_RECOVER ; animation

	db 1 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx SoftTissueName ; category
	db 207 ; Pokedex number
	db 10 ; level
	db 5, 11 ; length
	dw 7 * 10 ; weight
	tx DratiniDescription ; description
	db 16

SliggooCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SliggooCardGfx ; gfx
	tx SliggooName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw SLIGGOO
	db 80 ; hp
	db STAGE1 ; stage
	tx GoomyName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx RecoverName ; name
	tx StarmiesRecoverDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw StarmieRecoverEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_RECOVER ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx SlimyWaterName ; name
	tx LowKickDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw LowKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WATER_GUN; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx SoftTissueName ; category
	db 208 ; Pokedex number
	db 40 ; level
	db 13, 1 ; length
	dw 36 * 10 ; weight
	tx DragonairDescription ; description
	db 16

GoodraCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx GoodraCardGfx ; gfx
	tx GoodraName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw GOODRA
	db 100 ; hp
	db STAGE2 ; stage
	tx SliggooName ; pre-evo name

	; attack 2
	energy 0 ; energies
	tx SlimyroomName ; name
	tx SlimyroomDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy WATER, 2, COLORLESS,2, ; energies
	tx DoubleEdgeName ; name
	tx RaichusThunderDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw RaichuThunderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 3 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 209 ; Pokedex number
	db 75 ; level
	db 7, 3 ; length
	dw 463 * 10 ; weight
	tx DragoniteDescription ; description
	db 0

LugiaCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx LugiaCardGfx ; gfx
	tx LugiaName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw LUGIA
	db 100 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx HealingWindName ; name
	tx HealingWindDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DragoniteHealingWindEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HEALING_WIND ; animation

	; attack 2
	energy COLORLESS, 4, ; energies
	tx AeroblastName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeWhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 3 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx SkillDiveName ; category
	db 210 ; Pokedex number
	db 91 ; level
	db 7, 3 ; length
	dw 463 * 10 ; weight
	tx DragoniteLv41Description ; description
	db 0

DunsparceCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx DunsparceCardGfx ; gfx
	tx DunsparceName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw GOOMY
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx DownDrawName ; name
	tx DownDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DowndrawCommnads ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy 0 ; energies
	dw NONE ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 147 ; Pokedex number
	db 10 ; level
	db 5, 11 ; length
	dw 7 * 10 ; weight
	tx DratiniDescription ; description
	db 18

GrassEnergyCard:
	db TYPE_ENERGY_GRASS ; type
	gfx GrassEnergyCardGfx ; gfx
	tx GrassEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw GRASS_ENERGY
	dw GrassEnergyEffectCommands ; effect commands
	tx GrassEnergyDescription ; description
	dw NONE ; description (cont)

FireEnergyCard:
	db TYPE_ENERGY_FIRE ; type
	gfx FireEnergyCardGfx ; gfx
	tx FireEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw FIRE_ENERGY
	dw FireEnergyEffectCommands ; effect commands
	tx FireEnergyDescription ; description
	dw NONE ; description (cont)

WaterEnergyCard:
	db TYPE_ENERGY_WATER ; type
	gfx WaterEnergyCardGfx ; gfx
	tx WaterEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw WATER_ENERGY
	dw WaterEnergyEffectCommands ; effect commands
	tx WaterEnergyDescription ; description
	dw NONE ; description (cont)

LightningEnergyCard:
	db TYPE_ENERGY_LIGHTNING ; type
	gfx LightningEnergyCardGfx ; gfx
	tx LightningEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw LIGHTNING_ENERGY
	dw LightningEnergyEffectCommands ; effect commands
	tx LightningEnergyDescription ; description
	dw NONE ; description (cont)

FightingEnergyCard:
	db TYPE_ENERGY_FIGHTING ; type
	gfx FightingEnergyCardGfx ; gfx
	tx FightingEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw FIGHTING_ENERGY
	dw FightingEnergyEffectCommands ; effect commands
	tx FightingEnergyDescription ; description
	dw NONE ; description (cont)

PsychicEnergyCard:
	db TYPE_ENERGY_PSYCHIC ; type
	gfx PsychicEnergyCardGfx ; gfx
	tx PsychicEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw PSYCHIC_ENERGY
	dw PsychicEnergyEffectCommands ; effect commands
	tx PsychicEnergyDescription ; description
	dw NONE ; description (cont)

DarknessEnergyCard:
	db TYPE_ENERGY_DARKNESS ; type
	gfx DarknessCardGfx ; gfx
	tx DarknessEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw DARKNESS_ENERGY
	dw DarknessEnergyEffectCommands ; effect commands
	tx DarknessEnergyDescription ; description
	dw NONE ; description (cont)

DoubleColorlessEnergyCard:
	db TYPE_ENERGY_DOUBLE_COLORLESS ; type
	gfx DoubleColorlessEnergyCardGfx ; gfx
	tx DoubleColorlessEnergyName ; name
	db DIAMOND ; rarity
	db ENERGY | NONE ; sets
	dw DOUBLE_COLORLESS_ENERGY
	dw DoubleColorlessEnergyEffectCommands ; effect commands
	tx DoubleColorlessEnergyDescription ; description
	dw NONE ; description (cont)

ProfessorOakCard:
	db TYPE_TRAINER ; type
	gfx ProfessorOakCardGfx ; gfx
	tx ProfessorOakName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PROFESSOR_OAK
	dw ProfessorOakEffectCommands ; effect commands
	tx ProfessorOakDescription ; description
	tx DratiniDescription ; description (cont)

ImposterProfessorOakCard:
	db TYPE_TRAINER ; type
	gfx ImposterProfessorOakCardGfx ; gfx
	tx ImposterProfessorOakName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw IMPOSTER_PROFESSOR_OAK
	dw ImposterProfessorOakEffectCommands ; effect commands
	tx ImposterProfessorOakDescription ; description
	dw NONE ; description (cont)

BillCard:
	db TYPE_TRAINER ; type
	gfx BillCardGfx ; gfx
	tx BillName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw BILL
	dw BillEffectCommands ; effect commands
	tx BillDescription ; description
	dw NONE ; description (cont)

MrFujiCard:
	db TYPE_TRAINER ; type
	gfx MrFujiCardGfx ; gfx
	tx MrFujiName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw MR_FUJI
	dw MrFujiEffectCommands ; effect commands
	tx MrFujiDescription ; description
	dw NONE ; description (cont)

LassCard:
	db TYPE_TRAINER ; type
	gfx LassCardGfx ; gfx
	tx LassName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw LASS
	dw LassEffectCommands ; effect commands
	tx LassDescription ; description
	dw NONE ; description (cont)

ImakuniCard:
	db TYPE_TRAINER ; type
	gfx ImakuniCardGfx ; gfx
	tx ImakuniName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw IMAKUNI_CARD
	dw ImakuniEffectCommands ; effect commands
	tx ImakuniDescription ; description
	tx ClefairyDollDescriptionCont ; description (cont)

PokemonTraderCard:
	db TYPE_TRAINER ; type
	gfx PokemonTraderCardGfx ; gfx
	tx PokemonTraderName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_TRADER
	dw PokemonTraderEffectCommands ; effect commands
	tx PokemonTraderDescription ; description
	dw NONE ; description (cont)

PokemonBreederCard:
	db TYPE_TRAINER ; type
	gfx PokemonBreederCardGfx ; gfx
	tx RareCandyName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_BREEDER
	dw PokemonBreederEffectCommands ; effect commands
	tx RareCandyDescription ; description
	dw NONE ; description (cont)

SubstituteDollCard:
	db TYPE_TRAINER ; type
	gfx SubstituteDollCardGfx ; gfx
	tx SubstituteDollName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw SUBSTITUTE_DOLL
	dw ClefairyDollEffectCommands ; effect commands
	tx ClefairyDollDescription ; description
	tx ClefairyDollDescriptionCont ; description (cont)

MysteriousFossilCard:
	db TYPE_TRAINER ; type
	gfx MysteriousFossilCardGfx ; gfx
	tx MysteriousFossilName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw MYSTERIOUS_FOSSIL
	dw MysteriousFossilEffectCommands ; effect commands
	tx ClefairyDollDescription ; description
	tx ClefairyDollDescriptionCont ; description (cont)

EnergyRetrievalCard:
	db TYPE_TRAINER ; type
	gfx EnergyRetrievalCardGfx ; gfx
	tx EnergyRetrievalName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ENERGY_RETRIEVAL
	dw EnergyRetrievalEffectCommands ; effect commands
	tx EnergyRetrievalDescription ; description
	dw NONE ; description (cont)

SuperEnergyRetrievalCard:
	db TYPE_TRAINER ; type
	gfx SuperEnergyRetrievalCardGfx ; gfx
	tx SuperEnergyRetrievalName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw SUPER_ENERGY_RETRIEVAL
	dw SuperEnergyRetrievalEffectCommands ; effect commands
	tx SuperEnergyRetrievalDescription ; description
	dw NONE ; description (cont)

EnergySearchCard:
	db TYPE_TRAINER ; type
	gfx EnergySearchCardGfx ; gfx
	tx EnergySearchName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ENERGY_SEARCH
	dw EnergySearchEffectCommands ; effect commands
	tx EnergySearchDescription ; description
	dw NONE ; description (cont)

EnergyRemovalCard:
	db TYPE_TRAINER ; type
	gfx EnergyRemovalCardGfx ; gfx
	tx EnergyRemovalName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ENERGY_REMOVAL
	dw EnergyRemovalEffectCommands ; effect commands
	tx EnergyRemovalDescription ; description
	dw NONE ; description (cont)

SuperEnergyRemovalCard:
	db TYPE_TRAINER ; type
	gfx SuperEnergyRemovalCardGfx ; gfx
	tx SuperEnergyRemovalName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw SUPER_ENERGY_REMOVAL
	dw SuperEnergyRemovalEffectCommands ; effect commands
	tx SuperEnergyRemovalDescription ; description
	dw NONE ; description (cont)

SwitchCard:
	db TYPE_TRAINER ; type
	gfx SwitchCardGfx ; gfx
	tx SwitchName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SWITCH
	dw SwitchEffectCommands ; effect commands
	tx SwitchDescription ; description
	dw NONE ; description (cont)

PokemonCenterCard:
	db TYPE_TRAINER ; type
	gfx PokemonCenterCardGfx ; gfx
	tx PokemonCenterName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw POKEMON_CENTER
	dw PokemonCenterEffectCommands ; effect commands
	tx PokemonCenterDescription ; description
	dw NONE ; description (cont)

PokeBallCard:
	db TYPE_TRAINER ; type
	gfx PokeBallCardGfx ; gfx
	tx PokeBallName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw POKE_BALL
	dw PokeBallEffectCommands ; effect commands
	tx PokeBallDescription ; description
	dw NONE ; description (cont)

ScoopUpCard:
	db TYPE_TRAINER ; type
	gfx ScoopUpCardGfx ; gfx
	tx ScoopUpName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw SCOOP_UP
	dw ScoopUpEffectCommands ; effect commands
	tx ScoopUpDescription ; description
	dw NONE ; description (cont)

ComputerSearchCard:
	db TYPE_TRAINER ; type
	gfx ComputerSearchCardGfx ; gfx
	tx ComputerSearchName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw COMPUTER_SEARCH
	dw ComputerSearchEffectCommands ; effect commands
	tx ComputerSearchDescription ; description
	dw NONE ; description (cont)

PokedexCard:
	db TYPE_TRAINER ; type
	gfx PokedexCardGfx ; gfx
	tx PokedexName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw POKEDEX
	dw PokedexEffectCommands ; effect commands
	tx PokedexDescription ; description
	dw NONE ; description (cont)

PlusPowerCard:
	db TYPE_TRAINER ; type
	gfx PlusPowerCardGfx ; gfx
	tx PlusPowerName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PLUSPOWER
	dw PlusPowerEffectCommands ; effect commands
	tx PlusPowerDescription ; description
	dw NONE ; description (cont)

DefenderCard:
	db TYPE_TRAINER ; type
	gfx DefenderCardGfx ; gfx
	tx DefenderName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw DEFENDER
	dw DefenderEffectCommands ; effect commands
	tx DefenderDescription ; description
	dw NONE ; description (cont)

ItemFinderCard:
	db TYPE_TRAINER ; type
	gfx ItemFinderCardGfx ; gfx
	tx ItemFinderName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ITEM_FINDER
	dw ItemFinderEffectCommands ; effect commands
	tx ItemFinderDescription ; description
	dw NONE ; description (cont)

GustOfWindCard:
	db TYPE_TRAINER ; type
	gfx GustOfWindCardGfx ; gfx
	tx BossOrdersName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw GUST_OF_WIND
	dw GustOfWindEffectCommands ; effect commands
	tx BossOrdersDescription ; description
	dw NONE ; description (cont)

DevolutionSprayCard:
	db TYPE_TRAINER ; type
	gfx DevolutionSprayCardGfx ; gfx
	tx DevolutionSprayName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw DEVOLUTION_SPRAY
	dw DevolutionSprayEffectCommands ; effect commands
	tx DevolutionSprayDescription ; description
	dw NONE ; description (cont)

PotionCard:
	db TYPE_TRAINER ; type
	gfx PotionCardGfx ; gfx
	tx PotionName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw POTION
	dw PotionEffectCommands ; effect commands
	tx PotionDescription ; description
	dw NONE ; description (cont)

SuperPotionCard:
	db TYPE_TRAINER ; type
	gfx SuperPotionCardGfx ; gfx
	tx SuperPotionName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw SUPER_POTION
	dw SuperPotionEffectCommands ; effect commands
	tx SuperPotionDescription ; description
	dw NONE ; description (cont)

FullHealCard:
	db TYPE_TRAINER ; type
	gfx FullHealCardGfx ; gfx
	tx FullHealName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw FULL_HEAL
	dw FullHealEffectCommands ; effect commands
	tx FullHealDescription ; description
	dw NONE ; description (cont)

ReviveCard:
	db TYPE_TRAINER ; type
	gfx ReviveCardGfx ; gfx
	tx ReviveName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw REVIVE
	dw ReviveEffectCommands ; effect commands
	tx ReviveDescription ; description
	dw NONE ; description (cont)

MaintenanceCard:
	db TYPE_TRAINER ; type
	gfx MaintenanceCardGfx ; gfx
	tx MaintenanceName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw MAINTENANCE
	dw MaintenanceEffectCommands ; effect commands
	tx MaintenanceDescription ; description
	dw NONE ; description (cont)

PokemonFluteCard:
	db TYPE_TRAINER ; type
	gfx PokemonFluteCardGfx ; gfx
	tx PokemonFluteName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_FLUTE
	dw PokemonFluteEffectCommands ; effect commands
	tx PokemonFluteDescription ; description
	dw NONE ; description (cont)

CopycatCard:
	db TYPE_TRAINER ; type
	gfx CopycatCardGfx ; gfx
	tx CopycatName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw COPYCAT
	dw GamblerEffectCommands ; effect commands
	tx CopycatDescription ; description
	dw NONE ; description (cont)

RecycleCard:
	db TYPE_TRAINER ; type
	gfx RecycleCardGfx ; gfx
	tx RecycleName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw RECYCLE
	dw RecycleEffectCommands ; effect commands
	tx RecycleDescription ; description
	dw NONE ; description (cont)
