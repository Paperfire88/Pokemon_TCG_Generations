ChikoritaCard:
	db TYPE_PKMN_GRASS ; type
	gfx ChikoritaCardGfx ; gfx
	tx BulbasaurName ; name
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
	energy GRASS, 2 ; energies
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
	tx BulbasaurDescription ; description
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
	tx BulbasaurName ; pre-evo name

	; attack 1
	energy GRASS, 2 ; energies
	tx SleepingGasName ; name
	tx MayInflictSleepDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GastlySleepingGasEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLEEPING_GAS ; animation

	; attack 2
	energy GRASS, 2, COLORLESS, 1 ; energies
	tx AbsorbName ; name
	tx ButterfreesMegaDrainDescription ; description
	tx ButterfreesMegaDrainDescriptionCont ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeMegaDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
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
	tx IvysaurDescription ; description
	db 16

VenusaurLv67Card:
	db TYPE_PKMN_GRASS ; type
	gfx VenusaurLv67CardGfx ; gfx
	tx VenusaurName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw VENUSAUR_LV67
	db 100 ; hp
	db STAGE2 ; stage
	tx BayleefName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EnergyTransName ; name
	tx EnergyTransDescription ; description
	dw NONE ; description (cont)
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
	tx VenusaurLv67Description ; description
	db 0

CelebiCard:
	db TYPE_PKMN_GRASS ; type
	gfx CelebiCardGfx ; gfx
	tx CelebiName ; name
	db STAR ; rarity
	db PROMOTIONAL | NONE ; sets
	dw CELEBI
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SolarPowerName ; name
	tx SolarPowerDescription ; description
	tx SolarPowerDescriptionCont ; description (cont)
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
	db WR_PSYCHIC ; weakness
	db WR_LIGHTNING ; resistance
	tx TimeTravelName ; category
	db 4 ; Pokedex number
	db 64 ; level
	db 6, 7 ; length
	dw 221 * 10 ; weight
	tx VenusaurLv64Description ; description
	db 0

CaterpieCard:
	db TYPE_PKMN_GRASS ; type
	gfx CaterpieCardGfx ; gfx
	tx CaterpieName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw CATERPIE
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

MetapodCard:
	db TYPE_PKMN_GRASS ; type
	gfx MetapodCardGfx ; gfx
	tx MetapodName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw METAPOD
	db 70 ; hp
	db STAGE1 ; stage
	tx CaterpieName ; pre-evo name

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

ButterfreeCard:
	db TYPE_PKMN_GRASS ; type
	gfx ButterfreeCardGfx ; gfx
	tx ButterfreeName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw BUTTERFREE
	db 90 ; hp
	db STAGE2 ; stage
	tx MetapodName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx ButterflyEdgeName ; name
	tx ButterflyEdgeDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw ButterflyEdgeEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx MegaDrainName ; name
	tx ButterfreesMegaDrainDescription ; description
	tx ButterfreesMegaDrainDescriptionCont ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeMegaDrainEffectCommands ; effect commands
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

EkansCard:
	db TYPE_PKMN_GRASS ; type
	gfx EkansCardGfx ; gfx
	tx EkansName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw EKANS
	db 70 ; hp
	db STAGE1 ; stage
	tx CaterpieName ; pre-evo name

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

ArbokCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ArbokCardGfx ; gfx
	tx ArbokName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw ARBOK
	db 80 ; hp
	db STAGE2 ; stage
	tx EkansName ; pre-evo name

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
	tx VenomPowderName ; name
	tx VenomPowderDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw VenomothVenomPowderEffectCommands ; effect commands
	db INFLICT_POISON | INFLICT_CONFUSION ; flags 1
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

WeedleCard:
	db TYPE_PKMN_GRASS ; type
	gfx WeedleCardGfx ; gfx
	tx WeedleName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw WEEDLE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx DiveBombName ; name
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
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx RazorLeafName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP ; animation

	db 0 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx HairyBugName ; category
	db 10 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 7 * 10 ; weight
	tx WeedleDescription ; description
	db 19

KakunaCard:
	db TYPE_PKMN_GRASS ; type
	gfx KakunaCardGfx ; gfx
	tx KakunaName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw KAKUNA
	db 70 ; hp
	db STAGE1 ; stage
	tx WeedleName ; pre-evo name

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
	tx DiveBombName ; name
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
	db WR_FIRE ; resistance
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
	tx KakunaName ; pre-evo name

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

NidoranFCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidoranFCardGfx ; gfx
	tx NidoranFName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw NIDORANF
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1, ; energies
	tx LeechLifeName ; name
	tx ZubatsLeechLifeDescription ; description
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
	energy GRASS, 1 ; energies
	tx CallForFamilyName ; name
	tx NidoranFsCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw NidoranFCallForFamilyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

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

NidorinaCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidorinaCardGfx ; gfx
	tx NidorinaName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw NIDORINA
	db 80 ; hp
	db STAGE1 ; stage
	tx NidoranFName ; pre-evo name

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
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GolduckHyperBeamEffectCommands ; effect commands
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
	db 16

NidoqueenCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidoqueenCardGfx ; gfx
	tx NidoqueenName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw NIDOQUEEN
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

NidoranMCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidoranMCardGfx ; gfx
	tx NidoranMName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw NIDORANM
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

NidorinoCard:
	db TYPE_PKMN_GRASS ; type
	gfx NidorinoCardGfx ; gfx
	tx NidorinoName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw NIDORINO
	db 80 ; hp
	db STAGE1 ; stage
	tx NidoranMName ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx TwineedleName ; name
	tx TwinnedleDescription ; description
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
	energy COLORLESS, 3, FIGHTING, 1 ; energies
	tx HornDrillName ; name
	tx GravelersHardenDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db RESIDUAL ; category
	dw GravelerHardenEffectCommands ; effect commands
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
	db 16

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
	tx NidokingDescription ; description
	db 0

OddishCard:
	db TYPE_PKMN_GRASS ; type
	gfx OddishCardGfx ; gfx
	tx OddishName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw ODDISH
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1, ; energies
	tx SproutName ; name
	tx SproutDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	tx OddishName ; pre-evo name

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
	db 16

VileplumeCard:
	db TYPE_PKMN_GRASS ; type
	gfx VileplumeCardGfx ; gfx
	tx VileplumeName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw VILEPLUME
	db 80 ; hp
	db STAGE1 ; stage
	tx OddishName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx HealName ; name
	tx HealDescription ; description
	dw NONE ; description (cont)
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

ParasCard:
	db TYPE_PKMN_GRASS ; type
	gfx ParasCardGfx ; gfx
	tx ParasName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw PARAS
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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 2 ; energies
	tx SporeName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
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
	db 16

ParasectCard:
	db TYPE_PKMN_GRASS ; type
	gfx ParasectCardGfx ; gfx
	tx ParasectName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PARASECT
	db 70 ; hp
	db STAGE1 ; stage
	tx ParasName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SporeName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
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
	db WR_WATER ; resistance
	tx MushroomName ; category
	db 26 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx ParasectDescription ; description
	db 0

VenonatCard:
	db TYPE_PKMN_GRASS ; type
	gfx VenonatCardGfx ; gfx
	tx VenonatName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw VENONAT
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx TeleportName ; name
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
	db 19

VenomothCard:
	db TYPE_PKMN_GRASS ; type
	gfx VenomothCardGfx ; gfx
	tx VenomothName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw VENOMOTH
	db 70 ; hp
	db STAGE1 ; stage
	tx VenonatName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx TeleportName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy GRASS, 1, COLORLESS, 2 ; energies
	tx WindReturnName ; name
	tx AquaStreamDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw AquaStreamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx OgreDarnerName ; category
	db 28 ; Pokedex number
	db 38 ; level
	db 4, 11 ; length
	dw 28 * 10 ; weight
	tx VenomothDescription ; description
	db 0

BellsproutCard:
	db TYPE_PKMN_GRASS ; type
	gfx BellsproutCardGfx ; gfx
	tx BellsproutName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw BELLSPROUT
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
	energy GRASS, 1, COLORLESS, 1 ; energies
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

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx FruitName ; category
	db 29 ; Pokedex number
	db 11 ; level
	db 2, 4 ; length
	dw 9 * 10 ; weight
	tx BellsproutDescription ; description
	db 19

WeepinbellCard:
	db TYPE_PKMN_GRASS ; type
	gfx WeepinbellCardGfx ; gfx
	tx WeepinbellName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw WEEPINBELL
	db 70 ; hp
	db STAGE1 ; stage
	tx BellsproutName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx LeafGuardName ; name
	tx GrimersMinimizeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw MinimizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PROTECT ; animation

	; attack 2
	energy GRASS, 3, ; energies
	tx DoubleslapName ; name
	tx DoubleDrainSlapDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw PoliwhirlDoubleslapEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx FruitName ; category
	db 30 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 14 * 10 ; weight
	tx WeepinbellDescription ; description
	db 16

VictreebelCard:
	db TYPE_PKMN_GRASS ; type
	gfx VictreebelCardGfx ; gfx
	tx VictreebelName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw VICTREEBEL
	db 100 ; hp
	db STAGE2 ; stage
	tx WeepinbellName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx LureName ; name
	tx VictreebelsLureDescription ; description
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
	db ATK_ANIM_STRETCH_KICK ; animation

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

GrimerCard:
	db TYPE_PKMN_GRASS ; type
	gfx GrimerCardGfx ; gfx
	tx GrimerName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw GRIMER
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
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx MinimizeName ; name
	tx GrimersMinimizeDescription ; description
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

MukCard:
	db TYPE_PKMN_GRASS ; type
	gfx MukCardGfx ; gfx
	tx MukName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw MUK
	db 70 ; hp
	db STAGE1 ; stage
	tx GrimerName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ToxicGasName ; name
	tx ToxicGasDescription ; description
	dw NONE ; description (cont)
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

ExeggcuteCard:
	db TYPE_PKMN_GRASS ; type
	gfx ExeggcuteCardGfx ; gfx
	tx ExeggcuteName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw EXEGGCUTE
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
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx IceShardName ; name
	tx IceShardDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw IceShardEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_HIT_EFFECT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_WATER ; resistance
	tx FrostTreeName ; category
	db 34 ; Pokedex number
	db 24 ; level
	db 1, 4 ; length
	dw 6 * 10 ; weight
	tx ExeggcuteDescription ; description
	db 18

ExeggutorCard:
	db TYPE_PKMN_GRASS ; type
	gfx ExeggutorCardGfx ; gfx
	tx ExeggutorName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw EXEGGUTOR
	db 90 ; hp
	db STAGE1 ; stage
	tx ExeggcuteName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx QuickfreezeName ; name
	tx QuickfreezeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ArticunoQuickfreezeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy COLORLESS, 2, GRASS, 1 ; energies
	tx BlizzardName ; name
	tx BlizzardDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ArticunoBlizzardEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_BLIZZARD ; animation

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

KoffingCard:
	db TYPE_PKMN_GRASS ; type
	gfx KoffingCardGfx ; gfx
	tx KoffingName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw KOFFING
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
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

	; attack 2
	energy GRASS, 3, COLORLESS, 1 ; energies
	tx SelfdestructName ; name
	tx WeezingsSelfdestructDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw WeezingSelfdestructEffectCommands ; effect commands
	db HIGH_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 60
	db ATK_ANIM_SELFDESTRUCT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_PSYCHIC ; resistance
	tx ThornSeedName ; category
	db 36 ; Pokedex number
	db 23 ; level
	db 2, 0 ; length
	dw 2 * 10 ; weight
	tx KoffingDescription ; description
	db 16

WeezingCard:
	db TYPE_PKMN_GRASS ; type
	gfx WeezingCardGfx ; gfx
	tx WeezingName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw WEEZING
	db 90 ; hp
	db STAGE1 ; stage
	tx KoffingName ; pre-evo name

	; attack 1
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

	; attack 2
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx BigEggsplosionName ; name
	tx BigEggsplosionDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw ExeggutorBigEggsplosionEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_NOT_LIMITED
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_PSYCHIC ; resistance
	tx ThornPodName ; category
	db 37 ; Pokedex number
	db 57 ; level
	db 3, 11 ; length
	dw 21 * 10 ; weight
	tx WeezingDescription ; description
	db 0

TangelaLv8Card:
	db TYPE_PKMN_GRASS ; type
	gfx TangelaLv8CardGfx ; gfx
	tx TangelaName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw TANGELA_LV8
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx BindName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TangelaBindEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy GRASS, 3 ; energies
	tx PoisonPowderName ; name
	tx InflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw TangelaPoisonPowderEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_HIT_POISON ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx VineName ; category
	db 114 ; Pokedex number
	db 8 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv8Description ; description
	db 0

TangrowthCard:
	db TYPE_PKMN_GRASS ; type
	gfx TangrowthCardGfx ; gfx
	tx TangrowthName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw TANGELA_LV8
	db 100 ; hp
	db STAGE1 ; stage
	tx TangelaName ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx LashesName ; name
	tx LashesDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw HundredFuriousLashesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIP ; animation

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
	db 82 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv8Description ; description
	db 0

GrubbinCard:
	db TYPE_PKMN_GRASS ; type
	gfx GrubbinCardGfx ; gfx
	tx GrubbinName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw GRUBBIN
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
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
	energy GRASS, 1, COLORLESS, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
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
	tx TangelaLv12Description ; description
	db 0

BlipbugCard:
	db TYPE_PKMN_GRASS ; type
	gfx BlipbugCardGfx ; gfx
	tx BlipbugName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw BLIPBUG
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx StunSporeName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MetapodStunSporeEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx ScavengeName ; name
	tx ScavengeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SlowpokeScavengeEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx LarvaName ; category
	db 43 ; Pokedex number
	db 9 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx TangelaLv12Description ; description
	db 0

ScytherCard:
	db TYPE_PKMN_GRASS ; type
	gfx ScytherCardGfx ; gfx
	tx ScytherName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SCYTHER
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy GRASS, 1 ; energies
	tx SwordsDanceName ; name
	tx SwordsDanceDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw GrassEnergySearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx SlashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 0 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx MantisName ; category
	db 123 ; Pokedex number
	db 25 ; level
	db 4, 11 ; length
	dw 123 * 10 ; weight
	tx ScytherDescription ; description
	db 0

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
	energy FIGHTING, 1 ; energies
	tx IronGripName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PinsirIronGripEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_EFFECT ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1 ; energies
	tx SlashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SONICBOOM ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx StagbeetleName ; category
	db 127 ; Pokedex number
	db 35 ; level
	db 4, 11 ; length
	dw 121 * 10 ; weight
	tx PinsirDescription ; description
	db 0

CharmanderCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmanderCardGfx ; gfx
	tx CharmanderName ; name
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
	tx EmberName ; name
	tx EmberDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmanderEmberEffectCommands ; effect commands
	db NONE ; flags 1
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
	tx CharmanderDescription ; description
	db 21

CharmeleonCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharmeleonCardGfx ; gfx
	tx CharmeleonName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw CHARMELEON
	db 80 ; hp
	db STAGE1 ; stage
	tx CharmanderName ; pre-evo name

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
	tx CharmeleonsFlamethrowerDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmeleonFlamethrowerEffectCommands ; effect commands
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
	tx CharmeleonDescription ; description
	db 18

CharizardCard:
	db TYPE_PKMN_FIRE ; type
	gfx CharizardCardGfx ; gfx
	tx CharizardName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw CHARIZARD
	db 120 ; hp
	db STAGE2 ; stage
	tx CharmeleonName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EnergyBurnName ; name
	tx EnergyBurnDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw CharizardEnergyBurnEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIRE, 3 ; energies
	tx FlamesOfRageName ; name
	tx FlamesOfRageDescription ; description
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
	tx CharizardDescription ; description
	db 0

VulpixCard:
	db TYPE_PKMN_FIRE ; type
	gfx VulpixCardGfx ; gfx
	tx VulpixName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw VULPIX
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
	tx CutDownName ; name
	tx StickyWebDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw IncreaseRetreatCostCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_NIGHTMARE ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx DarkName ; category
	db 49 ; Pokedex number
	db 11 ; level
	db 2, 0 ; length
	dw 22 * 10 ; weight
	tx VulpixDescription ; description
	db 18

NinetalesLv32Card:
	db TYPE_PKMN_FIRE ; type
	gfx NinetalesLv32CardGfx ; gfx
	tx NinetalesName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw NINETALES_LV32
	db 70 ; hp
	db STAGE1 ; stage
	tx VulpixName ; pre-evo name

	; attack 1
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx HuntingName ; name
	tx NinetalesLureDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw NinetalesLureEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	; attack 2
	energy FIRE, 3, COLORLESS, 1, ; energies
	tx FireBlastName ; name
	tx FireBlastDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw NinetalesFireBlastEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_FIRE_SPIN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx DarkName ; category
	db 50 ; Pokedex number
	db 32 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx NinetalesLv32Description ; description
	db 0

DeltaKingdra:
	db TYPE_PKMN_FIRE ; type
	gfx DeltaKingdraGfx ; gfx
	tx NinetalesName ; name
	db STAR ; rarity
	db EVOLUTION |	NONE ; sets
	dw DELTA_KINGDRA
	db 100 ; hp
	db STAGE2 ; stage
	tx SeadraName ; pre-evo name

	; attack 1
	energy FIRE, 1, ; energies
	tx DancingEmbersName ; name
	tx DancingEmbersDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw NinetalesDancingEmbersEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_SPIN ; animation

	; attack 2
	energy WATER, 2, FIRE, 2 ; energies
	tx AquaStreamName ; name
	tx AquaStreamKingDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw AquaStreamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYDRO_PUMP ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_FIRE ; resistance
	tx DragonName ; category
	db 90 ; Pokedex number
	db 65 ; level
	db 3, 7 ; length
	dw 44 * 10 ; weight
	tx NinetalesLv35Description ; description
	db 0

GrowlitheCard:
	db TYPE_PKMN_FIRE ; type
	gfx GrowlitheCardGfx ; gfx
	tx GrowlitheName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw GROWLITHE
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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx FlareName ; name
	tx WildfireDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw MoltresWildfireEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx LegendaryName ; category
	db 51 ; Pokedex number
	db 18 ; level
	db 2, 4 ; length
	dw 42 * 10 ; weight
	tx GrowlitheDescription ; description
	db 16

ArcanineLv45Card:
	db TYPE_PKMN_FIRE ; type
	gfx ArcanineLv45CardGfx ; gfx
	tx ArcanineName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ARCANINE_LV45
	db 80 ; hp
	db STAGE1 ; stage
	tx GrowlitheName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx FlameSurgeName ; name
	tx FlameSurgeDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL; category
	dw FlameSurgeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
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
	tx LegendaryName ; category
	db 52 ; Pokedex number
	db 45 ; level
	db 6, 3 ; length
	dw 342 * 10 ; weight
	tx ArcanineLv45Description ; description
	db 0

NumelCard:
	db TYPE_PKMN_FIRE ; type
	gfx NumelCardGfx ; gfx
	tx FlareonName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw NUMEL
	db 50 ; hp
	db BASIC ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
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
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx CollectFireName ; name
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

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx NumbName ; category
	db 57 ; Pokedex number
	db 22 ; level
	db 2, 11 ; length
	dw 55 * 10 ; weight
	tx FlareonLv22Description ; description
	db 0

CameruptCard:
	db TYPE_PKMN_FIRE ; type
	gfx CameruptCardGfx ; gfx
	tx CameruptName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw CAMERUPT
	db 90 ; hp
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

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx EruptionName ; category
	db 58 ; Pokedex number
	db 44 ; level
	db 6, 3 ; length
	dw 342 * 10 ; weight
	tx ArcanineLv34Description ; description
	db 0

PonytaCard:
	db TYPE_PKMN_FIRE ; type
	gfx PonytaCardGfx ; gfx
	tx PonytaName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw PONYTA
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
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
	energy COLORLESS, 2, FIRE, 1 ; energies
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
	db WR_WATER ; weakness
	db NONE ; resistance
	tx ZenCharmName ; category
	db 53 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 66 * 10 ; weight
	tx PonytaDescription ; description
	db 16

RapidashCard:
	db TYPE_PKMN_FIRE ; type
	gfx RapidashCardGfx ; gfx
	tx RapidashName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw RAPIDASH
	db 90 ; hp
	db STAGE1 ; stage
	tx PonytaName ; pre-evo name

	; attack 1
	energy FIRE, 2 ; energies
	tx FirePunchName ; name
	tx ThunderpunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzThunderpunchEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
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
	db NONE ; flags 3
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
	tx RapidashDescription ; description
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
	tx EmberDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmanderEmberEffectCommands ; effect commands
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
	tx PonytaDescription ; description
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
	tx IntimidatingManeName ; name
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
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx FlamethrowerName ; name
	tx CharmeleonsFlamethrowerDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmeleonFlamethrowerEffectCommands ; effect commands
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
	tx RapidashDescription ; description
	db 0

MagmarLv24Card:
	db TYPE_PKMN_FIRE ; type
	gfx MagmarLv24CardGfx ; gfx
	tx MagmarName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MAGMAR_LV24
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy FIRE, 2 ; energies
	tx FirePunchName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FIRE_PUNCH ; animation

	; attack 2
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx FlamethrowerName ; name
	tx FirePunchDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw MagmarFlamethrowerEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db NONE ; resistance
	tx SpitfireName ; category
	db 126 ; Pokedex number
	db 24 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmarLv24Description ; description
	db 0

MagmortarCard:
	db TYPE_PKMN_FIRE ; type
	gfx MagmortarCardGfx ; gfx
	tx MagmortarName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MAGMORTAR
	db 90 ; hp
	db STAGE1 ; stage
	tx MagmarName ; pre-evo name

	; attack 1
	energy FIRE, 2 ; energies
	tx SmokeBombName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw SandshrewSandAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_GAS ; animation
	
	; attack 2
	energy FIRE, 2, COLORLESS, 2 ; energies
	tx FireballBazookaName ; name
	tx GigashockDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw RaichuGigashockEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_BIG_SELFDESTRUCTION ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx BlastName ; category
	db 70 ; Pokedex number
	db 67 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmortarDescription ; description
	db 3

FlareonLv28Card:
	db TYPE_PKMN_FIRE ; type
	gfx FlareonLv28CardGfx ; gfx
	tx FlareonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw FLAREON_LV28
	db 70 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BurningDownName ; name
	tx SandPitDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw Mills3EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 2
	energy FIRE, 1, COLORLESS, 2 ; energies
	tx DestructiveFlameName ; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GolduckHyperBeamEffectCommands ; effect commands
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
	tx MoltresName ; name
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

MoltresLv37Card:
	db TYPE_PKMN_FIRE ; type
	gfx MoltresLv37CardGfx ; gfx
	tx MoltresName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw MOLTRES_LV37
	db 100 ; hp
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
	tx FireSpinName ; name
	tx FireSpinDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw CharizardFireSpinEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 6
	db ATK_ANIM_FIRE_SPIN ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
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
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SpacingOutName ; name
	tx SpacingOutDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SlowpokeSpacingOutEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_NONE ; animation
	
	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx EmberName ; name
	tx EmberDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmanderEmberEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx FireCrocName ; category
	db 61 ; Pokedex number
	db 12 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx FuecocoDescription ; description
	db 21

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
	energy FIRE, 2, COLORLESS, 1 ; energies
	tx FlamethrowerName ; name
	tx CharmeleonsFlamethrowerDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmeleonFlamethrowerEffectCommands ; effect commands
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
	db 18

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
	db WR_GRASS ; resistance
	tx RockHeadName ; category
	db 64 ; Pokedex number
	db 18 ; level
	db 2, 0 ; length
	dw 19 * 10 ; weight
	tx BagonDescription ; description
	db 21

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
	tx SonicboomDescription ; description
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
	tx SonicboomDescription ; description
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
	tx NinetalesLv32Description ; description
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
	db 0 ; damage
	db RESIDUAL ; category
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
	db 20 ; damage
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

SquirtleCard:
	db TYPE_PKMN_WATER ; type
	gfx SquirtleCardGfx ; gfx
	tx SquirtleName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SQUIRTLE
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
	dw SquirtleBubbleEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BUBBLES ; animation

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx SlapName ; name
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
	db WR_GRASS ; weakness
	db WR_FIRE ; resistance
	tx BubbleFrogName ; category
	db 72 ; Pokedex number
	db 10 ; level
	db 1, 8 ; length
	dw 20 * 10 ; weight
	tx SquirtleDescription ; description
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
	tx SquirtleName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx FlipTurnName ; name
	tx FlipTurnDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw FlipTurnEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaterPulseName ; name
	tx SeadrasWaterGunDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw SeadraWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
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

BlastoiseCard:
	db TYPE_PKMN_WATER ; type
	gfx BlastoiseCardGfx ; gfx
	tx BlastoiseName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw BLASTOISE
	db 90 ; hp
	db STAGE2 ; stage
	tx WartortleName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RainDanceName ; name
	tx RainDanceDescription ; description
	tx RainDanceDescriptionCont ; description (cont)
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
	tx CoordinatedShurikenDescriptionCont ; description (cont)
	db 30 ; damage
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
	tx BlastoiseDescription ; description
	db 0

PsyduckCard:
	db TYPE_PKMN_WATER ; type
	gfx PsyduckCardGfx ; gfx
	tx PsyduckName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw PSYDUCK
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

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaterPulseName ; name
	tx SeadrasWaterGunDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw SeadraWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx SeaWeaselName ; category
	db 75 ; Pokedex number
	db 15 ; level
	db 2, 7 ; length
	dw 43 * 10 ; weight
	tx PsyduckDescription ; description
	db 19

GolduckCard:
	db TYPE_PKMN_WATER ; type
	gfx GolduckCardGfx ; gfx
	tx GolduckName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw GOLDUCK
	db 70 ; hp
	db STAGE1 ; stage
	tx PsyduckName ; pre-evo name

	; attack 1
	energy WATER, 1, ; energies
	tx AquaticRescueName ; name
	tx AquaticRescueDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw AquaticRescueEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WHIRLPOOL ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1, ; energies
	tx AquaJetName ; name
	tx BlizzardDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ArticunoBlizzardEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_WATER_JETS ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_WATER ; resistance
	tx SeaWeaselName ; category
	db 76 ; Pokedex number
	db 37 ; level
	db 5, 7 ; length
	dw 169 * 10 ; weight
	tx GolduckDescription ; description
	db 3

PoliwagCard:
	db TYPE_PKMN_WATER ; type
	gfx PoliwagCardGfx ; gfx
	tx PoliwagName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw POLIWAG
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
	dw SquirtleBubbleEffectCommands ; effect commands
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

PoliwhirlCard:
	db TYPE_PKMN_WATER ; type
	gfx PoliwhirlCardGfx ; gfx
	tx PoliwhirlName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw POLIWHIRL
	db 70 ; hp
	db STAGE1 ; stage
	tx PoliwagName ; pre-evo name

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
	energy FIGHTING, 1, COLORLESS, 2 ; energies
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

PoliwrathCard:
	db TYPE_PKMN_WATER ; type
	gfx PoliwrathCardGfx ; gfx
	tx PoliwrathName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw POLIWRATH
	db 100 ; hp
	db STAGE2 ; stage
	tx PoliwhirlName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx QuakingPunchName ; name
	tx HeadacheDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw PsyduckHeadacheEffectCommands ; effect commands
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
	db 40 ; damage
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
	energy COLORLESS, 1, WATER, 1 ; energies
	tx FriendshipSongName ; name
	tx FriendshipSongDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
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
	db 19

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
	energy WATER, 1, COLORLESS, 1 ; energies
	tx IceBeamName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw DewgongIceBeamEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 2 ; energies
	tx AuroraBeamName ; name
	tx LowKickDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw LowKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT; animation

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
	tx ShellderName ; name
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
	tx HideInShellName ; name
	tx HideInShellDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw ShellderHideInShellEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

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
	tx ShellderName ; pre-evo name

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
	energy COLORLESS, 2, WATER, 1, ; energies
	tx EnergySearchName ; name
	tx EnergySearchDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw EnergySearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

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

KrabbyCard:
	db TYPE_PKMN_WATER ; type
	gfx KrabbyCardGfx ; gfx
	tx KrabbyName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw KRABBY
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx CallForFamilyName ; name
	tx KrabbysCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw KrabbyCallForFamilyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

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

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIRE ; resistance
	tx WaterGunName ; category
	db 86 ; Pokedex number
	db 20 ; level
	db 1, 4 ; length
	dw 14 * 10 ; weight
	tx KrabbyDescription ; description
	db 16

KinglerCard:
	db TYPE_PKMN_WATER ; type
	gfx KinglerCardGfx ; gfx
	tx KinglerName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw KINGLER
	db 80 ; hp
	db STAGE1 ; stage
	tx KrabbyName ; pre-evo name

	; attack 1
	energy WATER, 1 ; energies
	tx LockOnName ; name
	tx LockOnDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw LockonEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_BEAM ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx SharpshootingName ; name
	tx SharpshootingDescription ; description
	tx SharpshootingDescriptionCont ; description (cont)
	db 30 ; damage
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
	tx KinglerDescription ; description
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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	energy FIRE, 1 ; energies
	tx WildfireName ; name
	tx WildfireDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw MoltresWildfireEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaterPulseName ; name
	tx SeadrasWaterGunDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw SeadraWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIRE ; resistance
	tx DragonName ; category
	db 89 ; Pokedex number
	db 33 ; level
	db 3, 1 ; length
	dw 55 * 10 ; weight
	tx SeadraDescription ; description
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

StaryuCard:
	db TYPE_PKMN_WATER ; type
	gfx StaryuCardGfx ; gfx
	tx StaryuName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw STARYU
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
	dw SquirtleBubbleEffectCommands ; effect commands
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
	tx StaryuDescription ; description
	db 19

StarmieCard:
	db TYPE_PKMN_WATER ; type
	gfx StarmieCardGfx ; gfx
	tx StarmieName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw STARMIE
	db 70 ; hp
	db STAGE1 ; stage
	tx StaryuName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx HydroDrainName ; name
	tx HydroDrainDescription ; description
	tx HydroDrainDescriptionCont ; description (cont)
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
	tx BubblebeamName ; name
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
	tx StarmieDescription ; description
	db 0

ChewtleCard:
	db TYPE_PKMN_WATER ; type
	gfx ChewtleCardGfx ; gfx
	tx ChewtleName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw CHEWTLE
	db 60 ; hp
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
	db 0

DrednawCard:
	db TYPE_PKMN_WATER ; type
	gfx DrednawCardGfx ; gfx
	tx DrednawName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw DREDNAW
	db 100 ; hp
	db STAGE1 ; stage
	tx ChewtleName ; pre-evo name

	; attack 1
	energy WATER, 2, COLORLESS, 1 ; energies
	tx ViseBiteName ; name
	tx ViseBiteDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
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
	tx VictreebelsAcidDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw VictreebelAcidEffectCommands ; effect commands
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
	tx HydratingDropsName ; name
	tx HealDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw VileplumeHealEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaterGunName ; name
	tx VaporeonsWaterGunDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw VaporeonWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

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
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx WaterPulseName ; name
	tx SeadrasWaterGunDescription ; description
	tx MayInflictSleepDescription ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw SeadraWaterGunEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST ; flags 2
	db NONE ; flags 3
	db MAX_ENERGY_BOOST_IS_LIMITED
	db ATK_ANIM_WATER_GUN ; animation

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
	db 100 ; hp
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
	db ATK_ANIM_GUST_OF_WIND ; animation

	; attack 2
	energy WATER, 2, COLORLESS, 1 ; energies
	tx TimeSpiralName ; name
	tx DevolutionBeamDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db RESIDUAL ; category
	dw MewDevolutionBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	energy WATER, 1 ; energies
	tx RescueName ; name
	tx EnergyConversionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw GastlyEnergyConversionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 10
	db ATK_ANIM_ENERGY_CONVERSION ; animation

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

ArticunoLv37Card:
	db TYPE_PKMN_WATER ; type
	gfx ArticunoLv37CardGfx ; gfx
	tx ArticunoName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw ARTICUNO_LV37
	db 100 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx QuickfreezeName ; name
	tx QuickfreezeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ArticunoQuickfreezeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICKFREEZE ; animation

	; attack 2
	energy WATER, 3 ; energies
	tx IceBreathName ; name
	tx IceBreathDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ArticunoIceBreathEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_WHIRLWIND_ZIGZAG ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx FreezeName ; category
	db 144 ; Pokedex number
	db 37 ; level
	db 5, 7 ; length
	dw 122 * 10 ; weight
	tx ArticunoLv37Description ; description
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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx ThunderJoltName ; name
	tx ThunderJoltDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PikachuThunderJoltEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ElectrifiedName ; category
	db 103 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv12Description ; description
	db 19

ZebstrikaCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZebstrikaCardGfx ; gfx
	tx RaichuName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ZEBSTRIKA
	db 70 ; hp
	db STAGE1 ; stage
	tx BlitzleName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SprintName ; name
	tx SprintDescription ; description
	dw NONE ; description (cont)
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
	tx RaichuLv40Description ; description
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
	energy COLORLESS, 1, LIGHTNING, 1 ; energies
	tx QuickAttackName ; name
	tx QuickAttackDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
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
	tx GeneratorName ; category
	db 105 ; Pokedex number
	db 16 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv14Description ; description
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
	tx ParabolicName ; name
	tx ZubatsLeechLifeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw LeechLifeEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 2 ; energies
	tx GigashockName ; name
	tx GigashockDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw RaichuGigashockEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_THUNDER_WHOLE_SCREEN ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx GeneratorName ; category
	db 106 ; Pokedex number
	db 45 ; level
	db 2, 7 ; length
	dw 66 * 10 ; weight
	tx RaichuLv45Description ; description
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
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
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
	db WR_LIGHTNING ; resistance
	tx SeaUrchinName ; category
	db 107 ; Pokedex number
	db 36 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv16Description ; description
	db 16

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
	tx FlyingPikachuDescription ; description
	db 3

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

	; attack 2
	energy COLORLESS, 1, LIGHTNING, 2 ; energies
	tx ThunderFangName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnemiteThunderWaveEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx SparkName ; category
	db 109 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx SurfingPikachuDescription ; description
	db 0

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
	tx SurfingPikachuDescription ; description
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
	tx GnawName ; name
	tx VoltswitchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw VoltswitchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

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

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIGHTING ; resistance
	tx SkySquirrelName ; category
	db 111 ; Pokedex number
	db 34 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv16Description ; description
	db 16

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
	tx ThunderWaveName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnemiteThunderWaveEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx SelfdestructName ; name
	tx MagnemitesSelfdestructDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnemiteSelfdestructEffectCommands ; effect commands
	db HIGH_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 40
	db ATK_ANIM_SELFDESTRUCT ; animation

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
	db WR_GRASS ; resistance
	tx MagnetName ; category
	db 113 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 132 * 10 ; weight
	tx MagnetonLv28Description ; description
	db 0

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
	tx GigaMagnetName ; name
	tx GigaMagnetDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw GigaMagnetEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy LIGHTNING, 4, ; energies
	tx ThunderName ; name
	tx RaichusThunderDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw RaichuThunderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx MagnetName ; category
	db 114 ; Pokedex number
	db 55 ; level
	db 3, 3 ; length
	dw 132 * 10 ; weight
	tx MagnetonLv35Description ; description
	db 0

VoltorbCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx VoltorbCardGfx ; gfx
	tx VoltorbName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw VOLTORB
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
	dw MagnemiteThunderWaveEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDER_WAVE ; animation

	; attack 2
	energy GRASS, 1 ; energies
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
	tx VoltorbDescription ; description
	db 21

ElectrodeLv35Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectrodeLv35CardGfx ; gfx
	tx ElectrodeName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw ELECTRODE_LV35
	db 70 ; hp
	db STAGE1 ; stage
	tx VoltorbName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
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
	db WR_GRASS ; resistance
	tx PunkName ; category
	db 116 ; Pokedex number
	db 42 ; level
	db 3, 11 ; length
	dw 147 * 10 ; weight
	tx ElectrodeLv35Description ; description
	db 0

ElectrodeLv42Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectrodeLv42CardGfx ; gfx
	tx ElectrodeName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw ELECTRODE_LV42
	db 70 ; hp
	db STAGE1 ; stage
	tx VoltorbName ; pre-evo name

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
	tx ElectrodeLv42Description ; description
	db 0

ElectabuzzLv35Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectabuzzLv35CardGfx ; gfx
	tx ElectabuzzName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw ELECTABUZZ_LV35
	db 70 ; hp
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
	dw MagnemiteThunderWaveEffectCommands ; effect commands
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
	db 0

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
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx DisconnectName ; name
	tx HeadacheDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw PsyduckHeadacheEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx ChainLightningName ; name
	tx ChainLightningDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw ElectrodeChainLightningEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_CHAIN_LIGHTNING ; animationn

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

JolteonLv29Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx JolteonLv29CardGfx ; gfx
	tx JolteonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw JOLTEON_LV29
	db 70 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

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
	energy LIGHTNING, 2, COLORLESS, 1 ; energies
	tx PinMissileName ; name
	tx QuadrupleAttackX20Description ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw JolteonPinMissileEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 1 ; energies
	tx MagneticStormName ; name
	tx MagneticStormDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw MagnemiteMagneticStormEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MAGNETIC_STORM ; animation

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
	energy LIGHTNING, 2, COLORLESS, 1, ; energies
	tx ThunderstormName ; name
	tx ThunderstormDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ZapdosThunderstormEffectCommands ; effect commands
	db LOW_RECOIL | DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSTORM ; animation

	; attack 2
	energy LIGHTNING, 3, GRASS, 1, ; energies
	tx ElectroCannonName ; name
	tx ThunderboltDescription ; description
	dw NONE ; description (cont)
	db 120 ; damage
	db DAMAGE_NORMAL ; category
	dw ZapdosThunderboltEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 9
	db ATK_ANIM_THUNDERBOLT ; animation

	db 1 ; retreat cost
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
	tx PlasmafDescription ; description
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

ZapdosLv68Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ZapdosLv68CardGfx ; gfx
	tx RaikouName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw ZAPDOS_LV68
	db 100 ; hp
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
	tx BigThunderName ; name
	tx BigThunderDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ZapdosBigThunderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_BIG_THUNDER ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
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
	dw NONE ; description (cont)
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
	db WR_FIGHTING ; weakness
	db NONE ; resistance
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
	tx AdHocShockDescription ; description
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
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx EleFishName ; category
	db 123 ; Pokedex number
	db 12 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv12Description ; description
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
	energy LIGHTNING, 1, ; energies
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

	; attack 2
	energy LIGHTNING, 3, ; energies
	tx ElectricalRendName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_THUNDERBOLT ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx EleFishName ; category
	db 124 ; Pokedex number
	db 52 ; level
	db 1, 4 ; length
	dw 13 * 10 ; weight
	tx PikachuLv12Description ; description
	db 19

RegielekiCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx RegielekiCardGfx ; gfx
	tx RegielekiName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw REGIELEKI
	db 90 ; hp
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

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx ElectronName ; category
	db 125 ; Pokedex number
	db 80 ; level
	db 5, 3 ; length
	dw 116 * 10 ; weight
	tx ZapdosLv64Description ; description
	db 0

SandshrewCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx SandshrewCardGfx ; gfx
	tx SandshrewName ; name
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
	tx SandshrewName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, FIGHTING, 1 ; energies
	tx CatPunchName ; name
	tx CatPunchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw MeowthCatPunchEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_CAT_PUNCH ; animation

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
	energy COLORLESS, 1, FIGHTING, 2 ; energies
	tx DredgeUpName ; name
	tx DredgeUpDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MillAtkOppCardsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
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
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw Mills3EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx BigSandCannonName ; name
	tx DredgeUpDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw MillAtkOppCardsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

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

CroagunkCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx CroagunkCardGfx ; gfx
	tx CroagunkName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw CROAGUNK
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
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

	; attack 2
	energy GRASS, 1, ; energies
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
	db TYPE_PKMN_FIGHTING ; type
	gfx ToxicroakCardGfx ; gfx
	tx ToxicroakName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw TOXICROAK
	db 70 ; hp
	db STAGE1 ; stage
	tx CroagunkName ; pre-evo name

	; attack 1
	energy GRASS, 1, COLORLESS, 1 ; energies
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
	energy COLORLESS, 2, FIGHTING, 1, ; energies
	tx ToxicRendName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
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
	db 10 ; damage
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
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MillAtkOppCardsEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	db 100 ; hp
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
	dw GolduckHyperBeamEffectCommands ; effect commands
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
	energy FIGHTING, 1 ; energies
	tx SandSlammerName ; name
	tx GigashockDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw RaichuGigashockEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 2
	energy COLORLESS, 1, FIGHTING, 2 ; energies
	tx DustyPillarName ; name
	tx DustyPillarDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw DustyPillareEffectCommands ; effect commands
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

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx StretchKickName ; name
	tx StretchKickDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw HitmonleeStretchKickEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_STRETCH_KICK ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
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
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx LeerName ; name
	tx LeerDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw RhyhornLeerEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

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
	db WR_LIGHTNING ; resistance
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
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx RockThrowName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 2
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx DigName ; name
	tx EarthquakeDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw DugtrioEarthquakeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx HardShellName ; category
	db 140 ; Pokedex number
	db 32 ; level
	db 3, 3 ; length
	dw 99 * 10 ; weight
	tx MarowakLv32Description ; description
	db 0

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
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx CrunchName ; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PoliwrathWhirlpoolEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_HYPER_BEAM ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 1, ; energies
	tx DreadMountainName ; name
	tx ThunderstormDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_NORMAL ; category
	dw ZapdosThunderstormEffectCommands ; effect commands
	db LOW_RECOIL | DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSTORM ; animation

	db 3 ; retreat cost
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
	tx ThunderpunchDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw ElectabuzzThunderpunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

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
	tx SpecialPunch ; name
	tx SonicboomDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
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

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx GaleName ; name
	tx GaleDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotGaleEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON | FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
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
	energy FIGHTING, 1, COLORLESS, 2 ; energies
	tx DigDrainName ; name
	tx DigDrainDescription ; description
	tx DigDrainDescriptionCont ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw DigDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DRAIN ; animation

	; attack 2
	energy FIGHTING, 2, COLORLESS, 2 ; energies
	tx RamName ; name
	tx RamDescription ; description
	tx RamDescriptionCont ; description (cont)
	db 70 ; damage
	db DAMAGE_NORMAL ; category
	dw RhydonRamEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT_RECOIL ; animation

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
	tx KabutoArmorDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw KabutoKabutoArmorEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy FIGHTING, 1 ; energies
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
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GolduckHyperBeamEffectCommands ; effect commands
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
	db LABORATORY | NONE ; sets
	dw TYRANTRUM
	db 100 ; hp
	db STAGE2 ; stage
	tx TyruntName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PrehistoricPowerName ; name
	tx PrehistoricPowerDescription ; description
	dw NONE ; description (cont)
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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
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
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PoliwrathWhirlpoolEffectCommands ; effect commands
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
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw LYCANROCM
	db 80 ; hp
	db STAGE1 ; stage
	tx RockruffName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, FIGHTING, 1 ; energies
	tx BloodThirstyClawsName ; name
	tx MeteorMashDescription ; description
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
	db 100 ; hp
	db STAGE2 ; stage
	tx KirliaName ; pre-evo name

	; attack 1
	energy FIGHTING, 1, COLORLESS, 1 ; energies
	tx BoneAttackName ; name
	tx BoneAttackDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MarowakBoneAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BONEMERANG ; animation

	; attack 2
	energy FIGHTING, 3 ; energies
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
	db WR_GRASS ; weakness
	db WR_LIGHTNING ; resistance
	tx BonekeeperName ; category
	db 105 ; Pokedex number
	db 32 ; level
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

GardevoirCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GardevoirCardGfx ; gfx
	tx GardevoirName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw GARDEVOIR
	db 110 ; hp
	db STAGE2 ; stage
	tx KirliaName ; pre-evo name

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

CresseliaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx CresseliaCardGfx ; gfx
	tx CresseliaName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw CRESSELIA
	db 40 ; hp
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
	energy PSYCHIC, 2 ; energies
	tx AmnesiaName ; name
	tx SlowpokesAmnesiaDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw AmnesiaEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_AMNESIA ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx DopeyName ; category
	db 79 ; Pokedex number
	db 9 ; level
	db 3, 11 ; length
	dw 79 * 10 ; weight
	tx SlowpokeLv9Description ; description
	db 19

SlowpokeLv18Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx SlowpokeLv18CardGfx ; gfx
	tx SlowpokeName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw SLOWPOKE_LV18
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
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

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx ScavengeName ; name
	tx ScavengeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SlowpokeScavengeEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx RevolvingName ; category
	db 156 ; Pokedex number
	db 18 ; level
	db 3, 11 ; length
	dw 79 * 10 ; weight
	tx SlowpokeLv9Description ; description
	db 16

SlowbroCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx SlowbroCardGfx ; gfx
	tx SlowbroName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw SLOWBRO
	db 70 ; hp
	db STAGE1 ; stage
	tx SlowpokeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StrangeBehaviorName ; name
	tx StrangeBehaviorDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SlowbroStrangeBehaviorEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
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

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_PSYCHIC ; resistance
	tx OverturningName ; category
	db 157 ; Pokedex number
	db 36 ; level
	db 5, 3 ; length
	dw 173 * 10 ; weight
	tx SlowbroDescription ; description
	db 1

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
	energy PSYCHIC, 1 ; energies
	tx HypnosisName ; name
	tx MayInflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw GastlySleepingGasEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYPNOSIS ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx DarkRevivalName ; name
	tx DarkRevivalDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PokemonFluteEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
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
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw DUSCLOPS
	db 50 ; hp
	db STAGE1 ; stage
	tx DuskullName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx TransparencyName ; name
	tx TransparencyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw HaunterTransparencyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx NightmareName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BeckonName ; category
	db 159 ; Pokedex number
	db 27 ; level
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
	db 80 ; hp
	db STAGE2 ; stage
	tx DusclopsName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx CurseName ; name
	tx CurseDescription ; description
	dw NONE ; description (cont)
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
	tx DarkMindName ; name
	tx DarkMindDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw GengarDarkMindEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_DARK_MIND ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx GripperName ; category
	db 160 ; Pokedex number
	db 38 ; level
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
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx MeditateName ; name
	tx ElectricalRendDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw Do30moreIfDFPStatusedEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db NONE ; weakness
	db WR_FIGHTING ; resistance
	tx ScreechName ; category
	db 161 ; Pokedex number
	db 27 ; level
	db 4, 3 ; length
	dw 2 ; weight
	tx GastlyLv17Description ; description
	db 19

MismagiusCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MismagiusCardGfx ; gfx
	tx MismagiusName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw MISMAGIUS
	db 80 ; hp
	db STAGE1 ; stage
	tx MisdreavusName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx SleepingMagicName ; name
	tx SleepingMagicDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw SleepLureEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db INFLICT_SLEEP ; flags 3
	db 0
	db ATK_ANIM_LURE ; animation

	; attack 2
	energy PSYCHIC, 3 ; energies
	tx ShadowBallName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
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
	db 16

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
	tx InvisibleWallDescriptionCont ; description (cont)
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
	tx MeditateName ; name
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
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx ConfuseRayName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AlakazamConfuseRayEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
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

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx SunName ; category
	db 203 ; Pokedex number
	db 53 ; level
	db 4, 7 ; length
	dw 90 * 10 ; weight
	tx JynxDescription ; description
	db 0

MewtwoLv60Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoLv60CardGfx ; gfx
	tx MewtwoName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw MEWTWO_LV60
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DamageSwapName ; name
	tx DamageSwapDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw AlakazamDamageSwapEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

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
	tx NeutralizingShieldName ; name
	tx NeutralizingShieldDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MewNeutralizingShieldEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 1 ; energies
	tx PsyshockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MewPsyshockEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
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
	db MYSTERY | NONE ; sets
	dw MEW_LV23
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

BeldumCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx BeldumCardGfx ; gfx
	tx BeldumName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw BELDUM
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx EnergySpikeName ; name
	tx EnergySpikeDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx IronBallName ; category
	db 169 ; Pokedex number
	db 19 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx BeldumDescription ; description
	db 8

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
	energy FIGHTING, 1 ; energies
	tx BulletPunchName ; name
	tx QuickAttackDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw QuickAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation
	
	; attack 2
	energy PSYCHIC, 1, COLORLESS, 2 ; energies
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

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx IronClawName ; category
	db 170 ; Pokedex number
	db 38 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MetangDescription ; description
	db 8

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
	tx MeteorMashName ; name
	tx MeteorMashDescription ; description
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
	tx SlashName ; GasName
	tx BattleBlastDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw BattleBlastEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx IronLegName ; category
	db 171 ; Pokedex number
	db 68 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MetagrossDescription ; description
	db 8		

MunnaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MunnaCardGfx ; gfx
	tx MunnaName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw MUNNA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx HypnosisName ; name
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
	energy PSYCHIC, 2 ; energies
	tx DreamEaterName ; name
	tx DreamEaterDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw HaunterDreamEaterEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx DreamEaterName ; category
	db 172 ; Pokedex number
	db 18 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx MunnaDescription ; description
	db 19

MusharnaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MusharnaCardGfx ; gfx
	tx MusharnaName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw MUSHARNA
	db 90 ; hp
	db STAGE1 ; stage
	tx MunnaName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx ForewarnName ; name
	tx ForewarnDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw UltravisionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1, ; energies
	tx DreamWaltzName; name
	tx DreamWaltzDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw SleepTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db INFLICT_SLEEP ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx DrowsingName ; category
	db 173 ; Pokedex number
	db 36 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx HypnoDescription ; description
	db 0

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
	energy GRASS, 1, COLORLESS, 1 ; energies
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
	db WR_FIGHTING ; resistance
	tx RadomeName ; category
	db 44 ; Pokedex number
	db 25 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewtwoLv60Description ; description
	db 8

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
	energy PSYCHIC, 1 ; energies
	tx BugsRadarName ; name
	tx ProphecyDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw HypnoProphecyEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 2, ; energies
	tx BugbuzzName ; name
	tx BugbuzzDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw BugbuzzEffectCommands ; effect commands
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
	db 8		

MorelullCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MorelullCardGfx ; gfx
	tx MorelullName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw MORELULL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx SporeName ; name
	tx InflictSleepDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SporeEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SPORE ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx AbsorbName ; name
	tx ButterfreesMegaDrainDescription ; description
	tx ButterfreesMegaDrainDescriptionCont ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ButterfreeMegaDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx HypnosisName ; category
	db 96 ; Pokedex number
	db 17 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx DrowzeeDescription ; description
	db 19

ShiinoticCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx ShiinoticCardGfx ; gfx
	tx ShiinoticName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw SHIINOTIC
	db 90 ; hp
	db STAGE1 ; stage
	tx MorelullName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DarkImpulseName ; name
	tx DarkImpulseDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw JewelseekersEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx DarkMindName ; name
	tx DarkMindDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw HypnoDarkMindEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx HypnosisName ; category
	db 97 ; Pokedex number
	db 48 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx HypnoDescription ; description
	db 0

MewLv15Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewLv15CardGfx ; gfx
	tx MewName ; name
	db STAR ; rarity
	db PROMOTIONAL | GB ; sets
	dw MEW_LV15
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx MysteryAttackName ; name
	tx MysteryAttackDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw MewMysteryAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_EFFECT ; animation

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

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx NewSpeciesName ; category
	db 151 ; Pokedex number
	db 15 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv15Description ; description
	db 0

MewtwoLv53Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoLv53CardGfx ; gfx
	tx MewtwoName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw MEWTWO_LV53
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx PsychicName ; name
	tx PsychicDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw MewtwoPsychicEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
	tx BarrierName ; name
	tx BarrierDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MewtwoBarrierEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK | DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_BARRIER ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx GeneticName ; category
	db 150 ; Pokedex number
	db 53 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx MewtwoLv53Description ; description
	db 0

MewtwoAltLV60Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoAltLV60CardGfx ; gfx
	tx MewtwoName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw MEWTWO_ALT_LV60
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
	tx PsyshockName ; name
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
	dw PikachuThunderJoltEffectCommands ; effect commands
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
	tx DoubleKickName ; name
	tx DoubleAttackX30Description ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw NidorinoDoubleKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

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
	db 16

AlakazamCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx AlakazamCardGfx ; gfx
	tx AlakazamName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ALAKAZAM
	db 100 ; hp
	db STAGE2 ; stage
	tx ZweilousName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DarkImpulseName ; name
	tx DarkImpulseDescription ; description
	dw NONE ; description (cont)
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
	tx RageName ; name
	tx DodriosRageDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw RageEffectCommands ; effect commands
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

DrowzeeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DrowzeeCardGfx ; gfx
	tx DrowzeeName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw DROWZEE
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PeekName ; name
	tx PeekDescription ; description
	tx PeekDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MankeyPeekEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 1, ; energies
	tx OpportunistName ; name
	tx OpportunistDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw OpportunistEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_AMNESIA ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_PSYCHIC ; resistance
	tx DarkName ; category
	db 163 ; Pokedex number
	db 25 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx DrowzeeDescription ; description
	db 19

HypnoCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx HypnoCardGfx ; gfx
	tx HypnoName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw HYPNO
	db 80 ; hp
	db STAGE1 ; stage
	tx DrowzeeName ; pre-evo name

	; attack 1
	energy PSYCHIC, 2 ; energies
	tx ProphecyName ; name
	tx ProphecyDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw HypnoProphecyEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_5 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx VengeanceName ; name
	tx LastRespectsDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw LastRespectsEffectCommands ; effect commands
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
	tx HypnoDescription ; description
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
	tx DiveBombName ; name
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
	energy DARKNESS, 1, COLORLESS, 1, ; energies
	tx LeechLifeName ; name
	tx ZubatsLeechLifeDescription ; description
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
	db 16

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
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx LeechLifeName ; name
	tx GolbatsLeechLifeDescription ; description
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
	db 0

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

TentacoolCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx TentacoolCardGfx ; gfx
	tx TentacoolName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw TENTACOOL
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx CowardiceName ; name
	tx CowardiceDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw TentacoolCowardiceEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy WATER, 1 ; energies
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

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx MockKelpName ; category
	db 80 ; Pokedex number
	db 10 ; level
	db 2, 11 ; length
	dw 100 * 10 ; weight
	tx TentacoolDescription ; description
	db 19

TentacruelCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx TentacruelCardGfx ; gfx
	tx TentacruelName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw TENTACRUEL
	db 70 ; hp
	db STAGE1 ; stage
	tx TentacoolName ; pre-evo name

	; attack 1
	energy WATER, 1, COLORLESS, 1 ; energies
	tx PoisonHuntName ; name
	tx PoisonHuntDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PoisonLureEffectCommands; effect commands
	db INFLICT_POISON  ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	; attack 2
	energy WATER, 1, GRASS, 2 ; energies
	tx SuperFangName ; name
	tx SuperFangDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw PoisonHalfEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

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
	db 50 ; hp
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
	energy COLORLESS, 1, PSYCHIC, 1 ; energies
	tx FoulGasName ; name
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
	db WR_GRASS ; resistance
	tx ScorpionName ; category
	db 38 ; Pokedex number
	db 28 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 8

DrapionCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DrapionCardGfx ; gfx
	tx DrapionName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DRAPION
	db 70 ; hp
	db STAGE1 ; stage
	tx SkorupiName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, PSYCHIC, 1, ; energies
	tx WrackdownName ; name
	tx WrackdownDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw WrackdownCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_GLOW_EFFECT ; animation
	
	; attack 2
	energy GRASS, 2, COLORLESS, 2 ; energies
	tx HazardousClawsName ; name
	tx HazardousClawsDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw HazardousEffectCommands ; effect commands
	db INFLICT_POISON | INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POISON_FANG ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_GRASS ; resistance
	tx OgreScorpionName ; category
	db 39 ; Pokedex number
	db 52 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MewLv8Description ; description
	db 8		

SneaselCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SneaselCardGfx ; gfx
	tx MagikarpName ; name
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
	energy WATER, 1, PSYCHIC, 1 ; energies
	tx HeadacheName; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GolduckHyperBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	tx MagikarpDescription ; description
	db 18

WeavileCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx WeavileCardGfx ; gfx
	tx GyaradosName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw WEAVILE
	db 70 ; hp
	db STAGE1 ; stage
	tx MagikarpName ; pre-evo name

	; attack 1
	energy WATER, 1,; energies
	tx HuntingName ; name
	tx NinetalesLureDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw NinetalesLureEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	; attack 2
	energy COLORLESS, 1, WATER, 2 ; energies
	tx BeatUpName ; name
	tx DoTheWaveDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw WigglytuffDoTheWaveEffectCommands ; effect commands
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

UmbreonCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx UmbreonCardGfx ; gfx
	tx UmbreonName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw UMBREON
	db 80 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx MeanLookName ; name
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

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
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

PidgeyCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeyCardGfx ; gfx
	tx PidgeyName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw PIDGEY
	db 40 ; hp
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
	db WR_FIGHTING ; resistance
	tx TinyBirdName ; category
	db 174 ; Pokedex number
	db 18 ; level
	db 1, 0 ; length
	dw 4 * 10 ; weight
	tx PidgeyDescription ; description
	db 18

PidgeottoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeottoCardGfx ; gfx
	tx PidgeottoName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PIDGEOTTO
	db 70 ; hp
	db STAGE1 ; stage
	tx PidgeyName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx MessengerName ; name
	tx ForewarnDescription ; description
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
	tx PidgeottoDescription ; description
	db 16

PidgeotLv38Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeotLv38CardGfx ; gfx
	tx PidgeotName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw PIDGEOT_LV38
	db 100 ; hp
	db STAGE2 ; stage
	tx PidgeottoName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx PounceName ; name
	tx GravelersHardenDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GravelerHardenEffectCommands ; effect commands
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

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx RavenName ; category
	db 176 ; Pokedex number
	db 58 ; level
	db 4, 11 ; length
	dw 87 * 10 ; weight
	tx Pidgeot1Description ; description
	db 0

PidgeotLv40Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx PidgeotLv40CardGfx ; gfx
	tx PidgeotName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw PIDGEOT_LV40
	db 90 ; hp
	db STAGE2 ; stage
	tx PidgeottoName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx WingAttackName ; name
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

	; attack 2
	energy COLORLESS, 3 ; energies
	tx HurricaneName ; name
	tx HurricaneDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotHurricaneEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx BirdName ; category
	db 18 ; Pokedex number
	db 40 ; level
	db 4, 11 ; length
	dw 87 * 10 ; weight
	tx Pidgeot2Description ; description
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

	; attack 2
	energy COLORLESS, 1 ; energies
	tx ScavengeName ; name
	tx ItemFinderDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ItemFinderEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

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

SpearowCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SpearowCardGfx ; gfx
	tx SpearowName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SPEAROW
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx PeckName ; name
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
	tx MirrorMoveName ; name
	tx SpearowsMirrorMoveDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw SpearowMirrorMoveEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MIRROR_MOVE ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TinyBirdName ; category
	db 179 ; Pokedex number
	db 13 ; level
	db 1, 0 ; length
	dw 4 * 10 ; weight
	tx SpearowDescription ; description
	db 19

FearowCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx FearowCardGfx ; gfx
	tx FearowName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw FEAROW
	db 70 ; hp
	db STAGE1 ; stage
	tx SpearowName ; pre-evo name

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
	tx FearowName ; category
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
	tx SingName ; name
	tx MayInflictSleepDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw ClefairySingEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SING ; animation

	; attack 2
	energy COLORLESS, 3 ; energies
	tx MetronomeName ; name
	tx ClefairysMetronomeDescription ; description
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
	db WR_GRASS ; weakness
	db WR_FIGHTING ; resistance
	tx SpikeBallName ; category
	db 181 ; Pokedex number
	db 14 ; level
	db 2, 0 ; length
	dw 17 * 10 ; weight
	tx ClefairyDescription ; description
	db 18

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
	energy COLORLESS, 2 ; energies
	tx AgilityName ; name
	tx FearowsAgilityDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AgilityEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

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
	db WR_GRASS ; weakness
	db WR_FIGHTING ; resistance
	tx HappinessName ; category
	db 182 ; Pokedex number
	db 34 ; level
	db 4, 3 ; length
	dw 88 * 10 ; weight
	tx ClefableDescription ; description
	db 0

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
	energy COLORLESS, 3, ; energies
	tx RevivalBlessName ; name
	tx ReviveDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ReviveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_FIGHTING ; resistance
	tx JubileeName ; category
	db 183 ; Pokedex number
	db 52 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx JigglypuffLv12Description ; description
	db 16

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
	tx ScoutName ; name
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
	dw ElectrodeEnergySpikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	db 16

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
	tx SpecialPunch ; name
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

MeowthLv14Card:
	db TYPE_PKMN_COLORLESS ; type
	gfx MeowthLv14CardGfx ; gfx
	tx MeowthName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | GB ; sets
	dw MEOWTH_LV14
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx CatPunchName ; name
	tx CatPunchDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MeowthCatPunchEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_CAT_PUNCH ; animation

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
	db WR_PSYCHIC ; resistance
	tx ScratchCatName ; category
	db 52 ; Pokedex number
	db 14 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx MeowthLv14Description ; description
	db 16

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
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GolduckHyperBeamEffectCommands ; effect commands
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

OranguruCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx OranguruCardGfx ; gfx
	tx OranguruName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw ORANGURU
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
	dw NONE ; description (cont)
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
	tx ZubatsLeechLifeDescription ; description
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
	db 60 ; hp
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx MirrorMoveName ; name
	tx SpearowsMirrorMoveDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw SpearowMirrorMoveEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MIRROR_MOVE ; animation

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_PSYCHIC ; resistance
	tx MusicNoteName ; category
	db 196 ; Pokedex number
	db 40 ; level
	db 7, 3 ; length
	dw 176 * 10 ; weight
	tx KangaskhanDescription ; description
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
	tx MorphDescriptionCont ; description (cont)
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
	db WR_PSYCHIC ; resistance
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
	db WR_PSYCHIC ; resistance
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
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx Conversion1Name ; name
	tx Conversion1Description ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw PorygonConversion1EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx Conversion2Name ; name
	tx Conversion2Description ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw PorygonConversion2EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

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
	energy COLORLESS, 1 ; energies
	tx Conversion1Name ; name
	tx Conversion1Description ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw PorygonConversion1EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx Conversion2Name ; name
	tx Conversion2Description ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw PorygonConversion2EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx VirtualName ; category
	db 137 ; Pokedex number
	db 12 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx PorygonDescription ; description
	db 0

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
	dw ConversionZEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx Conversion2Name ; name
	tx Conversion2Description ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw PorygonConversion2EffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

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

RegidragoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RegidragoCardGfx ; gfx
	tx RegidragoName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw REGIDRAGO
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

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

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx SleepingName ; category
	db 143 ; Pokedex number	; attack 2
	energy COLORLESS, 4 ; energies
	tx AvalancheName ; name
	tx KarateChopDescription ; description
	dw NONE ; description (cont)
	db 70 ; damage
	db DAMAGE_MINUS ; category
	dw MachokeKarateChopEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx DragonName ; category
	db 206 ; Pokedex number
	db 80 ; level
	db 6, 11 ; length
	dw 1014 * 10 ; weight
	tx SnorlaxDescription ; description
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
	tx BulbasaursLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db RESIDUAL ; category
	dw BulbasaurLeechSeedEffectCommands ; effect commands
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
	db 18

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
	tx DiveBombName ; category
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
	db NONE ; weakness
	db WR_PSYCHIC ; resistance
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
	dw NONE ; description (cont)

ImposterProfessorOakCard:
	db TYPE_TRAINER ; type
	gfx ImposterProfessorOakCardGfx ; gfx
	tx ImposterProfessorOakName ; name
	db STAR ; rarity
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
	db DIAMOND ; rarity
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
	dw NONE ; description (cont)

PokemonTraderCard:
	db TYPE_TRAINER ; type
	gfx PokemonTraderCardGfx ; gfx
	tx PokemonTraderName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_TRADER
	dw PokemonTraderEffectCommands ; effect commands
	tx PokemonTraderDescription ; description
	dw NONE ; description (cont)

PokemonBreederCard:
	db TYPE_TRAINER ; type
	gfx PokemonBreederCardGfx ; gfx
	tx PokemonBreederName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_BREEDER
	dw PokemonBreederEffectCommands ; effect commands
	tx PokemonBreederDescription ; description
	dw NONE ; description (cont)

ClefairyDollCard:
	db TYPE_TRAINER ; type
	gfx ClefairyDollCardGfx ; gfx
	tx ClefairyDollName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw TOGEPI_DOLL
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
	tx MysteriousFossilDescription ; description
	tx MysteriousFossilDescriptionCont ; description (cont)

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
	db STAR ; rarity
	db LABORATORY | NONE ; sets
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
	db DIAMOND ; rarity
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
	db DIAMOND ; rarity
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
	tx GustOfWindName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw GUST_OF_WIND
	dw GustOfWindEffectCommands ; effect commands
	tx GustOfWindDescription ; description
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
	tx DevolutionSprayDescriptionCont ; description (cont)

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
	db DIAMOND ; rarity
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

GamblerCard:
	db TYPE_TRAINER ; type
	gfx GamblerCardGfx ; gfx
	tx GamblerName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw GAMBLER
	dw GamblerEffectCommands ; effect commands
	tx GamblerDescription ; description
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
