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
	dw AlakazamConfuseRayEffectCommands ; effect commands
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
	dw MeowthSandAttackEffectCommands ; effect commands
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
	tx PKMNPowerCondition ; description (cont)
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

	db 1 ; retreat cost
	db WR_LIGHTNING ; weakness
	db NONE ; resistance
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
	tx PKMNPowerCondition ; description (cont)
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
	dw VolbeatToxicEffectCommands ; effect commands
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
	db 16

DragalgeCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx DragalgeCardGfx ; gfx
	tx DragalgeName ; name
	db DIAMOND ; rarity
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
	dw PikachuSparkEffectCommands ; effect commands
	db DAMAGE_TO_OPPONENT_BENCH ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 10
	db ATK_ANIM_QUICK_ATTACK ; animation

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
	db 110 ; hp
	db STAGE2 ; stage
	tx WhirlipedeName ; pre-evo name

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
	dw VolbeatToxicEffectCommands ; effect commands
	db INFLICT_POISON ; flags 1
	db FLAG_2_BIT_6 ; flags 2
	db NONE ; flags 3
	db 2
	db ATK_ANIM_TOXIC ; animation

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
	dw PikachuSparkEffectCommands ; effect commands
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
	dw VolbeatToxicEffectCommands ; effect commands
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
	dw WeedlePoisonStingEffectCommands ; effect commands
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
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_NORMAL ; category
	dw FLOATZELHyperBeamEffectCommands ; effect commands
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
	tx PKMNPowerCondition ; description (cont)
	db 0 ; damage
	db POKEMON_POWER ; category
	dw jfEffectCommands ; effect commands
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
	tx PKMNPowerCondition ; description (cont)
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
	energy METAL, 1, COLORLESS, 2 ; energies
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
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw FLOATZELHyperBeamEffectCommands ; effect commands
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
	db ATK_ANIM_BIG_HIT ; animation

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
	tx AegislashName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw AEGISLASH
	db 110 ; hp
	db STAGE2 ; stage
	tx DoubladeName ; pre-evo name

	; attack 1
	energy METAL, 2 ; energies
	tx KnockOffName; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw FLOATZELHyperBeamEffectCommands ; effect commands
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
	energy METAL, 2 ; energies
	tx KnockOffName; name
	tx Discard1EnergyFromTargetDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw FLOATZELHyperBeamEffectCommands ; effect commands
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
