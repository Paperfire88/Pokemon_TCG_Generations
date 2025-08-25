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
	db WR_GRASS ; weakness
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
	db WR_GRASS ; weakness
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
	db WR_GRASS ; weakness
	db WR_PSYCHIC ; resistance
	tx BulkUpName ; category
	db 95 ; Pokedex number
	db 63 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx GrimmsnarlDescription ; description
	db 0

PawniardCard:
	db TYPE_PKMN_DARKNESS ; type
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
	energy DARKNESS, 1, COLORLESS, 1 ; energies
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
	db TYPE_PKMN_DARKNESS ; type
	gfx BisharpCardGfx ; gfx
	tx BisharpName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw BISHARP
	db 80 ; hp
	db STAGE1 ; stage
	tx PawniardName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
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
	energy DARKNESS, 1, COLORLESS, 2 ; energies
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

AbraCard:
	db TYPE_PKMN_PSYCHIC ; type
	gfx AbraCardGfx ; gfx
	tx AbraName ; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
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
	db LABORATORY | NONE ; sets
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
	db LABORATORY | NONE ; sets
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
	db WR_FIGHTING ; weakness
	db WR_DARKNESS ; resistance
	tx ParasiteName ; category
	db 95 ; Pokedex number
	db 44 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx NihilegoDescription ; description
	db 0

RioluCard:
	db TYPE_PKMN_FIGHTING ; type
	gfx RioluCardGfx ; gfx
	tx RioluName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
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
	db COLOSSEUM | NONE ; sets
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
	db WR_FIRE ; weakness
	db WR_WATER ; resistance
	tx SnowName ; category
	db 95 ; Pokedex number
	db 44 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx GlaceonDescription ; description
	db 0

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
	tx PKMNPowerCondition ; description (cont)
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
	db WR_GRASS ; resistance
	tx BlastName ; category
	db 70 ; Pokedex number
	db 67 ; level
	db 4, 3 ; length
	dw 98 * 10 ; weight
	tx MagmortarDescription ; description
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

TinkatinkCard:
	db TYPE_PKMN_PSYCHIC ; type
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
	db TYPE_PKMN_PSYCHIC ; type
	gfx TinkatuffCardGfx ; gfx
	tx TinkatuffName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw TINKATUFF
	db 80 ; hp
	db STAGE1 ; stage
	tx TinkatinkName ; pre-evo name

	; attack 1
	energy PSYCHIC, 1 ; energies
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
	energy PSYCHIC, 1, COLORLESS, 2 ; energies
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
	db TYPE_PKMN_PSYCHIC ; type
	gfx TinkatonCardGfx ; gfx
	tx TinkatonName ; name
	db STAR ; rarity
	db COLOSSEUM | NONE ; sets
	dw TINKATON
	db 100 ; hp
	db STAGE2 ; stage
	tx TinkatuffName ; pre-evo name

	; attack 1
	energy PSYCHIC, 2 ; energies
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
	energy PSYCHIC, 3 ; energies
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
	