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
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx GreenForceName ; name
	tx GreenForceDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw SunAbsorbEffectCommands ; effect commands
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
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx GaintBloomName ; name
	tx GiantBloomDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw GiantBloomEffectCommands ; effect commands
	db INFLICT_PARALYSIS/INFLICT_SLEEP ; flags 1
	db HEAL_USER/ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
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
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
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
	tx WurmpleDescription ; description
	db 16

SilcoonCard:
	db TYPE_PKMN_GRASS ; type
	gfx SilcoonCardGfx ; gfx
	tx SilcoonName ; name
	IF LC_CHALLENGE == 1 ; If LC is active, then change rarity.
	db DIAMOND ; rarity
	ELSE
	db CIRCLE ; rarity
	ENDC
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
	tx SilcoonDescription ; description
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
	tx BeautiflyDescription ; description
	db 0

RowletCard:
	db TYPE_PKMN_GRASS ; type
	gfx RowletCardGfx ; gfx
	tx RowletName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
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
	tx GrassQuillName ; category
	db 10 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 7 * 10 ; weight
	tx RowletDescription ; description
	db 16

DartrixCard:
	db TYPE_PKMN_GRASS ; type
	gfx DartrixCardGfx ; gfx
	tx DartrixName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
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
	tx BladeQuillName ; category
	db 11 ; Pokedex number
	db 26 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx DartrixDescription ; description
	db 16

DecidueyeCard:
	db TYPE_PKMN_GRASS ; type
	gfx DecidueyeCardGfx ; gfx
	tx DecidueyeName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw DECIDUEYE
	db 100 ; hp
	db STAGE2 ; stage
	tx DartrixName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx LeafArrowName ; name
	tx LeafArrowDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw LeafArrowEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK_NO_DAMAGE ; animation

	; attack 2
	energy COLORLESS, 1, GRASS, 2, ; energies
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
	tx ArrowQuillName ; category
	db 12 ; Pokedex number
	db 47 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx DecidueyeDescription ; description
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
	tx ShelmetDescription ; description
	db 16

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
	db NONE ; flags 3
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
	tx AccelgorDescription ; description
	db 0

IllumiseCard:
	db TYPE_PKMN_GRASS ; type
	gfx IllumiseCardGfx ; gfx
	tx IllumiseName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	tx IllumiseDescription ; description
	db 0

VolbeatCard:
	db TYPE_PKMN_GRASS ; type
	gfx VolbeatCardGfx ; gfx
	tx VolbeatName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw VOLBEAT
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
	tx PesterName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
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
	tx VolbeatDescription ; description
	db 0

ApplinCard:
	db TYPE_PKMN_GRASS ; type
	gfx ApplinCardGfx ; gfx
	tx ApplinName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
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
	tx ApplinDescription ; description
	db 16

FlappleCard:
	db TYPE_PKMN_GRASS ; type
	gfx FlappleCardGfx ; gfx
	tx FlappleName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw FLAPPLE
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
	tx FlappleDescription ; description
	db 0

AppletunCard:
	db TYPE_PKMN_GRASS ; type
	gfx AppletunCardGfx ; gfx
	tx AppletunName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw APPLETUN
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
	dw AppletunHealEffectCommands ; effect commands
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
	tx AppletunDescription ; description
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
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
	tx ShroomishDescription ; description
	db 16

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
	tx BreloomDescription ; description
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
	energy COLORLESS, 1 ; energies
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
	db ATK_ANIM_GLOW_ATTACK ; animation

	; attack 2
	energy GRASS, 1 ; energies
	tx SuperSpeedName ; name
	tx SuperSpeedDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SuperSpeedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
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
	tx YanmaDescription ; description
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
	db 16

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
	tx PhantumpDescription ; description
	db 16

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
	tx TrevenantDescription ; description
	db 0

SnoverCard:
	db TYPE_PKMN_GRASS ; type
	gfx SnoverCardGfx ; gfx
	tx SnoverName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw SNOVER
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx PowderSnowName ; name
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
	db WR_METAL ; weakness
	db WR_WATER ; resistance
	tx FrostTreeName ; category
	db 34 ; Pokedex number
	db 24 ; level
	db 1, 4 ; length
	dw 6 * 10 ; weight
	tx ExeggcuteDescription ; description
	db 16

AbomasnowCard:
	db TYPE_PKMN_GRASS ; type
	gfx AbomasnowCardGfx ; gfx
	tx AbomasnowName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
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
	dw SuicuneBlizzardEffectCommands ; effect commands
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
	db WR_METAL ; weakness
	db WR_WATER ; resistance
	tx FrostTreeName ; category
	db 35 ; Pokedex number
	db 45 ; level
	db 6, 7 ; length
	dw 265 * 10 ; weight
	tx ExeggutorDescription ; description
	db 0

TangelaLv8Card:
	db TYPE_PKMN_GRASS ; type
	gfx TangelaLv8CardGfx ; gfx
	tx TangelaName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw TANGELA
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
	db MYSTERY | NONE ; sets
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
	db SPECIAL_AI_HANDLING ; flags 3
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
	tx TangrowthDescription ; description
	db 0

ScytherCard:
	db TYPE_PKMN_GRASS ; type
	gfx ScytherCardGfx ; gfx
	tx ScytherName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
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

LeafeonCard:
	db TYPE_PKMN_GRASS ; type
	gfx LeafeonCardGfx ; gfx
	tx LeafeonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw LEAFEON
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx GreeningCellsName ; name
	tx GreeningCellsDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw GreeningCellsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx LeafGuardName ; name
	tx SteelWingDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MinimizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PROTECT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_LIGHTNING ; resistance
	tx VerdantName ; category
	db 95 ; Pokedex number
	db 42 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx LeafeonDescription ; description
	db 0

GrookeyCard:
	db TYPE_PKMN_GRASS ; type
	gfx GrookeyCardGfx ; gfx
	tx GrookeyName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw GROOKEY
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy COLORLESS, 1, GRASS, 1 ; energies
	tx RazorLeafName ; name
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
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx DrummerName ; category
	db 29 ; Pokedex number
	db 15 ; level
	db 2, 4 ; length
	dw 9 * 10 ; weight
	tx GrookeyDescription ; description
	db 16

ThwackeyCard:
	db TYPE_PKMN_GRASS ; type
	gfx ThwackeyCardGfx ; gfx
	tx ThwackeyName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw THWACKEY
	db 80 ; hp
	db STAGE1 ; stage
	tx GrookeyName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
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

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx KnockOffName; name
	tx KnockOffDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw KnockOffEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx DrummerName ; category
	db 30 ; Pokedex number
	db 33 ; level
	db 3, 3 ; length
	dw 14 * 10 ; weight
	tx ThwackeyDescription ; description
	db 16

RillaboomCard:
	db TYPE_PKMN_GRASS ; type
	gfx RillaboomCardGfx ; gfx
	tx RillaboomName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw RILLABOOM
	db 120 ; hp
	db STAGE2 ; stage
	tx ThwackeyName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx JungleSpiritName ; name
	tx JungleSpiritDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MukToxicGasEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 2 ; energies
	tx DrumBeatingName ; name
	tx DrumBeatingDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw DrumBeatingEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx DrummerName ; category
	db 31 ; Pokedex number
	db 65 ; level
	db 5, 7 ; length
	dw 34 * 10 ; weight
	tx RillaboomDescription ; description
	db 0

RoseliaCard:
	db TYPE_PKMN_GRASS ; type
	gfx RoseliaCardGfx ; gfx
	tx RoseliaName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw ROSELIA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx LeechSeedName ; name
	tx ExeggcutesLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggcuteLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx PetalSpikeName ; name
	tx PetalSpikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PetalSpikeEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx ThornName ; category
	db 29 ; Pokedex number
	db 23 ; level
	db 2, 4 ; length
	dw 9 * 10 ; weight
	tx RoseliaDescription ; description
	db 16

RoseradeCard:
	db TYPE_PKMN_GRASS ; type
	gfx RoseradeCardGfx ; gfx
	tx RoseradeName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw ROSERADE
	db 80 ; hp
	db STAGE1 ; stage
	tx RoseliaName ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx PetalSpikeName ; name
	tx PetalSpikeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PetalSpikeEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 1
	energy GRASS, 3; energies
	tx AssassinsRoseName ; name
	tx AssassinsRoseDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw AssassinsRoseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx ThornName ; category
	db 30 ; Pokedex number
	db 57 ; level
	db 3, 3 ; length
	dw 14 * 10 ; weight
	tx RoseradeDescription ; description
	db 16

WimpodCard:
	db TYPE_PKMN_GRASS ; type
	gfx WimpodCardGfx ; gfx
	tx WimpodName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw WIMPOD
	db 40 ; hp
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

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx WimpodName ; category
	db 117 ; Pokedex number
	db 8 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx WimpodDescription ; description
	db 16

GolisopodCard:
	db TYPE_PKMN_GRASS ; type
	gfx GolisopodCardGfx ; gfx
	tx GolisopodName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw GOLISOPOD
	db 90 ; hp
	db STAGE1 ; stage
	tx WimpodName ; pre-evo name

	; attack 1
	energy GRASS, 2 ; energies
	tx FirstImpressionName ; name
	tx FirstImpressionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw FirstImpresionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx FlipTurnName ; name
	tx FlipTurnDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_GRASS ; resistance
	tx HardScaleName ; category
	db 117 ; Pokedex number
	db 44 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx GolisopodDescription ; description
	db 16

;--FIRE--
TepigCard:
	db TYPE_PKMN_FIRE ; type
	gfx TepigCardGfx ; gfx
	tx TepigName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw TEPIG
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
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
	energy FIRE, 2, COLORLESS, 1 ; energies
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
	db MYSTERY | NONE ; sets
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
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	dw BurnEffectEffectCommands ; effect commands
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
	db CIRCLE ; rarity
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
	db SPECIAL_AI_HANDLING ; flags 3
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
	db 16

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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx BurstinginfernoName ; name
	tx BurstinginfernoDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw BurstinginfernoEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
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
	db LABORATORY | NONE ; sets
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
	tx NumelDescription ; description
	db 16

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
	dw EnteiFiregiverEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIREGIVER ; animation

	; attack 2
	energy COLORLESS, 1, FIRE, 2 ; energies
	tx CinderCannonName ; name
	tx CinderCannonDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
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
	tx CameruptDescription ; description
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
	tx RecklessChargeName ; name
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

	; attack 2
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
	db WR_METAL ; resistance
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
	tx PyroarDescription ; description
	db 0

FlareonLv28Card:
	db TYPE_PKMN_FIRE ; type
	gfx FlareonLv28CardGfx ; gfx
	tx FlareonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw FLAREON
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
	db LABORATORY | NONE ; sets
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
	tx EnteiLv35Description ; description
	db 0

LitwickCard:
	db TYPE_PKMN_FIRE ; type
	gfx LitwickCardGfx ; gfx
	tx LitwickName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw LITWICK
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx KindlingPanicName ; name
	tx Discard1cardfromTopOPDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KindlingPanicEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 1 ; energies
	tx WillOWispName ; name
	tx InflictBurnDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw BurnEffectEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SMALL_FLAME ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx CandleName ; category
	db 46 ; Pokedex number
	db 26 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx LitwickDescription ; description
	db 16

LampentCard:
	db TYPE_PKMN_FIRE ; type
	gfx LampentCardGfx ; gfx
	tx LampentName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw LAMPENT
	db 70 ; hp
	db STAGE1 ; stage
	tx LitwickName ; pre-evo name

	; attack 1
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx LuringGlowName ; name
	tx LuringGlowDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw BurnLureEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_EFFECT ; animation

	; attack 2
	energy FIRE, 2 ; energies
	tx PunishingEmbersName ; name
	tx PunishingEmbersDescripion ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PunishingEmbersEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx LampName ; category
	db 47 ; Pokedex number
	db 46 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx LampentDescription ; description
	db 16

ChandelureCard:
	db TYPE_PKMN_FIRE ; type
	gfx ChandelureCardGfx ; gfx
	tx ChandelureName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw CHANDELURE
	db 100 ; hp
	db STAGE2 ; stage
	tx LampentName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BurningDownName ; name
	tx BurningDownDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw Mills3EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animations

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx SoulBurnerName ; name
	tx SoulBurnerDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw SoulBurnerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx LampName ; category
	db 48 ; Pokedex number
	db 62 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx ChandelureDescription ; description
	db 0

MagbyCard:
	db TYPE_PKMN_FIRE ; type
	gfx MagbyCardGfx ; gfx
	tx MagbyName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGBY
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StrangeEvolutionName ; name
	tx StrangeEvolutionMagmarDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw StrangeEvolutionMagbyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx IgniteName ; name
	tx IgniteDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw IgniteEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_SMALL_FLAME ; animation

	db 0 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx LiveCoalName ; category
	db 117 ; Pokedex number
	db 5 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx MagbyDescription ; description
	db 0

MagmarLv24Card:
	db TYPE_PKMN_FIRE ; type
	gfx MagmarLv24CardGfx ; gfx
	tx MagmarName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGMAR
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx LiveCoalName ; name
	tx LiveCoalDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LiveCoalEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db NONE ; animation

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

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx SpitfireName ; category
	db 126 ; Pokedex number
	db 24 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmarLv24Description ; description
	db 16

MagmortarCard:
	db TYPE_PKMN_FIRE ; type
	gfx MagmortarCardGfx ; gfx
	tx MagmortarName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGMORTAR
	db 90 ; hp
	db STAGE1 ; stage
	tx MagmarName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx SmokeBombName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MeowthSandAttackEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation
	
	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx BoltsplosionName ; name
	tx BoltsplosionDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw BoltsplosionEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_BIG_SELFDESTRUCTION ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_METAL ; resistance
	tx BlastName ; category
	db 70 ; Pokedex number
	db 67 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmortarDescription ; description
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
	dw EnteiFiregiverEffectCommands ; effect commands
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
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
	tx EnteiLv37Description ; description
	db 0

FuecocoCard:
	db TYPE_PKMN_FIRE ; type
	gfx FuecocoCardGfx ; gfx
	tx FuecocoName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
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
	db EVOLUTION | NONE ; sets
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
	dw FlappleFoulOdorEffectCommands ; effect commands
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
	db EVOLUTION | NONE ; sets
	dw SKELEDIRGE
	db 110 ; hp
	db STAGE2 ; stage
	tx CrocalorName ; pre-evo name

	; attack 1
    energy 0 ; energies
    tx SpectralFlamesName ; name
    tx SpectralFlamesDescription ; description
	tx PKMNPowerCondition ; description (cont)
    db 0 ; damage
    db POKEMON_POWER ; category
    dw DeepSleepEffectCommands ; effect commands
    db NONE ; flags 1
    db NONE ; flags 2
    db NONE ; flags 3
    db 0
    db ATK_ANIM_PKMN_POWER_1
	
	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx KarateChopName ; name
	tx BurningVoiceDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw BurningVoiceEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

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

SalanditCard:
	db TYPE_PKMN_FIRE ; type
	gfx SalanditCardGfx ; gfx
	tx SalanditName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SALANDIT
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
	tx VenoshockName ; name
	tx PoisonBoostDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw PoisonBoostEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx ToxicName ; category
	db 55 ; Pokedex number
	db 12 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx SalanditDescription ; description
	db 16

Salazzle:
	db TYPE_PKMN_FIRE ; type
	gfx SalazzleGfx ; gfx
	tx SalazzleName ; name
	db DIAMOND ; rarity
	db COLOSSEUM |	NONE ; sets
	dw SALAZZLE
	db 70 ; hp
	db STAGE1 ; stage
	tx SalanditName ; pre-evo name

	; attack 1
	energy FIRE, 1, ; energies
	tx BurningPoisonName ; name
	tx BurningPoisonDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw BurningPoisonEffectCommands ; effect commands
	db INFLICT_POISON | INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx DerisiveRoastingName ; name
	tx DerisiveRoastingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw DerisiveRoastingEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_FLAME ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx ToxicName ; category
	db 90 ; Pokedex number
	db 45 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx SalazzleDescription ; description
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
	db ATK_ANIM_GLOW_ATTACK ; animation

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
	db LOST_ISLE | NONE ; sets
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
	tx DruddigonDescription ; description
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

CharmanderCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmanderCardGfx ; gfx
	tx CharmanderName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw CHARMANDER
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
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
	db WR_GRASS ; resistance
	tx FlameName ; category
	db 61 ; Pokedex number
	db 15 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx CharmanderDescription ; description
	db 16

CharmeleonCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmeleonCardGfx ; gfx
	tx CharmeleonName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw CHARMELEON
	db 70 ; hp
	db STAGE1 ; stage
	tx CharmanderName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx FireFangName ; name
	tx InflictBurnDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw BurnEffectEffectCommands ; effect commands
	db BURNED ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation
	
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

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FlameName ; category
	db 62 ; Pokedex number
	db 29 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx CharmeleonDescription ; description
	db 16

CharizardCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharizardCardGfx ; gfx
	tx CharizardName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw CHARIZARD
	db 120 ; hp
	db STAGE2 ; stage
	tx CharmeleonName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx IgniteName ; name
	tx IgniteDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw IgniteEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_SMALL_FLAME ; animation
	
	; attack 2
	energy FIRE, 3, COLORLESS, 1 ; energies
	tx BlastBurnName ; name
	tx BlastBurnDescription ; description
	dw NONE ; description (cont)
	db 100 ; damage
	db DAMAGE_NORMAL ; category
	dw BurningVoiceEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_SPIN; animation

	db 4 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FlameName ; category
	db 63 ; Pokedex number
	db 76 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx CharizardDescription ; description
	db 0

FletchlingCard:
	db TYPE_PKMN_FIRE ; type
	gfx FletchlingCardGfx ; gfx
	tx FletchlingName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw FLETCHLING
	db 40 ; hp
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
	energy FIRE, 1 ; energies
	tx EmberName ; name
	tx do10ifDiscardDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw EmberYesNoEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx TinyBirdName ; category
	db 61 ; Pokedex number
	db 12 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx FletchlingDescription ; description
	db 16

FletchinderCard:
	db TYPE_PKMN_FIRE ; type
	gfx FletchinderCardGfx ; gfx
	tx FletchinderName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw FLETCHINDER
	db 60 ; hp
	db STAGE1 ; stage
	tx FletchlingName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx FastFlightName ; name
	tx DownDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DowndrawCommnads ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation
	
	; attack 2
	energy FIRE, 1 ; energies
	tx HeatDiveName ; name
	tx FirePunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw FirePunchEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx EmberName ; category
	db 62 ; Pokedex number
	db 27 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx FletchinderDescription ; description
	db 16

TalonflameCard:
	db TYPE_PKMN_FIRE ; type
	gfx TalonflameCardGfx ; gfx
	tx TalonflameName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw TALONFLAME
	db 90 ; hp
	db STAGE2 ; stage
	tx FletchinderName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx NitroDrawName ; name
	tx NitroDrawDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw NitroDrawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation
	
	; attack 2
	energy FIRE, 1 ; energies
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
	tx ScorchingName ; category
	db 63 ; Pokedex number
	db 52 ; level
	db 5, 7 ; length
	dw 200 * 10 ; weight
	tx TalonflameDescription ; description
	db 0

LarvestaCard:
	db TYPE_PKMN_FIRE ; type
	gfx LarvestaCardGfx ; gfx
	tx LarvestaName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw LARVESTA
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
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

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx SunName ; category
	db 61 ; Pokedex number
	db 29 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx LarvestaDescription ; description
	db 16

VolcaronaCard:
	db TYPE_PKMN_FIRE ; type
	gfx VolcaronaCardGfx ; gfx
	tx VolcaronaName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw VOLCARONA
	db 80 ; hp
	db STAGE1 ; stage
	tx LarvestaName ; pre-evo name

	; attack 1
    energy 0 ; energies
    tx ScorchingScalesName ; name
    tx ScorchingScalesDescription ; description
	tx PKMNPowerCondition ; description (cont)
    db 0 ; damage
    db POKEMON_POWER ; category
    dw DeepSleepEffectCommands ; effect commands
    db NONE ; flags 1
    db NONE ; flags 2
    db NONE ; flags 3
    db 0
    db ATK_ANIM_PKMN_POWER_1
	
	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx GigaDrainName ; name
	tx ButterfreesMegaDrainDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx SunName ; category
	db 62 ; Pokedex number
	db 67 ; level
	db 3, 7 ; length
	dw 42 * 10 ; weight
	tx VolcaronaDescription ; description
	db 16

;--Water--
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
	db ATK_ANIM_GLOW_ATTACK ; animation

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

FrogadierCard:
	db TYPE_PKMN_WATER ; type
	gfx FrogadierCardGfx ; gfx
	tx FrogadierName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw FROGADIER
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
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
	tx FrogadierDescription ; description
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
	tx FrogadierName ; pre-evo name

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
	db 16

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
	db WR_METAL ; resistance
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
	db COLOSSEUM | NONE ; sets
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
	tx BiteName ; category
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
	db MYSTERY | NONE ; sets
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
	tx TympoleDescription ; description
	db 16

PalpitoadCard:
	db TYPE_PKMN_WATER ; type
	gfx PalpitoadCardGfx ; gfx
	tx PalpitoadName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	dw SandacondaEarthquakeEffectCommands ; effect commands
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
	tx PalpitoadDescription ; description
	db 16

SeismitoadCard:
	db TYPE_PKMN_WATER ; type
	gfx SeismitoadCardGfx ; gfx
	tx SeismitoadName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
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
	tx SeismitoadDescription ; description
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
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
	db SPECIAL_AI_HANDLING ; flags 3
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

SnoruntCard:
	db TYPE_PKMN_WATER ; type
	gfx SnoruntCardGfx ; gfx
	tx SnoruntName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw SNORUNT
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1, ; energies
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

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx PowderSnowName ; name
	tx MayInflictSleepDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GastlySleepingGasEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BLIZZARD ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx SnowName ; category
	db 86 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx SnoruntDescription ; description
	db 16

GlalieCard:
	db TYPE_PKMN_WATER ; type
	gfx GlalieCardGfx ; gfx
	tx GlalieName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw GLALIE
	db 80 ; hp
	db STAGE1 ; stage
	tx SnoruntName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx IceWallName ; name
	tx IceWallDescription ; description
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
	energy WATER, 2, COLORLESS, 1 ; energies
	tx CryoMouthName ; name
	tx CryoMouthDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw CryoMouthEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BLIZZARD ; animation

	db 2 ; retreat cost
	db WR_METAL ; weakness
	db WR_WATER ; resistance
	tx SnowName ; category
	db 87 ; Pokedex number
	db 43 ; level
	db 4, 3 ; length
	dw 132 * 10 ; weight
	tx GlalieDescription ; description
	db 0

FroslassCard:
	db TYPE_PKMN_WATER ; type
	gfx FroslassCardGfx ; gfx
	tx FroslassName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw FROSLASS
	db 70 ; hp
	db STAGE1 ; stage
	tx SnoruntName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx SilentFateName ; name
	tx SilentFateDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SilentFateEffectCommands ; effect commands
	db INFLICT_SLEEP|INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db NONE ; animation

	; attack 2
	energy COLORLESS, 1, WATER, 1 ; energies
	tx CryoBlizzardName ; name
	tx CryoBlizzardDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw CryoBlizzardEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_BLIZZARD ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx SnowName ; category
	db 87 ; Pokedex number
	db 45 ; level
	db 4, 3 ; length
	dw 132 * 10 ; weight
	tx FroslassDescription ; description
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
	db NONE ; flags 3
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
	db 16

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
	dw LugiaHealingWindEffectCommands ; effect commands
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
	db EVOLUTION | NONE ; sets
	dw CLAUNCHER
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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
	db EVOLUTION | NONE ; sets
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
	db LABORATORY | NONE ; sets
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx SmokescreenName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
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
	db 16 ; level
	db 1, 4 ; length
	dw 18 * 10 ; weight
	tx HorseaDescription ; description
	db 16

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
	db ATK_ANIM_NONE ; animation

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
	db WR_METAL ; resistance
	tx DragonName ; category
	db 89 ; Pokedex number
	db 33 ; level
	db 3, 1 ; length
	dw 55 * 10 ; weight
	tx SeadraDescription ; description
	db 16

KingdraCard:
	db TYPE_PKMN_WATER ; type
	gfx KingdraGfx ; gfx
	tx KingdraName ; name
	db STAR ; rarity
	db LABORATORY |	NONE ; sets
	dw KINGDRA
	db 100 ; hp
	db STAGE2 ; stage
	tx SeadraName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx GeneticMemoryName ; name
	tx WatersOfRemembranceDescription ; description
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
	energy WATER, 3 ; energies
	tx HydroPumpName ; name
	tx HydroPumpDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw VaporeonHydroPumpEffectCommands ; effect commands
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db 0
	db ATK_ANIM_HYDRO_PUMP ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_METAL ; resistance
	tx DragonName ; category
	db 90 ; Pokedex number
	db 55 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx KingdraDescription ; description
	db 0

BasculinCard:
	db TYPE_PKMN_WATER ; type
	gfx BasculinCardGfx ; gfx
	tx BasculinName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw BASCULIN
	db 40 ; hp
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
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
	tx BasculinDescription ; description
	db 21

Basculegion:
	db TYPE_PKMN_WATER ; type
	gfx BasculegionGfx ; gfx
	tx BasculegionName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw BASCULEGION
	db 70 ; hp
	db STAGE1 ; stage
	tx BasculinName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx WatersOfRemembranceName ; name
	tx WatersOfRemembranceDescription ; description
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
	tx BasculegionDescription ; description
	db 0

DewpiderCard:
	db TYPE_PKMN_WATER ; type
	gfx DewpiderCardGfx ; gfx
	tx DewpiderName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
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
	energy WATER, 1, COLORLESS, 1 ; energies
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
	db MYSTERY | NONE ; sets
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
	dw WeavileBubblebeamEffectCommands ; effect commands
	db NONE ; flags 1
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
	db MYSTERY | NONE ; sets
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 2, WATER, 1 ; energies
	tx RecklessChargeName ; name
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
	tx ChewtleDescription ; description
	db 16

DrednawCard:
	db TYPE_PKMN_WATER ; type
	gfx DrednawCardGfx ; gfx
	tx DrednawName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
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
	tx DrednawDescription ; description
	db 0

MudkipCard:
	db TYPE_PKMN_WATER ; type
	gfx MudkipCardGfx ; gfx
	tx MudkipName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MUDKIP
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
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

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx MudSlapName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MeowthSandAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx MudFishName ; category
	db 117 ; Pokedex number
	db 14 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx MudkipDescription ; description
	db 16

MarshtompCard:
	db TYPE_PKMN_WATER ; type
	gfx MarshtompCardGfx ; gfx
	tx MarshtompName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MARSHTOMP
	db 80 ; hp
	db STAGE1 ; stage
	tx MudkipName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx MudslideName ; name
	tx MudslideDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MudslideEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx DigName ; name
	tx EarthquakeDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw SandacondaEarthquakeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx MudFishName ; category
	db 117 ; Pokedex number
	db 28 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx MarshtompDescription ; description
	db 16

SwampertCard:
	db TYPE_PKMN_WATER ; type
	gfx SwampertCardGfx ; gfx
	tx SwampertName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SWAMPERT
	db 110 ; hp
	db STAGE2 ; stage
	tx MarshtompName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EnergyDrawName ; name
	tx EnergyDrawDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw EnergyDrawEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx TidalClashName ; name
	tx TidalClashDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw DragonVortexEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_WATER_JETS ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx MudFishName ; category
	db 117 ; Pokedex number
	db 53 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx SwampertDescription ; description
	db 0

MagikarpCard:
	db TYPE_PKMN_WATER ; type
	gfx MagikarpCardGfx ; gfx
	tx MagikarpName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw MAGIKARP
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FlailName ; name
	tx MagikarpsFlailDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db COSTLESS|DAMAGE_X ; category
	dw FlailEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx RapidEvolutionName ; name
	tx RapidEvolutionDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw RapidEvolutionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx FishName ; category
	db 117 ; Pokedex number
	db 14 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx MagikarpDescription ; description
	db 16

GyaradosCard:
	db TYPE_PKMN_WATER ; type
	gfx GyaradosCardGfx ; gfx
	tx GyaradosName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw GYARADOS
	db 100 ; hp
	db STAGE1 ; stage
	tx MagikarpName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx TailRevengeName ; name
	tx TailRevengeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw TailRevengeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 4 ; energies
	tx WaveCrashName ; name
	tx WaveCrashDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw WaveCrashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx AtrociusName ; category
	db 117 ; Pokedex number
	db 72 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx GyaradosDescription ; description
	db 16

VaporeonLv42Card:
	db TYPE_PKMN_WATER ; type
	gfx VaporeonLv42CardGfx ; gfx
	tx VaporeonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw VAPOREON
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
	db 30 ; damage
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

GlaceonCard:
	db TYPE_PKMN_WATER ; type
	gfx GlaceonCardGfx ; gfx
	tx GlaceonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw GLACEON
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FreezingGazeName ; name
	tx FreezingGazeDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FreezingGazeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx IcePillarName ; name
	tx IcePillarDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw PillarEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db WR_WATER ; resistance
	tx SnowName ; category
	db 95 ; Pokedex number
	db 44 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx GlaceonDescription ; description
	db 0

SwinubCard:
	db TYPE_PKMN_WATER ; type
	gfx SwinubCardGfx ; gfx
	tx SwinubName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw SWINUB
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx PowderSnowName ; name
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
	energy COLORLESS, 1, WATER, 1 ; energies
	tx RecklessChargeName ; name
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

	db 2 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx SwineName ; category
	db 77 ; Pokedex number
	db 19 ; level
	db 2, 0 ; length
	dw 27 * 10 ; weight
	tx SwinubDescription ; description
	db 16

PiloswineCard:
	db TYPE_PKMN_WATER ; type
	gfx PiloswineCardGfx ; gfx
	tx PiloswineName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw PILOSWINE
	db 90 ; hp
	db STAGE1 ; stage
	tx SwinubName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, WATER, 1 ; energies
	tx IceFangName ; name
	tx LeerDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw LeerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx ChargeDashName ; name
	tx DamageCounterDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw CounterpunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 3 ; retreat cost
	db WR_METAL ; weakness
	db WR_LIGHTNING ; resistance
	tx SwineName ; category
	db 78 ; Pokedex number
	db 38 ; level
	db 3, 4 ; length
	dw 44 * 10 ; weight
	tx PiloswineDescription ; description
	db 16

MamoswineCard:
	db TYPE_PKMN_WATER ; type
	gfx MamoswineCardGfx ; gfx
	tx MamoswineName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw MAMOSWINE
	db 120 ; hp
	db STAGE2 ; stage
	tx PiloswineName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx IcicleCrashName ; name
	tx IcicleCrashDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw IcicleCrashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 2 ; energies
	tx EarthquakeName ; name
	tx EarthquakeDescription ; description
	dw NONE ; description (cont)
	db 90 ; damage
	db DAMAGE_NORMAL ; category
	dw SandacondaEarthquakeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_METAL ; weakness
	db WR_LIGHTNING ; resistance
	tx SwineName ; category
	db 79 ; Pokedex number
	db 74 ; level
	db 4, 3 ; length
	dw 119 * 10 ; weight
	tx MamoswineDescription ; description
	db 0

RelicanthCard:
	db TYPE_PKMN_WATER ; type
	gfx RelicanthCardGfx ; gfx
	tx RelicanthName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
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
	db NONE ; flags 3
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
	tx RelicanthDescription ; description
	db 0

RegiceCard:
	db TYPE_PKMN_WATER ; type
	gfx RegiceCardGfx ; gfx
	tx RegiceName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw REGICE
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx QuickfreezeName ; name
	tx QuickfreezeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SuicuneQuickfreezeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
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

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx FreezeName ; category
	db 144 ; Pokedex number
	db 80 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx RegiceDescription ; description
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
	dw SuicuneQuickfreezeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
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
	db 87 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx SuicuneDescription ; description
	db 0

;--Lightning--
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
	db NONE ; flags 1
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
	db 16

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
	db COLOSSEUM | NONE ; sets
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
	db COLOSSEUM | NONE ; sets
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
	db LOST_ISLE | NONE ; sets
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
	db MYSTERY | NONE ; sets
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
	db MYSTERY | NONE ; sets
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
	db WR_METAL ; resistance
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
	db MYSTERY | NONE ; sets
	dw LUXRAY
	db 100 ; hp
	db STAGE2 ; stage
	tx LuxioName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StepInName ; name
	tx StepInDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw LugiaStepInEffectCommands ; effect commands
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
	db WR_METAL ; resistance
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	db LABORATORY | NONE ; sets
	dw MAGNEMITE
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
	db 16

MagnetonLv28Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MagnetonLv28CardGfx ; gfx
	tx MagnetonName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw MAGNETON
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
	db LABORATORY | NONE ; sets
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
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
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
	tx MagnezoneDescription ; description
	db 0

ToxelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ToxelCardGfx ; gfx
	tx ToxelName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
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
	db EVOLUTION | NONE ; sets
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
	db SPECIAL_AI_HANDLING ; flags 3
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
	db EVOLUTION | NONE ; sets
	dw TOXTRICITY_LOW
	db 70 ; hp
	db STAGE1 ; stage
	tx ToxelName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
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
	energy LIGHTNING, 2, COLORLESS, 1, ; energies
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
	db LABORATORY | NONE ; sets
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
	db NONE ; flags 3
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
	tx ElectrikeDescription ; description
	db 16

ManectricCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ManectricCardGfx ; gfx
	tx ManectricName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
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
	db WR_METAL ; resistance
	tx DischargeName ; category
	db 119 ; Pokedex number
	db 44 ; level
	db 2, 7 ; length
	dw 54 * 10 ; weight
	tx ManectricDescription ; description
	db 0

WattrelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx WattrelCardGfx ; gfx
	tx WattrelName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw WATTREL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx VoltSwitchName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation
	
	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx StaticBuildupName ; name
	tx StickyWebDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw IncreaseRetreatCostCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_THUNDERSHOCK ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx ElectronName ; category
	db 125 ; Pokedex number
	db 17 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx WattrelDescription ; description
	db 0

KilowattrelCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx KilowattrelCardGfx ; gfx
	tx KilowattrelName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw KILOWATTREL
	db 70 ; hp
	db STAGE1 ; stage
	tx WattrelName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx WhirlwindName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeWhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx FlashPressureName; name
	tx SpiritBreakDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SpiritBreakEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 0 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIGHTING ; resistance
	tx ElectronName ; category
	db 206 ; Pokedex number
	db 42 ; level
	db 6, 11 ; length
	dw 1014 * 10 ; weight
	tx KilowattrelDescription ; description
	db 0

MareepCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx MareepCardGfx ; gfx
	tx MareepName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MAREEP
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
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

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx WoolName ; category
	db 122 ; Pokedex number
	db 9 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx MareepDescription ; description
	db 16

FlaaffyCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx FlaaffyCardGfx ; gfx
	tx FlaaffyName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw FLAAFFY
	db 70 ; hp
	db STAGE1 ; stage
	tx MareepName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
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
	
	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1, ; energies
	tx StaticKickName ; name
	tx StaticKickDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw StaticKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_METAL ; resistance
	tx WoolName ; category
	db 123 ; Pokedex number
	db 25 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx FlaaffyDescription ; description
	db 16

AmpharosCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx AmpharosCardGfx ; gfx
	tx AmpharosName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw AMPHAROS
	db 100 ; hp
	db STAGE2 ; stage
	tx FlaaffyName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ConductivityName ; name
	tx ConductivityDescription ; description
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
	energy LIGHTNING, 2, COLORLESS, 1, ; energies
	tx GigavoltName ; name
	tx GigavoltDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw GigavoltEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERBOLT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_METAL ; resistance
	tx LightningName ; category
	db 124 ; Pokedex number
	db 53 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx AmpharosDescription ; description
	db 0
JolteonLv29Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx JolteonLv29CardGfx ; gfx
	tx JolteonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
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
	db SPECIAL_AI_HANDLING ; flags 3
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
	tx SkorupiDescription ; description
	db 16

CharjabugCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx CharjabugCardGfx ; gfx
	tx CharjabugName ; name
	db DIAMOND ; rarity
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
	db SPECIAL_AI_HANDLING ; flags 3
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
	tx CharjabugDescription ; description
	db 16

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
	tx ElectroCannonDescription ; description
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
	tx VikavoltDescription ; description
	db 0

ZeraoraCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZeraoraCardGfx ; gfx
	tx ZeraoraName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
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
	tx RaikouLv64Description ; description
	db 0

RaikouCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx RaikouCardGfx ; gfx
	tx RaikouName ; name
	db PROMOSTAR ; rarity
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
	dw RaikouPealOfThunderEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PEAL_OF_THUNDER ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
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
	tx RaikouLv68Description ; description
	db 0

TynamoCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx TynamoCardGfx ; gfx
	tx TynamoName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
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
	db 16

EelektrikCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx EelektrikCardGfx ; gfx
	tx EelektrikName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
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
	dw SuicuneQuickfreezeEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation
	
	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1, ; energies
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
	tx EelektrikDescription ; description
	db 16

EelektrossCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx EelektrossCardGfx ; gfx
	tx EelektrossName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
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
	energy LIGHTNING, 2, COLORLESS, 1, ; energies
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
	tx EelektrossDescription ; description
	db 0

ElekidCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElekidCardGfx ; gfx
	tx ElekidName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw ELEKID
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 2
	energy 0 ; energies
	tx StrangeEvolutionName ; name
	tx StrangeEvolutionElectabuzzDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw StrangeEvolutionElekidEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 1 ; energies
	tx GatherEnergyName ; name
	tx GatherEnergyDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GatherEnergyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT ; animation

	db 0 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx ElectricName ; category
	db 117 ; Pokedex number
	db 9 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElekidDescription ; description
	db 0

ElectabuzzLv35Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectabuzzLv35CardGfx ; gfx
	tx ElectabuzzName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ELECTABUZZ
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx PlasmaName ; name
	tx PlasmaDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx ThunderpunchName ; name
	tx ThunderpunchDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzThunderpunchEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERPUNCH ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ElectricName ; category
	db 117 ; Pokedex number
	db 35 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElectabuzzLv35Description ; description
	db 16

ElectivireCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectivireCardGfx ; gfx
	tx ElectivireName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw ELECTIVIRE
	db 90 ; hp
	db STAGE1 ; stage
	tx ElectabuzzName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx DoubleShockName ; name
	tx DoubleShockDescrition ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw DoubleShockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDERSHOCK ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx StaticOverloadName ; name
	tx StaticOverloadDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw StaticOverloadEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDER ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx ThunderboltName ; category
	db 117 ; Pokedex number
	db 66 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElectivireDescription ; description
	db 0

PichuCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx PichuCardGfx ; gfx
	tx PichuName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw PICHU
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 2
	energy 0 ; energies
	tx StrangeEvolutionName ; name
	tx StrangeEvolutionPichuDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw StrangeEvolutionPichuEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy COLORLESS, 1 ; energies
	tx ZzzapName ; name
	tx ZzzapDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GatherEnergyEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT ; animation

	db 0 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 117 ; Pokedex number
	db 9 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx PichuDescription ; description
	db 0

PikachuCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx PikachuCardGfx ; gfx
	tx PikachuName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PIKACHU
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

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

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx VoltTackleName ; name
	tx VoltTackleDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw VoltTackleEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 117 ; Pokedex number
	db 27 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx PikachuDescription ; description
	db 16

RaichuCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx RaichuCardGfx ; gfx
	tx RaichuName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw RAICHU
	db 70 ; hp
	db STAGE1 ; stage
	tx PikachuName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx EnergizeName ; name
	tx EnergizeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 3, COLORLESS, 1 ; energies
	tx CircleCircuitName ; name
	tx CircleCircuitDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw CircleCircuitEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 117 ; Pokedex number
	db 48 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx RaichuDescription ; description
	db 0

JoltikCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx JoltikCardGfx ; gfx
	tx JoltikName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw JOLTIK
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx LeechLifeName ; name
	tx LeechLifeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db COSTLESS ; category
	dw LeechLifeEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	; attack 2
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
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx EleSpiderName ; category
	db 122 ; Pokedex number
	db 6 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx JoltikDescription ; description
	db 16

GalvantulaCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx GalvantulaCardGfx ; gfx
	tx GalvantulaName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw GALVANTULA
	db 70 ; hp
	db STAGE1 ; stage
	tx JoltikName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx ElectrowebName ; name
	tx ElectrowebDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectroWebEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GOO ; animation
	
	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx CobwebTripName ; name
	tx AttractDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw VictreebelLureEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db INFLICT_CONFUSION ; flags 3
	db 0
	db ATK_ANIM_STRING_SHOT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx EleSpiderName ; category
	db 123 ; Pokedex number
	db 46 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx GalvantulaDescription ; description
	db 16

RegielekiCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx RegielekiCardGfx ; gfx
	tx RegielekiName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw REGIELEKI
	db 90 ; hp
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

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx LightningName ; category
	db 120 ; Pokedex number
	db 80 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx RegielekiDescription ; description
	db 0

;--Fightning--
SilicobraCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SilicobraCardGfx ; gfx
	tx SilicobraName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
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
	tx SilicobraDescription ; description
	db 16

SandacondaCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandacondaCardGfx ; gfx
	tx SandacondaName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	dw MeowthSandAttackEffectCommands ; effect commands
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
	tx SandacondaDescription ; description
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
	dw MeowthSandAttackEffectCommands ; effect commands
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
	db COLOSSEUM | NONE ; sets
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
	db 30 ; damage
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
	dw SandacondaEarthquakeEffectCommands ; effect commands
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
	db 16

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
	db NONE ; flags 3
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
	tx PKMNPowerCondition ; description (cont)
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
	IF LC_CHALLENGE == 1 ; If LC is active, then change rarity.
	db DIAMOND ; rarity
	ELSE
	db CIRCLE ; rarity
	ENDC
	db COLOSSEUM | NONE ; sets
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
	energy FIGHTING, 2, COLORLESS, 1 ; energies
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
	tx Hawlucha ; description
	db 0

RioluCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx RioluCardGfx ; gfx
	tx RioluName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw RIOLU
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx VacuumWaveName ; name
	tx VacuumWaveDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw VacuumEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx QuickAttackName ; name
	tx MachPunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw MachPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx AuraName ; category
	db 95 ; Pokedex number
	db 17 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx RioluDescription ; description
	db 16

LucarioCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx LucarioCardGfx ; gfx
	tx LucarioName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw LUCARIO
	db 80 ; hp
	db STAGE1 ; stage
	tx RioluName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PrecognitiveAuraName ; name
	tx PrecognitiveAuraDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw GigaMagnetEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx AuraSphereName; name
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
	db WR_FIGHTING ; weakness
	db WR_DARKNESS ; resistance
	tx AuraName ; category
	db 95 ; Pokedex number
	db 41 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx LucarioDescription ; description
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
	energy FIGHTING, 1 ; energies
	tx MountainEaterName ; name
	tx MountainEaterDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MountainEaterEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK_F ; flags 2
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
	db 16

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
	db SPECIAL_AI_HANDLING ; flags 3
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
	tx PupitarDescription ; description
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
	energy FIGHTING, 2,; energies
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
	energy FIGHTING, 3, COLORLESS, 1 ; energies
	tx MountainClashName ; name
	tx MountainClashDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
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
	tx TyranitarDescription ; description
	db 0

TyrogueCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx TyrogueCardGfx ; gfx
	tx TyrogueName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw TYROGUE
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StrangeEvolutionName ; name
	tx StrangeEvolutionTyrogueDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw StrangeEvolutionTyrogueEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx GutBlowName ; name
	tx GutBlowDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw GutBlowEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT_EFFECT ; animation

	db 0 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx ScuffleName ; category
	db 95 ; Pokedex number
	db 7 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx TyrogueDescription ; description
	db 0

HitmontopCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HitmontopCardGfx ; gfx
	tx HitmontopName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw HITMONTOP
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx RapidSpinName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx TripleKickName; name
	tx TripleKickDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw TripleKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx RapidSpinName ; category
	db 95 ; Pokedex number
	db 31 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx HitmontopDescription ; description
	db 16

HitmonleeCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx HitmonleeCardGfx ; gfx
	tx HitmonleeName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
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
	energy FIGHTING, 2, COLORLESS, 1 ; energies
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
	db EVOLUTION | NONE ; sets
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

Jangmo_oCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx Jangmo_oCardGfx ; gfx
	tx Jangmo_oName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw JANGMO_O
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

	; attack 1
	energy COLORLESS, 1, FIGHTING, 1 ; energies
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

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx ScalyName ; category
	db 117 ; Pokedex number
	db 26 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx Jangmo_oDescription ; description
	db 16

Hakamo_oCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx Hakamo_oCardGfx ; gfx
	tx Hakamo_oName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw HAKAMO_O
	db 80 ; hp
	db STAGE1 ; stage
	tx Jangmo_oName ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx ChallengingRoarName ; name
	tx ChallengingRoarDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw FightingPkmnSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1, ; energies
	tx DragonClawName ; name
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

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_LIGHTNING ; resistance
	tx ScalyName ; category
	db 117 ; Pokedex number
	db 44 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx Hakamo_oDescription ; description
	db 16

Kommo_oCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx Kommo_oCardGfx ; gfx
	tx Kommo_oName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw KOMMO_O
	db 110 ; hp
	db STAGE2 ; stage
	tx Hakamo_oName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx AlolansFuryName ; name
	tx AlolansFuryDescription ; description
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FightingFuryEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 2 ; energies
	tx ClangingScalesName ; name
	tx ClangingScalesDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw ClangingEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_LIGHTNING ; resistance
	tx ScalyName ; category
	db 117 ; Pokedex number
	db 82 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx Kommo_oDescription ; description
	db 0

OmanyteCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx OmanyteCardGfx ; gfx
	tx OmanyteName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | FOSSIL ; sets
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
	db TYPE_PKMN_FIGHTING ; type
	gfx OmastarCardGfx ; gfx
	tx OmastarName ; name
	db STAR ; rarity
	db LOST_ISLE | FOSSIL ; sets
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

KabutoCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutoCardGfx ; gfx
	tx KabutoName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | FOSSIL ; sets
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
	db 16 ; level
	db 1, 8 ; length
	dw 25 * 10 ; weight
	tx KabutoDescription ; description
	db 16

KabutopsCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx KabutopsCardGfx ; gfx
	tx KabutopsName ; name
	db STAR ; rarity
	db LOST_ISLE | FOSSIL ; sets
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
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx SharpSickleName ; name
	tx SharpSickleDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw KabitopsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_SLASH ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
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
	db LOST_ISLE | FOSSIL ; sets
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
	db ATK_ANIM_HIT ; animation

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
	tx TyruntDescription ; description
	db 16

TyrantrumCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx TyrantrumCardGfx ; gfx
	tx TyrantrumName ; name
	db STAR ; rarity
	db LOST_ISLE | FOSSIL ; sets
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
	db COLOSSEUM | NONE ; sets
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
	db SPECIAL_AI_HANDLING ; flags 3
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
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
	tx RockruffDescription ; description
	db 16

LycanrocCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx LycanrocCardGfx ; gfx
	tx LycanrocName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
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
	tx LycanrocDescription ; description
	db 0

LycanrocMCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx LycanrocMCardGfx ; gfx
	tx LycanrocName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
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
	dw BossOrdersEffectCommands ; effect commands
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
	tx LycanrocMDescription ; description
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
	tx BlandeName ; category
	db 105 ; Pokedex number
	db 55 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx GalladeDescription ; description
	db 0

ClobbopusCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx ClobbopusCardGfx ; gfx
	tx ClobbopusName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw CLOBBOPUS
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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx BindName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectabuzzThundershockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx JujitsuName ; category
	db 117 ; Pokedex number
	db 14 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ClobbopusDescription ; description
	db 16

GrapploctCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx GrapploctCardGfx ; gfx
	tx GrapploctName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw GRAPPLOCT
	db 90 ; hp
	db STAGE1 ; stage
	tx ClobbopusName ; pre-evo name

	; attack 1
	energy FIGHTING, 2 ; energies
	tx OctolockName ; name
	tx OctolockDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw OctolockEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1, ; energies
	tx TentacleBusterName ; name
	tx SnivelDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw CuboneSnivelEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_DARKNESS ; resistance
	tx JujitsuName ; category
	db 117 ; Pokedex number
	db 36 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx GrapploctDescription ; description
	db 16

NacliCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx NacliCardGfx ; gfx
	tx NacliName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw NACLI
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx SaltCoatingName ; name
	tx MountainEaterDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MountainEaterEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx SaltName ; category
	db 139 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx NacliDescription ; description
	db 16

NaclstackCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx NaclstackCardGfx ; gfx
	tx NaclstackName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw NACLSTACK
	db 90 ; hp
	db STAGE1 ; stage
	tx NacliName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx RockHurlName ; name
	tx Discard1cardfromTopOPDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw KindlingPanicEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx HeavySlamName ; name
	tx HeavySlamDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw HeavySlamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx SaltName ; category
	db 140 ; Pokedex number
	db 37 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx NaclstackDescription ; description
	db 16

GarganaclCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx GarganaclCardGfx ; gfx
	tx GarganaclName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw GARGANACL
	db 110 ; hp
	db STAGE2 ; stage
	tx NaclstackName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PurifyingSaltName ; name
	tx ThickSkinnedDescription ; description
	tx PKMNPowerCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw AerodactylPrehistoricPowerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx SaltCureName ; name
	tx SaltCureDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw SaltCureEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DRAIN ; animation

	db 4 ; retreat cost
	db WR_GRASS ; weakness
	db WR_PSYCHIC ; resistance
	tx SaltName ; category
	db 141 ; Pokedex number
	db 58 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx GarganaclDescription ; description
	db 0	

RegirockCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx RegirockCardGfx ; gfx
	tx RegirockName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw REGIROCK
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIGHTING, 1 ; energies
	tx MountainEaterName ; name
	tx MountainEaterDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MountainEaterEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	db 3 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx SaltName ; category
	db 139 ; Pokedex number
	db 80 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx RegirockDescription ; description
	db 0

MankeyCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx MankeyCardGfx ; gfx
	tx MankeyName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw MANKEY
	db 40 ; hp
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
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 1 ; energies
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
	db NONE ; resistance
	tx SaltName ; category
	db 139 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx MankeyDescription ; description
	db 16

PrimeapeCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx PrimeapeCardGfx ; gfx
	tx PrimeapeName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw PRIMEAPE
	db 70 ; hp
	db STAGE1 ; stage
	tx MankeyName ; pre-evo name

	; attack 1
	energy FIGHTING, 2 ; energies
	tx FrenzyTossName ; name
	tx FrenzyTossDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw FrenzyTossEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx MonkeyBeatdownName ; name
	tx MonkeyBeatdownDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw MonkeyBeatdownEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_RAMPAGE ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx PigMonkeyName ; category
	db 140 ; Pokedex number
	db 31 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx PrimeapeDescription ; description
	db 16

AnnihilapeCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx AnnihilapeCardGfx ; gfx
	tx AnnihilapeName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw ANNIHILAPE
	db 90 ; hp
	db STAGE2 ; stage
	tx PrimeapeName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1, ; energies
	tx RageFistName ; name
	tx RageFistDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw RageFistEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS,2, ; energies
	tx CounterPunchName ; name
	tx DamageCounterDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_PLUS ; category
	dw CounterpunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db BOOST_IF_TAKEN_DAMAGE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx PigMonkeyName ; category
	db 141 ; Pokedex number
	db 62 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx AnnihilapeDescription ; description
	db 0	


