;Psychic
RaltsCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx RaltsCardGfx ; gfx
	tx RaltsName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
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
	dw Confusion50PercentEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx EmotionName ; category
	db 151 ; Pokedex number
	db 13 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx RaltsDescription ; description
	db 16

KirliaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx KirliaCardGfx ; gfx
	tx KirliaName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
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
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx EmotionName ; category
	db 151 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx KirliaDescription ; description
	db 16

GardevoirCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GardevoirCardGfx ; gfx
	tx GardevoirName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw GARDEVOIR
	db 100 ; hp
	db STAGE2 ; stage
	tx KirliaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx PsyShadowName ; name
	tx PsyShadowDescription ; description
	tx AbilityCondition ; description (cont)
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
	db WR_METAL ; weakness
	db WR_FIGHTING ; resistance
	tx EmotionName ; category
	db 151 ; Pokedex number
	db 55 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx GardevoirDescription ; description
	db 0		

DuskullCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DuskullCardGfx ; gfx
	tx DuskullName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
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
	tx DuskullDescription ; description
	db 16

DusclopsCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DusclopsCardGfx ; gfx
	tx DusclopsName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	tx DusclopsDescription ; description
	db 16

DusknoirCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DusknoirCardGfx ; gfx
	tx DusknoirName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw DUSKNOIR
	db 100 ; hp
	db STAGE2 ; stage
	tx DusclopsName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SinisterHandName ; name
	tx SinisterHandDescription ; description
	tx AbilityCondition2 ; description (cont)
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
	tx DusknoirDescription ; description
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
	energy COLORLESS, 1 ; energies
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
	tx MisdreavusDescription ; description
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
	db INFLICT_SLEEP ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
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
	tx MismagiusDescription ; description
	db 0

SpiritombCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx SpiritombCardGfx ; gfx
	tx SpiritombName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SPIRITOMB
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx InvisibleWallName ; name
	tx InvisibleWallDescription ; description
	tx AbilityCondition2 ; description (cont)
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
	tx SpiritombDescription ; description
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
	tx EspeonDescription ; description
	db 0

AbraCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx AbraCardGfx ; gfx
	tx AbraName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ABRA
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
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
	db ATK_ANIM_GLOW_ATTACK ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx ConfusionAbraName ; name
	tx ConfusionAbraDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AbraConfusionEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db ATTACHED_ENERGY_BOOST_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx PsiName ; category
	db 152 ; Pokedex number
	db 15 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx AbraDescription ; description
	db 16

KadabraCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx KadabraCardGfx ; gfx
	tx KadabraName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw KADABRA
	db 70 ; hp
	db STAGE1 ; stage
	tx AbraName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx KinesisName ; name
	tx OpponentAttackMayDoNothingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SmokescreenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx SuperPsiName ; name
	tx SuperPsiDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw SuperPsiEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db ATTACHED_ENERGY_BOOST_F ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx PsiName ; category
	db 153 ; Pokedex number
	db 38 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx KadabraDescription ; description
	db 16

AlakazamCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx AlakazamCardGfx ; gfx
	tx AlakazamName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw ALAKAZAM
	db 90 ; hp
	db STAGE2 ; stage
	tx KadabraName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DamageSwapName ; name
	tx DamageSwapDescription ; description
	tx AbilityCondition ; description (cont)
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
	tx PsychicZenName ; name
	tx PsychicZenDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw PsychicZenEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db ATTACHED_ENERGY_BOOST_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx PsiName ; category
	db 154 ; Pokedex number
	db 62 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx AlakazamDescription ; description
	db 0

RellorCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx RellorCardGfx ; gfx
	tx RellorName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw RELLOR
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx MysteriousPowderName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Confusion50PercentEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx RollingName ; category
	db 43 ; Pokedex number
	db 16 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx RellorDescription ; description
	db 16

RabscaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx RabscaCardGfx ; gfx
	tx RabscaName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw RABSCA
	db 70 ; hp
	db STAGE1 ; stage
	tx RellorName ; pre-evo name

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

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx RadomeName ; category
	db 44 ; Pokedex number
	db 41 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx RabscaDescription ; description
	db 16

MewtwoCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewtwoCardGfx ; gfx
	tx MewtwoName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
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
	db MYSTERY | NONE ; sets
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
	tx MimikyuDescription ; description
	db 3

MewLv23Card:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MewLv23CardGfx ; gfx
	tx MewName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
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
	tx MimikyuDescription ; description
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
	dw LuckyFindEffectCommands ; effect commands
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
	db WR_METAL ; weakness
	db NONE ; resistance
	tx JewelName ; category
	db 151 ; Pokedex number
	db 23 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx CarbinkDescription ; description
	db 0

MunnaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx MunnaCardGfx ; gfx
	tx MunnaName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
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
	db COLOSSEUM | NONE ; sets
	dw MUSHARNA
	db 80 ; hp
	db STAGE1 ; stage
	tx MunnaName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DreamMistName ; name
	tx DreamMistDescription ; description
	tx AbilityCondition ; description (cont)
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
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx MysteriousPowderName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Confusion50PercentEffectCommands ; effect commands
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
	tx BlipbugDescription ; description
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
	tx DottlerDescription ; description
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
	db MYSTERY | NONE ; sets
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
	db WR_METAL ; weakness
	db WR_DARKNESS ; resistance
	tx BeeFlyName ; category
	db 96 ; Pokedex number
	db 7 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx CutieflyDescription ; description
	db 16

RibombeeCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx RibombeeCardGfx ; gfx
	tx RibombeeName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	db INFLICT_SLEEP/INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_POWDER_EFFECT_CHANCE ; animation

	; attack 2
	energy PSYCHIC, 2 ; energies
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

	db 0 ; retreat cost
	db WR_METAL ; weakness
	db WR_DARKNESS ; resistance
	tx BeeFlyName ; category
	db 97 ; Pokedex number
	db 48 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx RibombeeDescription ; description
	db 0

CresseliaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx CresseliaCardGfx ; gfx
	tx CresseliaName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw CRESSELIA
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx LunarDreamsName ; name
	tx LunarDreamsDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LunarDreamsEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 3 ; energies
	tx LunarCressName ; name
	tx DreamyWishDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DreamyWishEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx LunarName ; category
	db 150 ; Pokedex number
	db 78 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx CresseliaDescription ; description
	db 0

NatuCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx NatuCardGfx ; gfx
	tx NatuName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw NATU
	db 40 ; hp
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

	; attack 2
	energy PSYCHIC, 1 ; energies
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
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 0 ; retreat cost
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx TinyBirdName ; category
	db 96 ; Pokedex number
	db 13 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx NatuDescription ; description
	db 16

XatuCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx XatuCardGfx ; gfx
	tx XatuName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw XATU
	db 70 ; hp
	db STAGE1 ; stage
	tx NatuName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx LifeDrainName ; name
	tx LifeDrainDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LifeDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db NONE ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
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
	db WR_LIGHTNING ; weakness
	db WR_FIGHTING ; resistance
	tx MysticName ; category
	db 97 ; Pokedex number
	db 44 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx XatuDescription ; description
	db 0

PumpkabooCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx PumpkabooCardGfx ; gfx
	tx PumpkabooName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw PUMPKABOO
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx LeechSeedName ; name
	tx ExeggcutesLeechSeedDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggcuteLeechSeedEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_WATER ; resistance
	tx PumpkinName ; category
	db 97 ; Pokedex number
	db 52 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx GourgeistDescription ; description
	db 0

GourgeistCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GourgeistCardGfx ; gfx
	tx GourgeistName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw GOURGEIST
	db 80 ; hp
	db STAGE1 ; stage
	tx PumpkabooName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx TrickOrTreatName ; name
	tx TrickOrTreatDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw HalloweenEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx PumpkinTrickName ; name
	tx PumpkinTrickDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PumpkinTrickEffectCommands ; effect commands
	db INFLICT_BURN|INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_WATER ; resistance
	tx PumpkinName ; category
	db 97 ; Pokedex number
	db 52 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx GourgeistDescription ; description
	db 0

GolettCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GolettCardGfx ; gfx
	tx GolettName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw GOLETT
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx RelicSearchName ; name
	tx RelicSearchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw RelicSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx SoulDrainName ; name
	tx SoulDrainDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SoulDrainEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx AutomatonName ; category
	db 96 ; Pokedex number
	db 32 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx GolettDescription ; description
	db 16

GolurkCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GolurkCardGfx ; gfx
	tx GolurkName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw GOLURK
	db 100 ; hp
	db STAGE1 ; stage
	tx GolettName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1, COLORLESS, 2 ; energies
	tx DevolutionPunchName ; name
	tx DevolutionBeamDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MewDevolutionBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 2 ; energies
	tx FistOfAntiquityName ; name
	tx FistOfAntiquityDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw FistOfAntiquityEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx AutomatonName ; category
	db 97 ; Pokedex number
	db 66 ; level
	db 5, 3 ; length
	dw 167 * 10 ; weight
	tx GolurkDescription ; description
	db 0

GothitaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GothitaCardGfx ; gfx
	tx GothitaName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw GOTHITA
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1, ; energies
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
	energy PSYCHIC, 1 ; energies
	tx DrainingKissName ; name
	tx ButterfreesMegaDrainDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AbsorbEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_DRAIN ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx AstralName ; category
	db 43 ; Pokedex number
	db 9 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx GothitaDescription ; description
	db 16

GothoritaCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GothoritaCardGfx ; gfx
	tx GothoritaName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw GOTHORITA
	db 70 ; hp
	db STAGE1 ; stage
	tx GothitaName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
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
	db ATK_ANIM_GLOW_ATTACK ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
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

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx AstralName ; category
	db 44 ; Pokedex number
	db 37 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx GothoritaDescription ; description
	db 16

GothitelleCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx GothitelleCardGfx ; gfx
	tx GothitelleName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw GOTHITELLE
	db 100 ; hp
	db STAGE2 ; stage
	tx GothoritaName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx PsychicLockName ; name
	tx PsychicLockDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PsychicLockEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	; attack 2
	energy PSYCHIC, 3, COLORLESS, 1 ; energies
	tx PsystormName ; name
	tx PsystormDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_X ; category
	dw Damage10xEachEnergyInBothPlayAreas ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_DARKNESS ; weakness
	db WR_FIGHTING ; resistance
	tx AstralName ; category
	db 45 ; Pokedex number
	db 63 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx GothitelleDescription ; description
	db 0
DreepyCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DreepyCardGfx ; gfx
	tx DreepyName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw DREEPY
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
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

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx DragonTailName ; name
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

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx StealthName ; category
	db 43 ; Pokedex number
	db 15 ; level
	db 3, 3 ; length
	dw 77 * 10 ; weight
	tx DreepyDescription ; description
	db 16

DrakloakCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DrakloakCardGfx ; gfx
	tx DrakloakName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw DRAKLOAK
	db 60 ; hp
	db STAGE1 ; stage
	tx DreepyName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SummonDirectiveName ; name
	tx SummonDirectiveDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw SummonDirectiveEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx TeleportName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db RESIDUAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx StealthName ; category
	db 44 ; Pokedex number
	db 46 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx DrakloakDescription ; description
	db 16

DragapultCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx DragapultCardGfx ; gfx
	tx DragapultName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw DRAGAPULT
	db 90 ; hp
	db STAGE2 ; stage
	tx DrakloakName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx DragonLauncherName ; name
	tx DragonLauncherDescription; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DragonLauncherEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx JetAssaultName ; name
	tx JetAssaultDescription; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw JetAssaultEffectCommands ; effect commands
	db INFLICT_BURN ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx StealthName ; category
	db 45 ; Pokedex number
	db 77 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx DragapultDescription ; description
	db 0

AegislashShieldCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx AegislashShieldCardGfx ; gfx
	tx AegislashShieldFormeName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw AEGISLASH_SHIELD
	db 100 ; hp
	db STAGE2 ; stage
	tx DoubladeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StanceChangeName ; name
	tx StanceChangeShieldDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw StanceChangeBladeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 2 ; energies
	tx KingsShieldName ; name
	tx KingsShieldDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MegatonHammerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_FIGHTING ; resistance
	tx SwordName ; category
	db 154 ; Pokedex number
	db 65 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx AegislashDescription ; description
	db 0

XerneasCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx XerneasCardGfx ; gfx
	tx XerneasName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw XERNEAS
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
	tx LunarDreamsName ; name
	tx LunarDreamsDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw LunarDreamsEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 3 ; energies
	tx LunarCressName ; name
	tx DreamyWishDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DreamyWishEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx LifeName ; category
	db 150 ; Pokedex number
	db 84 ; level
	db 6, 7 ; length
	dw 269 * 10 ; weight
	tx XerneasDescription ; description
	db 0	
;Darkness
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
	dw Paralysis50PercentEffectCommands ; effect commands
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
	tx DeinoDescription ; description
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
	tx ZweilousDescription ; description
	db 16

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
	tx AbilityCondition ; description (cont)
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
	db 20 ; damage
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
	tx HydreigonDescription ; description
	db 0

MurkrowCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx MurkrowCardGfx ; gfx
	tx MurkrowName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
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
	energy DARKNESS, 1, COLORLESS, 1 ; energies
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
	db COLOSSEUM | NONE ; sets
	dw HONCHKROW
	db 80 ; hp
	db STAGE1 ; stage
	tx MurkrowName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx NightSyndicateName ; name
	tx NightSyndicateDescription ; description
	tx AbilityCondition2 ; description (cont)
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
	db EVOLUTION | NONE ; sets
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
	dw ToxicEffectCommands ; effect commands
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
	tx UmbreonDescription ; description
	db 0

CascoonCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx CascoonCardGfx ; gfx
	tx CascoonName ; name
	IF LC_CHALLENGE == 1 ; If LC is active, then change rarity.
	db DIAMOND ; rarity
	ELSE
	db CIRCLE ; rarity
	ENDC
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
	db 16

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
	tx PoisonmothName; category
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
	db COLOSSEUM | NONE ; sets
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
	dw Poison50PercentEffectCommands ; effect commands
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
	dw SmokescreenEffectCommands ; effect commands
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
	db 16

DragalgeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DragalgeCardGfx ; gfx
	tx DragalgeName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
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
	db LABORATORY | NONE ; sets
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
	tx MimikyuDescription ; description
	db 16

DrapionCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DrapionCardGfx ; gfx
	tx DrapionName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
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
	db ATK_ANIM_GLOW_ATTACK ; animation
	
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
	tx MimikyuDescription ; description
	db 0		

VenipedeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx VenipedeCardGfx ; gfx
	tx VenipedeName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw VENIPEDE
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1, ; energies
	tx PoisonStingName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Poison50PercentEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 1 ; energies
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

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx CentipedeName ; category
	db 16 ; Pokedex number
	db 19 ; level
	db 2, 7 ; length
	dw 17 * 10 ; weight
	tx VenipedeDescription ; description
	db 16

WhirlipedeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx WhirlipedeCardGfx ; gfx
	tx WhirlipedeName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw WHIRLIPEDE
	db 80 ; hp
	db STAGE1 ; stage
	tx VenipedeName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx SteamRollerName ; name
	tx SteamRollerDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SteamRollerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PUNCH ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 2 ; energies
	tx PoisonRingName ; name
	tx PoisonRingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw PoisonRingEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_TOXIC ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx CentipedeName ; category
	db 20 ; Pokedex number
	db 27 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx WhirlipedeDescription ; description
	db 16

ScolipedeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ScolipedeCardGfx ; gfx
	tx ScolipedeName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SCOLIPEDE
	db 100 ; hp
	db STAGE2 ; stage
	tx WhirlipedeName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DastardlyJabName ; name
	tx DastardlyJabDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DastardlyJabEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_TOXIC ; animation

	; attack 1
	energy DARKNESS, 1, COLORLESS, 2 ; energies
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


	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_GRASS ; resistance
	tx CentipedeName ; category
	db 21 ; Pokedex number
	db 49 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx ScolipedeDescription ; description
	db 0

InkayCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx InkayCardGfx ; gfx
	tx InkayName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw INKAY
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
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
	energy COLORLESS, 1 ; energies
	tx ConfusionWaveName ; name
	tx FoulOdorDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FlappleFoulOdorEffectCommands ; effect commands
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
	db TYPE_PKMN_DARKNESS ; type
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
	tx AbilityCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MalamarStrangeBehaviorEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy DARKNESS, 2 ; energies
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

ZubatCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ZubatCardGfx ; gfx
	tx ZubatName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw ZUBAT
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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
	energy DARKNESS, 1 ; energies
	tx SkillDiveName ; name
	tx SparkDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BatName ; category
	db 16 ; Pokedex number
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
	db LOST_ISLE | NONE ; sets
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

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx BatName ; category
	db 20 ; Pokedex number
	db 29 ; level
	db 5, 3 ; length
	dw 121 * 10 ; weight
	tx GolbatDescription ; description
	db 16

CrobatCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx CrobatCardGfx ; gfx
	tx CrobatName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
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
	dw ToxicEffectCommands ; effect commands
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
	tx CrobatDescription ; description
	db 0

CroagunkCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx CroagunkCardGfx ; gfx
	tx CroagunkName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw CROAGUNK
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1, ; energies
	tx PoisonStingName ; name
	tx MayInflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Poison50PercentEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 1 ; energies
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
	db 17 ; level
	db 1, 8 ; length
	dw 62 * 10 ; weight
	tx CroagunkDescription ; description
	db 17

ToxicroakCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ToxicroakCardGfx ; gfx
	tx ToxicroakName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
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
	db 44 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx ToxicroakDescription ; description
	db 0

SneaselCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SneaselCardGfx ; gfx
	tx SneaselName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
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
	tx KnockOffDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw KnockOffEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
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
	tx WeavileName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
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
	tx WeavileDescription ; description
	db 0

ImpidimpCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ImpidimpCardGfx ; gfx
	tx ImpidimpName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw IMPIDIMP
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
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

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db NONE ; resistance
	tx WilyName ; category
	db 85 ; Pokedex number
	db 18 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx ImpidimpDescription ; description
	db 16

MorgremCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx MorgremCardGfx ; gfx
	tx MorgremName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MORGREM
	db 80 ; hp
	db STAGE1 ; stage
	tx ImpidimpName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx ThiefName ; name
	tx AstonishDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw AstonishEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx FalseSurrenderName; name
	tx DontApplyWsRsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_METAL ; weakness
	db WR_PSYCHIC ; resistance
	tx DeviousName ; category
	db 95 ; Pokedex number
	db 34 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MorgremDescription ; description
	db 16

GrimmsnarlCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GrimmsnarlCardGfx ; gfx
	tx GrimmsnarlName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw GRIMMSNARL
	db 110 ; hp
	db STAGE2 ; stage
	tx MorgremName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx DarkOathName ; name
	tx DarkOathDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DarkOathEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx SpiritBreakName; name
	tx SpiritBreakDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw SpiritBreakEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_METAL ; weakness
	db WR_PSYCHIC ; resistance
	tx BulkUpName ; category
	db 95 ; Pokedex number
	db 63 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx GrimmsnarlDescription ; description
	db 0

GastlyCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GastlyCardGfx ; gfx
	tx GastlyName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw GASTLY
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx SleepPoisonName ; name
	tx SleepPoisonDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SleepingPoisonEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLEEPING_GAS ; animatio

	; attack 1
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx SpookifyName ; name
	tx SpookifyDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SpookifyEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	db 0 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx RequiemName ; category
	db 95 ; Pokedex number
	db 16 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx GastlyDescription ; description
	db 16

HaunterCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx HaunterCardGfx ; gfx
	tx HaunterName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw HAUNTER
	db 60 ; hp
	db STAGE1 ; stage
	tx GastlyName ; pre-evo name

	; attack 1
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx DarkSlumberName ; name
	tx DarkSlumberDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw DarkSlumberEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animatio

	; attack 2
	energy DARKNESS, 2 ; energies
	tx PoltergeistName ; name
	tx PoltergeistDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw PoltergeistEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx GasName ; category
	db 95 ; Pokedex number
	db 37 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx HaunterDescription ; description
	db 16

GengarCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GengarCardGfx ; gfx
	tx GengarName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw GENGAR
	db 100 ; hp
	db STAGE2 ; stage
	tx HaunterName ; pre-evo name

	; attack 1
    energy 0 ; energies
    tx DeepSleepName ; name
    tx DeepSleepDescription ; description
	tx AbilityCondition ; description (cont)
    db 0 ; damage
    db POKEMON_POWER ; category
    dw DeepSleepEffectCommands ; effect commands
    db NONE ; flags 1
    db NONE ; flags 2
    db NONE ; flags 3
    db 0
    db ATK_ANIM_PKMN_POWER_1

	; attack 3
	energy DARKNESS, 2, COLORLESS, 1, ; energies
	tx PoltergeistName ; name
	tx PoltergeistDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw PoltergeistEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx ShadowName ; category
	db 95 ; Pokedex number
	db 65 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx GengarDescription ; description
	db 0

NihilegoCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx NihilegoCardGfx ; gfx
	tx NihilegoName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw NIHILEGO
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx VoidTentaclesName ; name
	tx VoidTentaclesDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw VoidTentaclesEffectCommands ; effect commands
	db INFLICT_POISON/INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_GAS ; animatio

	; attack 1
	energy DARKNESS, 1 ; energies
	tx LockUpName ; name
	tx CantRetreatDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw UnableRetreatEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NIGHTMARE ; animation

	db 1 ; retreat cost
	db WR_METAL ; weakness
	db WR_DARKNESS ; resistance
	tx ParasiteName ; category
	db 95 ; Pokedex number
	db 44 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx NihilegoDescription ; description
	db 0

WooperCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx WooperCardGfx ; gfx
	tx WooperName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw WOOPER
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx CallForFamilyName ; name
	tx DarknessCallForFamilyDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw DarknessCallforFriendEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy DARKNESS, 1 ; energies
	tx SpitPoisonName ; name
	tx InflictPoisonDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw SpitPoisonEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GOO ; animation

	db 2 ; retreat cost
	db WR_FIGHTING  ; weakness
	db NONE ; resistance
	tx MudFishName ; category
	db 95 ; Pokedex number
	db 15 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx WooperDescription ; description
	db 16

ClodsireCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ClodsireCardGfx ; gfx
	tx ClodsireName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw CLODSIRE
	db 90 ; hp
	db STAGE1 ; stage
	tx WooperName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx PoisonRingName ; name
	tx PoisonRingDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw PoisonRingEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_TOXIC ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 2 ; energies
	tx MuddyHammerName; name
	tx MuddyHammerDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MuddyHammerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx MudFishName ; category
	db 95 ; Pokedex number
	db 38 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx ClodsireDescription ; description
	db 0

; CorphishCard:
; 	db TYPE_PKMN_DARKNESS ; type
; 	gfx CorphishCardGfx ; gfx
; 	tx CorphishName ; name
; 	db DIAMOND ; rarity
; 	db LOST_ISLE | NONE ; sets
; 	dw CORPHISH
; 	db 50 ; hp
; 	db BASIC ; stage
; 	dw NONE ; pre-evo name

; 	; attack 1
; 	energy DARKNESS, 1 ; energies
; 	tx PoisonClawsName ; name
; 	tx MayInflictPoisonDescription ; description
; 	dw NONE ; description (cont)
; 	db 10 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw Poison50PercentEffectCommands ; effect commands
; 	db INFLICT_POISON ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_NEEDLES ; animation

; 	; attack 1
; 	energy COLORLESS, 1, DARKNESS, 1 ; energies
; 	tx TakeDownName ; name
; 	tx ThunderJoltDescription ; description
; 	dw NONE ; description (cont)
; 	db 30 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw PikachuThunderJoltEffectCommands ; effect commands
; 	db LOW_RECOIL ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_HIT_RECOIL ; animation

; 	db 1 ; retreat cost
; 	db WR_GRASS  ; weakness
; 	db NONE ; resistance
; 	tx RuffianName ; category
; 	db 95 ; Pokedex number
; 	db 21 ; level
; 	db 2, 11 ; length
; 	dw 22 * 10 ; weight
; 	tx CorphishDescription ; description
; 	db 16

; CrawdauntCard:
; 	db TYPE_PKMN_DARKNESS ; type
; 	gfx CrawdauntCardGfx ; gfx
; 	tx CrawdauntName ; name
; 	db STAR ; rarity
; 	db LOST_ISLE | NONE ; sets
; 	dw CRAWDAUNT
; 	db 80 ; hp
; 	db STAGE1 ; stage
; 	tx CorphishName ; pre-evo name

; 	; attack 1
; 	energy DARKNESS, 2, COLORLESS, 1 ; energies
; 	tx KnockOffName; name
; 	tx KnockOffDescription ; description
; 	dw NONE ; description (cont)
; 	db 20 ; damage
; 	db DAMAGE_PLUS ; category
; 	dw KnockOffEffectCommands ; effect commands
; 	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_BIG_HIT ; animation

; 	; attack 2
; 	energy DARKNESS, 2, COLORLESS, 2 ; energies
; 	tx CrabhammerName; name
; 	tx CrabhammerDescription ; description
; 	dw NONE ; description (cont)
; 	db 50 ; damage
; 	db DAMAGE_NORMAL ; category
; 	dw CrabhammerEffectCommands ; effect commands
; 	db INFLICT_CONFUSION ; flags 1
; 	db NONE ; flags 2
; 	db NONE ; flags 3
; 	db 0
; 	db ATK_ANIM_BIG_HIT ; animation

; 	db 2 ; retreat cost
; 	db WR_GRASS ; weakness
; 	db WR_METAL ; resistance
; 	tx RuffianName ; category
; 	db 95 ; Pokedex number
; 	db 47 ; level
; 	db 2, 11 ; length
; 	dw 22 * 10 ; weight
; 	tx CrawdauntDescription ; description
; 	db 0
SeedotCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx SeedotCardGfx ; gfx
	tx SeedotName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw SEEDOT
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
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

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx AcornName ; category
	db 85 ; Pokedex number
	db 9 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx SeedotDescription ; description
	db 16

NuzleafCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx NuzleafCardGfx ; gfx
	tx NuzleafName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw NUZLEAF
	db 70 ; hp
	db STAGE1 ; stage
	tx SeedotName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx TrickeryName ; name
	tx MagneticGearsDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw MagneticLinesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx WickedGustName ; name
	tx WickedGustDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw WickedGustEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db WR_PSYCHIC ; resistance
	tx WilyName ; category
	db 95 ; Pokedex number
	db 28 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx NuzleafDescription ; description
	db 16

ShiftryCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ShiftryCardGfx ; gfx
	tx ShiftryName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SHIFTRY
	db 100 ; hp
	db STAGE2 ; stage
	tx NuzleafName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx FanActionName ; name
	tx FanActionDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw FanActionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy DARKNESS, 1, COLORLESS, 2 ; energies
	tx TenguStrikeName; name
	tx TenguStrikeDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw TenguStrikeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_GRASS ; weakness
	db WR_PSYCHIC ; resistance
	tx WickedName ; category
	db 95 ; Pokedex number
	db 55 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx ShiftryDescription ; description
	db 0

DarkraiCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DarkraiCardGfx ; gfx
	tx DarkraiName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | NONE ; sets
	dw DARKRAI
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DarkVoidName ; name
	tx DarkVoidDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw DarkVoidEffectCommands ; effect commands
	db INFLICT_SLEEP_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	; attack 2
	energy DARKNESS, 3 ; energies
	tx NightSpearName ; name
	tx DarkChargeDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DarkChargeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx PitchBlackName ; category
	db 95 ; Pokedex number
	db 78 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx DarkaiDescription ; description
	db 0

NymbleCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx NymbleCardGfx ; gfx
	tx NymbleName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw NYMBLE
	db 40 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx GrasshopperName ; category
	db 130 ; Pokedex number
	db 9 ; level
	db 1, 8 ; length
	dw 62 * 10 ; weight
	tx NymbleDescription ; description
	db 17

LokixCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx LokixCardGfx ; gfx
	tx LokixName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw LOKIX
	db 70 ; hp
	db STAGE1 ; stage
	tx NymbleName ; pre-evo name

	; attack 2
	energy DARKNESS, 1 ; energies
	tx ChipOffName ; name
	tx ChipOffDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw ChipOffEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT; animation

	; attack 2
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx AxeKickName ; name
	tx AxeKickDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw AxeKickEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx GrasshopperName ; category
	db 131 ; Pokedex number
	db 41 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx LokixDescription ; description
	db 0

ZoruaCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ZoruaCardGfx ; gfx
	tx ZoruaName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw ZORUA
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
	energy DARKNESS, 1, COLORLESS, 1 ; energies
	tx DeepGrowlName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw Paralysis50PercentEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx IllusionName ; category
	db 130 ; Pokedex number
	db 22 ; level
	db 1, 8 ; length
	dw 62 * 10 ; weight
	tx ZoruaDescription ; description
	db 17

ZoroarkCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ZoroarkCardGfx ; gfx
	tx ZoroarkName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw ZOROARK
	db 80 ; hp
	db STAGE1 ; stage
	tx ZoruaName ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx FoulPlayName ; name
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

	; attack 2
	energy DARKNESS, 2 ; energies
	tx ImpersonateName ; name
	tx ImpersonateDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ImpersonateEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx IllusionName ; category
	db 131 ; Pokedex number
	db 57 ; level
	db 3, 3 ; length
	dw 71 * 10 ; weight
	tx ZoroarkDescription ; description
	db 0

YveltalCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx YveltalCardGfx ; gfx
	tx YveltalName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | NONE ; sets
	dw YVELTAL
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx DarkVoidName ; name
	tx DarkVoidDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw DarkVoidEffectCommands ; effect commands
	db INFLICT_SLEEP_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	; attack 2
	energy DARKNESS, 3 ; energies
	tx NightSpearName ; name
	tx DarkChargeDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw DarkChargeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx DestructionName ; category
	db 95 ; Pokedex number
	db 84 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx YveltalDescription ; description
	db 0
MoonStoneCard:
	db TYPE_TRAINER ; type
	gfx MoonStoneCardGfx ; gfx
	tx MoonStoneName ; name
	IF LC_CHALLENGE == 1 ; If LC is active, then change rarity.
	db DIAMOND ; rarity
	ELSE
	db CIRCLE ; rarity
	ENDC
	db EVOLUTION | NONE ; sets
	dw MOON_STONE
	dw ColorlessEvolutionPkmnSearchEffectCommands ; effect commands
	tx MoonStoneDescription ; description
	tx MoonStoneDescription2 ; description (cont)

SuperRodCard:
	db TYPE_TRAINER ; type
	gfx SuperRodCardGfx ; gfx
	tx SuperRodName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw SUPER_ROD
	dw SuperRodEffectCommands ; effect commands
	tx SuperRodDescription ; description
	tx SuperRodDescription2 ; description (cont)

RayquazaCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RayquazaCardGfx ; gfx
	tx RayquazaName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw RAYQUAZA
	db 80 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx DragonPulseName ; name
	tx DragonPulseDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw DragonPulseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx EmeraldBreakName ; name
	tx DoTheWaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw WigglytuffDoTheWaveEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx SkyHighName ; category
	db 195 ; Pokedex number
	db 95 ; level
	db 2, 7 ; length
	dw 33 * 10 ; weight
	tx RayquazaDescription ; description
	db 3
;Metal
OnixCard:
	db TYPE_PKMN_METAL ; type
	gfx OnixCardGfx ; gfx
	tx OnixName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ONIX
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx DigUnderName ; name
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

	; attack 1
	energy COLORLESS, 4 ; energies
	tx GuardPressName ; name
	tx HardenDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw OnixHardenEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 40
	db ATK_ANIM_HIT_RECOIL ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx RockSnakeName ; category
	db 144 ; Pokedex number
	db 28 ; level
	db 3, 3 ; length
	dw 254 * 10 ; weight
	tx OnixDescription ; description
	db 16

SteelixCard:
	db TYPE_PKMN_METAL ; type
	gfx SteelixCardGfx ; gfx
	tx SteelixName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw STEELIX
	db 110 ; hp
	db STAGE1 ; stage
	tx OnixName ; pre-evo name

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
	tx AdamantinePressName ; name
	tx AdamantinePressDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AdamantinePressEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 30
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy METAL, 2, COLORLESS, 2, ; energies
	tx IronTailName ; name
	tx IronTailDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw IronTailEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES; animation

	db 4 ; retreat cost
	db WR_WATER ; weakness
	db WR_LIGHTNING ; resistance
	tx IronSnakeName ; category
	db 145 ; Pokedex number
	db 63 ; level
	db 6, 3 ; length
	dw 265 * 10 ; weight
	tx SteelixDescription ; description
	db 0

KarrablastCard:
	db TYPE_PKMN_METAL ; type
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
	dw LugiaStepInEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy METAL, 1 ; energies
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
	tx KarrablastDescription ; description
	db 16

EscavalierCard:
	db TYPE_PKMN_METAL ; type
	gfx EscavalierCardGfx ; gfx
	tx EscavalierName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw ESCAVALIER
	db 80 ; hp
	db STAGE1 ; stage
	tx KarrablastName ; pre-evo name

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
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
	energy COLORLESS, 1, METAL, 2 ; energies
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
	tx EscavalierDescription ; description
	db 0

FerroseedCard:
	db TYPE_PKMN_METAL ; type
	gfx FerroseedCardGfx ; gfx
	tx FerroseedName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
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
	energy METAL, 1, COLORLESS, 1, ; energies
	tx PinMissileName ; name
	tx TripleAttackX20Description ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw PerrserkerFurySwipesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx ThornSeedName ; category
	db 36 ; Pokedex number
	db 23 ; level
	db 2, 0 ; length
	dw 2 * 10 ; weight
	tx FerroseedDescription ; description
	db 16

FerrothornCard:
	db TYPE_PKMN_METAL ; type
	gfx FerrothornCardGfx ; gfx
	tx FerrothornName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw FERROTHORN
	db 80 ; hp
	db STAGE1 ; stage
	tx FerroseedName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx SpikesName ; name
	tx SpikesDescription ; description
	tx AbilityCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw OmanyteClairvoyanceEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SOLAR_POWER ; animation

	; attack 2
	energy METAL, 2, COLORLESS, 1 ; energies
	tx GyroBallName ; name
	tx GaleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotGaleEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON | FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx ThornPodName ; category
	db 37 ; Pokedex number
	db 57 ; level
	db 3, 11 ; length
	dw 21 * 10 ; weight
	tx FerrothornDescription ; description
	db 0

MeowthCard:
	db TYPE_PKMN_METAL ; type
	gfx MeowthCardGfx ; gfx
	tx MeowthName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw MEOWTH
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
	energy METAL, 1, COLORLESS, 1 ; energies
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
	tx MeowthDescription ; description
	db 16

PerrserkerCard:
	db TYPE_PKMN_METAL ; type
	gfx PerrserkerCardGfx ; gfx
	tx PerrserkerName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw PERRSERKER
	db 70 ; hp
	db STAGE1 ; stage
	tx MeowthName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
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

	energy COLORLESS, 1, METAL, 2 ; energies
	tx TreasureRushName ; name
	tx TreasureRushNameDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw TreasureRushNameEffectCommands ; effect commands
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
	tx PerrserkerDescription ; description
	db 0

CufantCard:
	db TYPE_PKMN_METAL ; type
	gfx CufantCardGfx ; gfx
	tx CufantName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw CUFANT
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
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

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
	tx StompOffName ; name
	tx StompOffDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw StompOffEffectCommands ; effect commands
	db LOW_RECOIL ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT_RECOIL ; animation

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
	db TYPE_PKMN_METAL ; type
	gfx CopperajahCardGfx ; gfx
	tx CopperajahName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw COPPERAJAH
	db 100 ; hp
	db STAGE1 ; stage
	tx CufantName ; pre-evo name

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
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
	energy METAL, 2, COLORLESS, 2 ; energies
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

BeldumCard:
	db TYPE_PKMN_METAL ; type
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
	energy COLORLESS, 1, METAL, 1 ; energies
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
	db 16 ; level
	db 1, 4 ; length
	dw 9 * 10 ; weight
	tx BeldumDescription ; description
	db 16

MetangCard:
	db TYPE_PKMN_METAL ; type
	gfx MetangCardGfx ; gfx
	tx MetangName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw METANG
	db 80 ; hp
	db STAGE1 ; stage
	tx BeldumName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
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
	energy METAL, 1, COLORLESS, 2 ; energies
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
	db TYPE_PKMN_METAL ; type
	gfx MetagrossCardGfx ; gfx
	tx MetagrossName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw METAGROSS
	db 120 ; hp
	db STAGE2 ; stage
	tx MetangName ; pre-evo name

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
	tx MetalReversalName ; name
	tx MetalReversalDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw BossOrdersEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation
	
	; attack 2
	energy METAL, 1, COLORLESS, 2, ; energies
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

PawniardCard:
	db TYPE_PKMN_METAL ; type
	gfx PawniardCardGfx ; gfx
	tx PawniardName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw PAWNIARD
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SharpenName ; name
	tx SharpenDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SharpenEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 1 ; energies
	tx SlashName ; name
	dw NONE ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw NONE ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH_F ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 24 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx PawniardDescription ; description
	db 16

BisharpCard:
	db TYPE_PKMN_METAL ; type
	gfx BisharpCardGfx ; gfx
	tx BisharpName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw BISHARP
	db 80 ; hp
	db STAGE1 ; stage
	tx PawniardName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx MetalSoundName ; name
	tx MetalSoundDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw MetalSoundEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SONICBOOM ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 2 ; energies
	tx SuckerPunchName; name
	tx SuckerPunchDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw SuckerPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_DARKNESS ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 52 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx BisharpDescription ; description
	db 0

TinkatinkCard:
	db TYPE_PKMN_METAL ; type
	gfx TinkatinkCardGfx ; gfx
	tx TinkatinkName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw TINKATINK
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
	energy METAL, 1 ; energies
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
	db NONE ; resistance
	tx MetalSmithName ; category
	db 152 ; Pokedex number
	db 21 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx TinkatinkDescription ; description
	db 16

TinkatuffCard:
	db TYPE_PKMN_METAL ; type
	gfx TinkatuffCardGfx ; gfx
	tx TinkatuffName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw TINKATUFF
	db 80 ; hp
	db STAGE1 ; stage
	tx TinkatinkName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx SmackDownName ; name
	tx SmackDownDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw SmackDownEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_ROCK_THROW ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 2 ; energies
	tx PulverizingPressName ; name
	tx DontApplyWsRsDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw MagnetonSonicboomEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PSYCHIC_HIT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx MetalSmithName ; category
	db 153 ; Pokedex number
	db 37 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx TinkatuffDescription ; description
	db 16

TinkatonCard:
	db TYPE_PKMN_METAL ; type
	gfx TinkatonCardGfx ; gfx
	tx TinkatonName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw TINKATON
	db 100 ; hp
	db STAGE2 ; stage
	tx TinkatuffName ; pre-evo name

	; attack 1
	energy METAL, 2 ; energies
	tx KnockOffName; name
	tx KnockOffDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw KnockOffEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	; attack 2
	energy METAL, 3 ; energies
	tx MegatonHammerName ; name
	tx MegatonHammerDescription ; description
	dw NONE ; description (cont)
	db 60 ; damage
	db DAMAGE_PLUS ; category
	dw MegatonHammerEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx MetalSmithName ; category
	db 154 ; Pokedex number
	db 55 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx TinkatonDescription ; description
	db 0

ScizorCard:
	db TYPE_PKMN_METAL ; type
	gfx ScizorCardGfx ; gfx
	tx ScizorName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw SCIZOR
	db 80 ; hp
	db STAGE1 ; stage
	tx ScytherName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, METAL, 1 ; energies
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
	tx ScizorDescription ; description
	db 0

HonedgeCard:
	db TYPE_PKMN_METAL ; type
	gfx HonedgeCardGfx ; gfx
	tx HonedgeName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw HONEDGE
	db 60 ; hp
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
	energy METAL, 1 ; energies
	tx ShadowSneakName ; name
	tx ShadowSneakDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw ShadowSneakEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SwordName ; category
	db 152 ; Pokedex number
	db 21 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx HonedgeDescription ; description
	db 16

DoubladeCard:
	db TYPE_PKMN_METAL ; type
	gfx DoubladeCardGfx ; gfx
	tx DoubladeName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DOUBLADE
	db 80 ; hp
	db STAGE1 ; stage
	tx HonedgeName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx ShadowSneakName ; name
	tx ShadowSneakDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_PLUS ; category
	dw ShadowSneakEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	; attack 2
	energy COLORLESS, 2, METAL, 1 ; energies
	tx DualBladesName ; name
	tx TripleAttackX20Description ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw PerrserkerFurySwipesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx SwordName ; category
	db 153 ; Pokedex number
	db 43 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx DoubladeDescription ; description
	db 16

AegislashCard:
	db TYPE_PKMN_METAL ; type
	gfx AegislashCardGfx ; gfx
	tx AegislashBladeFormeName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw AEGISLASH
	db 100 ; hp
	db STAGE2 ; stage
	tx DoubladeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StanceChangeName ; name
	tx StanceChangeBladeDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw StanceChangeShieldEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 2 ; energies
	tx KingsBladeName ; name
	tx KingsBladeDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_PLUS ; category
	dw KingsBladeEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx SwordName ; category
	db 154 ; Pokedex number
	db 65 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx AegislashDescription ; description
	db 0

MeltanCard:
	db TYPE_PKMN_METAL ; type
	gfx MeltanCardGfx ; gfx
	tx MeltanName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MELTAN
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MendName ; name
	tx MendDescription ; description
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
	energy METAL, 1 ; energies
	tx ThundershockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Paralysis50PercentEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx HexNutName ; category
	db 144 ; Pokedex number
	db 11 ; level
	db 3, 3 ; length
	dw 254 * 10 ; weight
	tx MeltanDescription ; description
	db 16

MelmetalCard:
	db TYPE_PKMN_METAL ; type
	gfx MelmetalCardGfx ; gfx
	tx MelmetalName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw MELMETAL
	db 100 ; hp
	db STAGE1 ; stage
	tx MeltanName ; pre-evo name

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
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
	energy METAL, 2, COLORLESS, 2 ; energies
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

	db 4 ; retreat cost
	db WR_FIRE ; weakness
	db WR_GRASS ; resistance
	tx HexNutName ; category
	db 145 ; Pokedex number
	db 88 ; level
	db 6, 3 ; length
	dw 265 * 10 ; weight
	tx MelmetalDescription ; description
	db 0

AronCard:
	db TYPE_PKMN_METAL ; type
	gfx AronCardGfx ; gfx
	tx AronName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw ARON
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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

	; attack 2
	energy METAL, 1 ; energies
	tx SteelTackleName ; name
	tx SteelTackleDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SteelTackleEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ArmorName ; category
	db 152 ; Pokedex number
	db 15 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx AronDescription ; description
	db 16

LaironCard:
	db TYPE_PKMN_METAL ; type
	gfx LaironCardGfx ; gfx
	tx LaironName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw LAIRON
	db 80 ; hp
	db STAGE1 ; stage
	tx AronName ; pre-evo name

	; attack 1
	energy COLORLESS, 1, METAL, 1 ; energies
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
	energy METAL, 2, COLORLESS, 1 ; energies
	tx MetallicStrikesName ; name
	tx MetallicStrikesDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_X ; category
	dw MetallicStrikesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_DARKNESS ; resistance
	tx ArmorName ; category
	db 153 ; Pokedex number
	db 37 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx LaironDescription ; description
	db 16

AggronCard:
	db TYPE_PKMN_METAL ; type
	gfx AggronCardGfx ; gfx
	tx AggronName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw AGGRON
	db 110 ; hp
	db STAGE2 ; stage
	tx LaironName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx IronWillName ; name
	tx IronWillDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DefenderSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy METAL, 2, COLORLESS, 2 ; energies
	tx HeavySlamName ; name
	tx HeavySlamDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw HeavySlamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_DARKNESS ; resistance
	tx ArmorName ; category
	db 154 ; Pokedex number
	db 64 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx AggronDescription ; description
	db 0

BronzorCard:
	db TYPE_PKMN_METAL ; type
	gfx BronzorCardGfx ; gfx
	tx BronzorName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw BRONZOR
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MirrorDrawName ; name
	tx MirrorDrawDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw MirrorDrawEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy METAL, 1 ; energies
	tx ConfuseRayName ; name
	tx MayInflictConfusionDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Confusion50PercentEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_CONFUSE_RAY ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx BronzeName ; category
	db 144 ; Pokedex number
	db 17 ; level
	db 3, 3 ; length
	dw 254 * 10 ; weight
	tx BronzorDescription ; description
	db 16

BronzongCard:
	db TYPE_PKMN_METAL ; type
	gfx BronzongCardGfx ; gfx
	tx BronzongName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw BRONZONG
	db 90 ; hp
	db STAGE1 ; stage
	tx BronzorName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MiracleOracleName ; name
	tx MiracleOracleDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MiracleOracleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy METAL, 2, COLORLESS, 1 ; energies
	tx GyroBallName ; name
	tx GaleDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw PidgeotGaleEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON | FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 3 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIRE ; resistance
	tx BronzeName ; category
	db 145 ; Pokedex number
	db 42 ; level
	db 6, 3 ; length
	dw 265 * 10 ; weight
	tx BronzongDescription ; description
	db 0

SandshrewCard:
	db TYPE_PKMN_METAL ; type
	gfx SandshrewCardGfx ; gfx
	tx SandshrewName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw SANDSHREW
	db 60 ; hp
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
	energy METAL, 1 ; energies
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

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx MouseName ; category
	db 126 ; Pokedex number
	db 13 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx MeowthDescription ; description
	db 16

SandslashCard:
	db TYPE_PKMN_METAL ; type
	gfx SandslashCardGfx ; gfx
	tx SandslashName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw SANDSLASH
	db 80 ; hp
	db STAGE1 ; stage
	tx SandshrewName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx IronBarbsName ; name
	tx IronBarbsDescription ; description
	tx StrikesBackDescriptionCont ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw MachampStrikesBackEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy METAL, 1, COLORLESS, 2 ; energies
	tx SmashTurnName ; name
	tx TeleportDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw ExeggutorTeleportEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx MouseName ; category
	db 127 ; Pokedex number
	db 48 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx SandslashDescription ; description
	db 0

GimmighoulCard:
	db TYPE_PKMN_METAL ; type
	gfx GimmighoulCardGfx ; gfx
	tx GimmighoulName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw GIMMIGHOUL
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
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
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy METAL, 1 ; energies
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

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx CoinName ; category
	db 126 ; Pokedex number
	db 20 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx GimmighoulDescription ; description
	db 16

GholdengoCard:
	db TYPE_PKMN_METAL ; type
	gfx GholdengoCardGfx ; gfx
	tx GholdengoName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw GHOLDENGO
	db 80 ; hp
	db STAGE1 ; stage
	tx GimmighoulName ; pre-evo name

	; attack 1
	energy METAL, 1 ; energies
	tx DataRetrievalName ; name
	tx EeeekDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw ShuffleHandThenDraw4EffectCommands ; effect commands
	db DRAW_CARD ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NONE ; animation

	; attack 2
	energy COLORLESS, 1, METAL, 2 ; energies
	tx AllYouCanGrabName ; name
	tx AllYouCanGrabDescription ; description
	dw NONE ; description (cont)
	db 150 ; damage
	db DAMAGE_MINUS ; category
	dw AllYouCanGrabEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_PSYCHIC ; weakness
	db WR_FIGHTING ; resistance
	tx CoinName ; category
	db 127 ; Pokedex number
	db 50 ; level
	db 3, 3 ; length
	dw 65 * 10 ; weight
	tx GholdengoDescription ; description
	db 0

SkarmoryCard:
	db TYPE_PKMN_METAL ; type
	gfx SkarmoryCardGfx ; gfx
	tx SkarmoryName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw SKARMORY
	db 70 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1, ; energies
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
	energy METAL, 1, COLORLESS, 2 ; energies
	tx SteelWingName ; name
	tx SteelWingDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw MinimizeEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 20
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx ArmorName ; category
	db 126 ; Pokedex number
	db 38 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx SkarmoryDescription ; description
	db 0

KlinkCard:
	db TYPE_PKMN_METAL ; type
	gfx KlinkCardGfx ; gfx
	tx KlinkName ; name
	db CIRCLE ; rarity
	db LOST_ISLE | NONE ; sets
	dw KLINK
	db 50 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx MetalSoundName ; name
	tx MetalSoundDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db DAMAGE_NORMAL ; category
	dw MetalSoundEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SONICBOOM ; animation

	; attack 2
	energy METAL, 1 ; energies
	tx ThundershockName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw Paralysis50PercentEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_THUNDERSHOCK ; animation

	db 1 ; retreat cost
	db WR_FIRE ; weakness
	db NONE ; resistance
	tx GearName ; category
	db 152 ; Pokedex number
	db 17 ; level
	db 2, 11 ; length
	dw 43 * 10 ; weight
	tx KlinkDescription ; description
	db 16

KlangCard:
	db TYPE_PKMN_METAL ; type
	gfx KlangCardGfx ; gfx
	tx KlangName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw KLANG
	db 80 ; hp
	db STAGE1 ; stage
	tx KlinkName ; pre-evo name

	; attack 1
	energy METAL, 1, COLORLESS, 1 ; energies
	tx MagneticGearsName ; name
	tx MagneticGearsDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw MagneticLinesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MAGNETIC_STORM ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 1 ; energies
	tx MetalReversalName ; name
	tx MetalReversalDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw BossOrdersEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx GearName ; category
	db 153 ; Pokedex number
	db 42 ; level
	db 4, 3 ; length
	dw 125 * 10 ; weight
	tx KlangDescription ; description
	db 16

KlinklangCard:
	db TYPE_PKMN_METAL ; type
	gfx KlinklangCardGfx ; gfx
	tx KlinklangName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw KLINKLANG
	db 100 ; hp
	db STAGE2 ; stage
	tx KlangName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx ShiftGearName ; name
	tx ShiftGearDescription ; description
	tx AbilityCondition2 ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw ShiftGearEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_PKMN_POWER_1 ; animation

	; attack 2
	energy METAL, 1, COLORLESS, 1 ; energies
	tx GearGrindName ; name
	tx DoubleAttackX10Description ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_X ; category
	dw BeedrillTwineedleEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

	db 3 ; retreat cost
	db WR_FIRE ; weakness
	db WR_DARKNESS ; resistance
	tx GearName ; category
	db 154 ; Pokedex number
	db 73 ; level
	db 4, 11 ; length
	dw 106 * 10 ; weight
	tx KlinklangDescription ; description
	db 0

JirachiCard:
	db TYPE_PKMN_METAL ; type
	gfx JirachiCardGfx ; gfx
	tx JirachiName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | NONE ; sets
	dw JIRACHI
	db 50 ; hp
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
	energy METAL, 1, COLORLESS, 1 ; energies
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
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx WishName ; category
	db 126 ; Pokedex number
	db 53 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx JirachiDescription ; description
	db 0

RegisteelCard:
	db TYPE_PKMN_METAL ; type
	gfx RegisteelCardGfx ; gfx
	tx RegisteelName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw REGISTEEL
	db 90 ; hp
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
	energy METAL, 1, COLORLESS, 1 ; energies
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

	db 3 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
	tx ArmorName ; category
	db 126 ; Pokedex number
	db 80 ; level
	db 2, 0 ; length
	dw 26 * 10 ; weight
	tx RegisteelDescription ; description
	db 0

;--Colorless--
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
	dw WhirlwindEffectCommands ; effect commands
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
	db ATK_ANIM_GLOW_ATTACK ; animation

	; attack 1
	energy COLORLESS, 3 ; energies
	tx WhirlwindName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw WhirlwindEffectCommands ; effect commands
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
	db COLOSSEUM | NONE ; sets
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
	dw PerrserkerFurySwipesEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_NEEDLES ; animation

	db 0 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_PSYCHIC ; resistance
	tx RacoonName ; category
	db 177 ; Pokedex number
	db 12 ; level
	db 1, 0 ; length
	dw 8 * 10 ; weight
	tx RattataDescription ; description
	db 16

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
	db 16

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
	tx AbilityCondition ; description (cont)
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
	db MYSTERY | NONE ; sets
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
	tx TogepiDescription ; description
	db 16

TogeticCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TogeticCardGfx ; gfx
	tx TogeticName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw TOGETIC
	db 70 ; hp
	db STAGE1 ; stage
	tx TogepiName ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx EnergyPresentName ; name
	tx EnergyPresentDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw EnergyPresentEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx FairyWindName ; name
	tx GrowlDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw GrowlEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 1 ; retreat cost
	db WR_DARKNESS ; weakness
	db NONE ; resistance
	tx HappinessName ; category
	db 182 ; Pokedex number
	db 34 ; level
	db 4, 3 ; length
	dw 88 * 10 ; weight
	tx TogeticDescription ; description
	db 17

TogekissCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx TogekissCardGfx ; gfx
	tx TogekissName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw TOGEKISS
	db 100 ; hp
	db STAGE2 ; stage
	tx TogeticName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx EvolutionaryLightName ; name
	tx EvolutionaryLightDescription ; description
	tx AbilityCondition ; description (cont)
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
	tx TogekissDescription ; description
	db 0

CyclizarCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx CyclizarCardGfx ; gfx
	tx ComfeyName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
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
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 1 ; retreat cost
	db WR_WATER ; weakness
	db WR_FIRE ; resistance
	tx MountName ; category
	db 205 ; Pokedex number
	db 32 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx CyclizarDescription ; description
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
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
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
	tx StuffulDescription ; description
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
	db EVOLUTION | NONE ; sets
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

RuffletCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RuffletCardGfx ; gfx
	tx RuffletName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
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
	dw WhirlwindEffectCommands ; effect commands
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
	db 16

BraviaryCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx BraviaryCardGfx ; gfx
	tx BraviaryName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw BRAVIARY
	db 70 ; hp
	db STAGE1 ; stage
	tx RuffletName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx RetreatAidName ; name
	tx RetreatAidDescription ; description
	tx AbilityCondition2 ; description (cont)
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
	dw DRAMPA
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
	dw Paralysis50PercentEffectCommands ; effect commands
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

ChatotCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ChatotCardGfx ; gfx
	tx ChatotName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
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
	dw MimicEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
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
	db LABORATORY | NONE ; sets
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
	db 16 ; level
	db 1, 0 ; length
	dw 9 * 10 ; weight
	tx DittoDescription ; description
	db 0

EeveeCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx EeveeCardGfx ; gfx
	tx EeveeName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
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

SylveonCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SylveonCardGfx ; gfx
	tx SylveonName ; name
	db STAR ; rarity
	db EVOLUTION | NONE ; sets
	dw SYLVEON
	db 70 ; hp
	db STAGE1 ; stage
	tx EeveeName ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx MagicalRibbonName ; name
	tx MagicalRibbonDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw DevoFlashEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 2 ; energies
	tx DisarmingVoiceName; name
	tx SuckerPunchDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw SuckerPunchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_DARKNESS ; resistance
	tx InterwiningName ; category
	db 95 ; Pokedex number
	db 47 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx SylveonDescription ; description
	db 0

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
	db DRAW_CARD ; flags 1
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
	dw LuckyFindEffectCommands ; effect commands
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
	db 28 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx Porygon2Description ; description
	db 16

PorygonZCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx PorygonZCardGfx ; gfx
	tx PorygonZName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw PORYGONZ
	db 100 ; hp
	db STAGE2 ; stage
	tx Porygon2Name ; pre-evo name

	; attack 1
	energy COLORLESS, 2 ; energies
	tx DowngradingBeamName ; name
	tx DevolutionBeamDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw MewDevolutionBeamEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BEAM ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
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
	db 66 ; level
	db 2, 7 ; length
	dw 80 * 10 ; weight
	tx PorygonZDescription ; description
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
	db ATK_ANIM_DRAIN ; animation

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
	tx AbilityCondition2 ; description (cont)
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
	tx DoubleEdgeDescription ; description
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
	tx LugiaDescription ; description
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
	dw LugiaHealingWindEffectCommands ; effect commands
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
	dw WhirlwindEffectCommands ; effect commands
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
	tx LugiaLv41Description ; description
	db 0

RegidragoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RegidragoCardGfx ; gfx
	tx RegidragoName ; name
	db STAR ; rarity
	db LOST_ISLE | PRO ; sets
	dw REGIDRAGO
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

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
	energy COLORLESS, 4, ; energies
	tx AeroblastName ; name
	tx WhirlwindDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw WhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 3 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx DragonName ; category
	db 210 ; Pokedex number
	db 80 ; level
	db 7, 3 ; length
	dw 463 * 10 ; weight
	tx RegidragoDescription ; description
	db 0

RegigigasCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx RegigigasCardGfx ; gfx
	tx RegigigasName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw REGIGIGAS
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
	dw LugiaHealingWindEffectCommands ; effect commands
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
	dw WhirlwindEffectCommands ; effect commands
	db NONE ; flags 1
	db SWITCH_OPPONENT_POKEMON ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_WHIRLWIND ; animation

	db 5 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx ColosalName ; category
	db 210 ; Pokedex number
	db 90 ; level
	db 7, 3 ; length
	dw 463 * 10 ; weight
	tx RegigigasDescription ; description
	db 0
DunsparceCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx DunsparceCardGfx ; gfx
	tx DunsparceName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DUNSPARCE
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
	energy COLORLESS, 2 ; energies
	tx GlareName ; name
	tx MayInflictParalysisDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw Paralysis50PercentEffectCommands ; effect commands
	db INFLICT_PARALYSIS ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation


	db 1 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SnakeName ; category
	db 147 ; Pokedex number
	db 10 ; level
	db 5, 11 ; length
	dw 7 * 10 ; weight
	tx DunsparceDescription ; description
	db 18

MunchlaxCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx MunchlaxCardGfx ; gfx
	tx MunchlaxName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw MUNCHLAX
	db 60 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx StrangeEvolutionName ; name
	tx StrangeEvolutionSnorlaxDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db COSTLESS ; category
	dw StrangeEvolutionMunchlaxEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy COLORLESS, 1 ; energies
	tx SnackSearchName ; name
	tx SnackSearchDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw SnackSearchEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_GLOW_ATTACK ; animation

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx BigEaterName ; category
	db 192 ; Pokedex number
	db 15 ; level
	db 4, 7 ; length
	dw 86 * 10 ; weight
	tx MunchlaxDescription ; description
	db 16

SnorlaxCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx SnorlaxCardGfx ; gfx
	tx SnorlaxName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw SNORLAX
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy 0 ; energies
	tx BigAppetiteName ; name
	tx BigAppetiteDescription ; description
	tx AbilityCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw BigAppetiteEffectCommands ; effect commands
	db INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SELF_HYPNOSIS ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx BlockinName ; name
	tx BlockinDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_NORMAL ; category
	dw BlockinEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_BIG_HIT ; animation

	db 4 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SleepingName ; category
	db 193 ; Pokedex number
	db 71 ; level
	db 5, 11 ; length
	dw 188 * 10 ; weight
	tx SnorlaxDescription ; description
	db 1

ArceusCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx ArceusCardGfx ; gfx
	tx ArceusName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw ARCEUS
	db 90 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx DragonPulseName ; name
	tx DragonPulseDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw DragonPulseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx EmeraldBreakName ; name
	tx DoTheWaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw WigglytuffDoTheWaveEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 2 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx AlphaName ; category
	db 195 ; Pokedex number
	db 99 ; level
	db 2, 7 ; length
	dw 33 * 10 ; weight
	tx ArceusDescription ; description
	db 3

MissingNoCard:
	db TYPE_PKMN_COLORLESS ; type
	gfx MissingNoCardGfx ; gfx
	tx MissingNoName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw MISSINGNO
	db 30 ; hp
	db BASIC ; stage
	dw NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx DragonPulseName ; name
	tx DragonPulseDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw DragonPulseEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_QUICK_ATTACK ; animation

	; attack 2
	energy COLORLESS, 4 ; energies
	tx EmeraldBreakName ; name
	tx DoTheWaveDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw WigglytuffDoTheWaveEffectCommands ; effect commands
	db NONE ; flags 1
	db ATTACHED_ENERGY_BOOST_F ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db NONE ; weakness
	db NONE ; resistance
	tx NoName ; category
	db 195 ; Pokedex number
	db 00 ; level
	db 2, 7 ; length
	dw 33 * 10 ; weight
	tx MissingNoDescription ; description
	db 3	
;--Trainers--
ProfessorOakCard:
	db TYPE_SUPPORTER ; type
	gfx ProfessorOakCardGfx ; gfx
	tx ProfessorOakName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw PROFESSOR_OAK
	dw ProfessorOakEffectCommands ; effect commands
	tx ProfessorOakDescription ; description
	tx ProfessorOakDescription2 ; description (cont)

ImposterProfessorOakCard:
	db TYPE_SUPPORTER ; type
	gfx ImposterProfessorOakCardGfx ; gfx
	tx ImposterProfessorOakName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw IMPOSTER_PROFESSOR_OAK
	dw ImposterProfessorOakEffectCommands ; effect commands
	tx ImposterProfessorOakDescription ; description
	tx ImposterProfessorOakDescription2 ; description (cont)

BillCard:
	db TYPE_SUPPORTER ; type
	gfx BillCardGfx ; gfx
	tx BillName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw BILL
	dw BillEffectCommands ; effect commands
	tx BillDescription ; description
	tx BillDescription2 ; description (cont)

MrFujiCard:
	db TYPE_SUPPORTER ; type
	gfx MrFujiCardGfx ; gfx
	tx MrFujiName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw MR_FUJI
	dw MrFujiEffectCommands ; effect commands
	tx MrFujiDescription ; description
	tx MrFujiDescription2 ; description (cont)

LassCard:
	db TYPE_SUPPORTER ; type
	gfx LassCardGfx ; gfx
	tx LassName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw MARNIE
	dw LassEffectCommands ; effect commands
	tx LassDescription ; description
	tx LassDescription2 ; description (cont)

ImakuniCard:
	db TYPE_SUPPORTER ; type
	gfx ImakuniCardGfx ; gfx
	tx ImakuniName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw IMAKUNI_CARD
	dw ImakuniEffectCommands ; effect commands
	tx ImakuniDescription ; description
	tx ImakuniDescription2 ; description (cont)

PokemonTraderCard:
	db TYPE_TRAINER ; type
	gfx PokemonTraderCardGfx ; gfx
	tx PokemonTraderName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw POKEMON_COMMUNICATION
	dw PokemonTraderEffectCommands ; effect commands
	tx PokemonTraderDescription ; description
	tx PokemonTraderDescription2 ; description (cont)

RareCandyCard:
	db TYPE_TRAINER ; type
	gfx RareCandyCardGfx ; gfx
	tx RareCandyName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw RARE_CANDY
	dw RareCandyEffectCommands ; effect commands
	tx RareCandyDescription ; description
	tx RareCandyDescription2 ; description (cont)

SubstituteDollCard:
	db TYPE_TRAINER ; type
	gfx SubstituteDollCardGfx ; gfx
	tx SubstituteDollName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw SUBSTITUTE_DOLL
	dw ClefairyDollEffectCommands ; effect commands
	tx ClefairyDollDescription ; description
	tx ClefairyDollDescriptionCont ; description (cont)

MysteriousFossilCard:
	db TYPE_TRAINER ; type
	gfx MysteriousFossilCardGfx ; gfx
	tx MysteriousFossilName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw MYSTERIOUS_FOSSIL
	dw MysteriousFossilEffectCommands ; effect commands
	tx ClefairyDollDescription ; description
	tx MysteriousFossillDescriptionCont ; description (cont)

EnergyRetrievalCard:
	db TYPE_TRAINER ; type
	gfx EnergyRetrievalCardGfx ; gfx
	tx EnergyRetrievalName ; name
	IF LC_CHALLENGE == 1 ; If LC is active, then change rarity.
	db CIRCLE ; rarity
	ELSE
	db DIAMOND ; rarity
	ENDC
	db EVOLUTION | NONE ; sets
	dw ENERGY_RETRIEVAL
	dw EnergyRetrievalEffectCommands ; effect commands
	tx EnergyRetrievalDescription ; description
	tx EnergyRetrievalDescription2 ; description (cont)

SuperEnergyRetrievalCard:
	db TYPE_TRAINER ; type
	gfx SuperEnergyRetrievalCardGfx ; gfx
	tx SuperEnergyRetrievalName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | PRO ; sets
	dw SUPER_ENERGY_RETRIEVAL
	dw SuperEnergyRetrievalEffectCommands ; effect commands
	tx SuperEnergyRetrievalDescription ; description
	tx SuperEnergyRetrievalDescription2 ; description (cont)

EnergySearchCard:
	db TYPE_TRAINER ; type
	gfx EnergySearchCardGfx ; gfx
	tx EnergySearchName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw ENERGY_SEARCH
	dw EnergySearchEffectCommands ; effect commands
	tx EnergySearchDescription ; description
	tx EnergySearchDescription2 ; description (cont)

EnergyRemovalCard:
	db TYPE_TRAINER ; type
	gfx EnergyRemovalCardGfx ; gfx
	tx EnergyRemovalName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw ENERGY_REMOVAL
	dw EnergyRemovalEffectCommands ; effect commands
	tx EnergyRemovalDescription ; description
	tx EnergyRemovalDescription2 ; description (cont)

QuickBallCard:
	db TYPE_TRAINER ; type
	gfx QuickBallCardGfx ; gfx
	tx QuickBallName ; name
	db DIAMOND ; rarity
	db MYSTERY | PRO ; sets
	dw QUICK_BALL
	dw QuickBallEffectCommands ; effect commands
	tx QuickBallDescription ; description
	tx QuickBallDescription2 ; description (cont)

SwitchCard:
	db TYPE_TRAINER ; type
	gfx SwitchCardGfx ; gfx
	tx SwitchName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw SWITCH
	dw SwitchEffectCommands ; effect commands
	tx SwitchDescription ; description
	tx SwitchDescription2 ; description (cont)

PokemonCenterCard:
	db TYPE_SUPPORTER ; type
	gfx PokemonCenterCardGfx ; gfx
	tx PokemonCenterName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw POKEMON_CENTER
	dw PokemonCenterEffectCommands ; effect commands
	tx PokemonCenterDescription ; description
	tx PokemonCenterDescription2 ; description (cont)

PokeBallCard:
	db TYPE_TRAINER ; type
	gfx PokeBallCardGfx ; gfx
	tx PokeBallName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw POKE_BALL
	dw PokeBallEffectCommands ; effect commands
	tx PokeBallDescription ; description
	tx PokeBallDescription2 ; description (cont)

ScoopUpCard:
	db TYPE_TRAINER ; type
	gfx ScoopUpCardGfx ; gfx
	tx ScoopUpName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw SCOOP_UP
	dw ScoopUpEffectCommands ; effect commands
	tx ScoopUpDescription ; description
	tx ScoopUpDescription2 ; description (cont)

ComputerSearchCard:
	db TYPE_TRAINER ; type
	gfx ComputerSearchCardGfx ; gfx
	tx ComputerSearchName ; name
	db PROMOSTAR ; rarity
	db PROMOTIONAL | NONE ; sets
	dw COMPUTER_SEARCH
	dw ComputerSearchEffectCommands ; effect commands
	tx ComputerSearchDescription ; description
	tx ComputerSearchDescription2 ; description (cont)

PokedexCard:
	db TYPE_TRAINER ; type
	gfx PokedexCardGfx ; gfx
	tx PokedexName ; name
	db CIRCLE ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEDEX
	dw PokedexEffectCommands ; effect commands
	tx PokedexDescription ; description
	tx PokedexDescription2 ; description (cont)

PlusPowerCard:
	db TYPE_TRAINER ; type
	gfx PlusPowerCardGfx ; gfx
	tx PlusPowerName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw PLUSPOWER
	dw PlusPowerEffectCommands ; effect commands
	tx PlusPowerDescription ; description
	tx PlusPowerDescription2 ; description (cont)

DefenderCard:
	db TYPE_TRAINER ; type
	gfx DefenderCardGfx ; gfx
	tx DefenderName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw DEFENDER
	dw DefenderEffectCommands ; effect commands
	tx DefenderDescription ; description
	tx DefenderDescription2 ; description (cont)

ItemFinderCard:
	db TYPE_TRAINER ; type
	gfx ItemFinderCardGfx ; gfx
	tx ItemFinderName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw ITEM_FINDER
	dw ItemFinderEffectCommands ; effect commands
	tx ItemFinderDescription ; description
	tx ItemFinderDescription2 ; description (cont)

BossOrdersCard:
	db TYPE_SUPPORTER ; type
	gfx BossOrdersCardGfx ; gfx
	tx BossOrdersName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw BOSS_ORDERS
	dw BossOrdersEffectCommands ; effect commands
	tx BossOrdersDescription ; description
	tx BossOrdersDescription2 ; description (cont)

DevolutionSprayCard:
	db TYPE_TRAINER ; type
	gfx DevolutionSprayCardGfx ; gfx
	tx DevolutionSprayName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw DEVOLUTION_SPRAY
	dw DevolutionSprayEffectCommands ; effect commands
	tx DevolutionSprayDescription ; description
	tx DevolutionSprayDescription2 ; description (cont)

PotionCard:
	db TYPE_TRAINER ; type
	gfx PotionCardGfx ; gfx
	tx PotionName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw POTION
	dw PotionEffectCommands ; effect commands
	tx PotionDescription ; description
	tx PotionDescription2 ; description (cont)

SuperPotionCard:
	db TYPE_TRAINER ; type
	gfx SuperPotionCardGfx ; gfx
	tx SuperPotionName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw SUPER_POTION
	dw SuperPotionEffectCommands ; effect commands
	tx SuperPotionDescription ; description
	tx SuperPotionDescription2 ; description (cont)

FullHealCard:
	db TYPE_TRAINER ; type
	gfx FullHealCardGfx ; gfx
	tx FullHealName ; name
	IF LC_CHALLENGE == 1 ; If LC is active, then change rarity.
	db CIRCLE ; rarity
	ELSE
	db DIAMOND ; rarity
	ENDC
	db COLOSSEUM | NONE ; sets
	dw FULL_HEAL
	dw FullHealEffectCommands ; effect commands
	tx FullHealDescription ; description
	tx FullHealDescription2 ; description (cont)

ReviveCard:
	db TYPE_TRAINER ; type
	gfx ReviveCardGfx ; gfx
	tx ReviveName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw REVIVE
	dw ReviveEffectCommands ; effect commands
	tx ReviveDescription ; description
	tx ReviveDescription2 ; description (cont)

HeavyBallCard:
	db TYPE_TRAINER ; type
	gfx HeavyBallCardGfx ; gfx
	tx HeavyBallName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw HEAVY_BALL
	dw HeavyBallEffectCommands ; effect commands
	tx HeavyBallDescription ; description
	tx HeavyBallDescription2 ; description (cont)

PokemonFluteCard:
	db TYPE_TRAINER ; type
	gfx PokemonFluteCardGfx ; gfx
	tx PokemonFluteName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw POKEMON_FLUTE
	dw PokemonFluteEffectCommands ; effect commands
	tx PokemonFluteDescription ; description
	tx PokemonFluteDescription2 ; description (cont)

CopycatCard:
	db TYPE_SUPPORTER ; type
	gfx CopycatCardGfx ; gfx
	tx CopycatName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw COPYCAT
	dw GamblerEffectCommands ; effect commands
	tx CopycatDescription ; description
	tx CopycatDescription2 ; description (cont)

RecycleCard:
	db TYPE_TRAINER ; type
	gfx RecycleCardGfx ; gfx
	tx RecycleName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	dw RECYCLE
	dw RecycleEffectCommands ; effect commands
	tx RecycleDescription ; description
	tx RecycleDescription2 ; description (cont)

GreatBallCard:
	db TYPE_TRAINER ; type
	gfx GreatBallCardGfx ; gfx
	tx GreatBallName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw GREAT_BALL
	dw GreatBallEffectCommands ; effect commands
	tx GreatBallDescription ; description
	dw NONE ; description (cont)

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

MetalEnergyCard:
	db TYPE_ENERGY_METAL ; type
	gfx MetalEnergyCardGfx ; gfx
	tx MetalEnergyName ; name
	db CIRCLE ; rarity
	db ENERGY | NONE ; sets
	dw METAL_ENERGY
	dw MetalEnergyEffectCommands ; effect commands
	tx MetalEnergyDescription ; description
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
RecycleEnergyCard:
	db TYPE_ENERGY_DOUBLE_COLORLESS ; type
	gfx RecycleEnergyCardGfx ; gfx
	tx RecycleEnergyName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw RECYCLE_ENERGY
	dw DoubleColorlessEnergyEffectCommands ; effect commands
	tx RecycleEnergyDescription ; description
	dw NONE ; description (cont)
MemoryEnergyCard:
	db TYPE_ENERGY_DOUBLE_COLORLESS ; type
	gfx MemoryEnergyCardGfx ; gfx
	tx MemoryEnergyName ; name
	db DIAMOND ; rarity
	db EVOLUTION | NONE ; sets
	dw MEMORY_ENERGY
	dw DoubleColorlessEnergyEffectCommands ; effect commands
	tx MemoryEnergyDescription ; description
	dw NONE ; description (cont)

PremierBallCard:
	db TYPE_TRAINER ; type
	gfx PremierBallCardGfx ; gfx
	tx PremierBallName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw PREMIER_BALL
	dw PremierBallEffectCommands ; effect commands
	tx PremierBallDescription ; description
	dw NONE ; description (cont)

RoseannesResearchCard:
	db TYPE_SUPPORTER ; type
	gfx RoseannesResearchCardGfx ; gfx
	tx RoseannesResearchName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw ROSEANNES_RESEARCH
	dw RoseannesResearchEffectCommands ; effect commands
	tx RoseannesResearchDescription ; description
	tx RoseannesResearchDescription2 ; description (cont)

PokemonCollectorCard:
	db TYPE_SUPPORTER ; type
	gfx PokemonCollectorCardGfx ; gfx
	tx PokemonCollectorName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw POKEMON_COLLECTOR
	dw PokemonCollectorEffectCommands ; effect commands
	tx PokemonCollectorDescription ; description
	tx PokemonCollectorDescription2 ; description (cont)

AcroBikeCard:
	db TYPE_TRAINER ; type
	gfx AcroBikeCardGfx ; gfx
	tx AcroBikeName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw ACRO_BIKE
	dw AcroBikeEffectCommands ; effect commands
	tx AcroBikeDescription ; description
	tx AcroBikeDescription2 ; description (cont)

ProfessorElmLectureCard:
	db TYPE_SUPPORTER ; type
	gfx ProfessorElmLectureCardGfx ; gfx
	tx ProfessorElmLectureName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw PROFESSOR_ELM
	dw ProfessorElmLectureEffectCommands ; effect commands
	tx ProfessorElmLectureDescription ; description
	tx ProfessorElmLectureDescription2 ; description (cont)

FossilResearcherCard:
	db TYPE_SUPPORTER ; type
	gfx FossilResearcherCardGfx ; gfx
	tx FossilResearcherName ; name
	db DIAMOND ; rarity
	db LOST_ISLE | NONE ; sets
	dw FOSSIL_RESEARCHER
	dw FossilResearcherEffectCommands ; effect commands
	tx FossilResearcherDescription ; description
	tx FossilResearcherDescription2 ; description (cont)

ProfessorBirchCard:
	db TYPE_SUPPORTER ; type
	gfx ProfessorBirchCardGfx ; gfx
	tx ProfessorBirchName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw PROFESSOR_BIRCH
	dw ProfessorBirchEffectCommands ; effect commands
	tx ProfessorBirchDescription ; description
	tx ProfessorBirchDescription2 ; description (cont)

ZinniaCard:
	db TYPE_SUPPORTER ; type
	gfx ZinniaCardGfx ; gfx
	tx ZinniaName ; name
	db STAR ; rarity
	db LOST_ISLE | NONE ; sets
	dw ZINNIA
	dw ZinniaEffectCommands ; effect commands
	tx ZinniaDescription ; description
	tx ZinniaDescription2 ; description (cont)