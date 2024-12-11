ImpidimpCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ImpidimpCardGfx ; gfx
	tx ImpidimpName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
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
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
	db 0
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 1
	energy DARKNESS, 2 ; energies
	tx ScoutName ; name
	tx ScoutDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw ScoutEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 1 ; retreat cost
	db WR_GRASS ; weakness
	db NONE ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 18 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

MorgremCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx MorgremCardGfx ; gfx
	tx MorgremName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw MORGREM
	db 80 ; hp
	db STAGE1 ; stage
	tx ImpidimpName ; pre-evo name

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
	energy DARKNESS, 2, COLORLESS, 1 ; energies
	tx FalseSurrenderName; name
	tx DontApplyWsRsDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
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
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 34 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

GrimmsnarlCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx GrimmsnarlCardGfx ; gfx
	tx GrimmsnarlName ; name
	db STAR ; rarity
	db MYSTERY | NONE ; sets
	dw GRIMMSNARL
	db 120 ; hp
	db STAGE2 ; stage
	tx MorgremName ; pre-evo name

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

	db 2 ; retreat cost
	db WR_FIGHTING ; weakness
	db NONE ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 63 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

PawniardCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx PawniardCardGfx ; gfx
	tx PawniardName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
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
	db NONE ; flags 1
	db NONE ; flags 2
	db SPECIAL_AI_HANDLING ; flags 3
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
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLASH ; animation

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

BisharpCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx BisharpCardGfx ; gfx
	tx BisharpName ; name
	db DIAMOND ; rarity
	db MYSTERY | NONE ; sets
	dw BISHARP
	db 80 ; hp
	db STAGE1 ; stage
	tx PawniardName ; pre-evo name

	; attack 1
	energy DARKNESS, 1 ; energies
	tx WickedJabName ; name
	tx WickedJabDescription ; description
	dw NONE ; description (cont)
	db 10 ; damage
	db DAMAGE_PLUS ; category
	dw WickedJabEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_MULTIPLE_SLASH ; animation

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
	db NONE ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 34 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

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
	db ATK_ANIM_GLOW_EFFECT ; animation

	; attack 2
	energy PSYCHIC, 1, COLORLESS, 1 ; energies
	tx ConfusionAbraName ; name
	tx ConfusionAbraDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db DAMAGE_NORMAL ; category
	dw AbraConfusionEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
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
	dw SandshrewSandAttackEffectCommands ; effect commands
	db NONE ; flags 1
	db NULLIFY_OR_WEAKEN_ATTACK ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HYPNOSIS ; animation

	; attack 2
	energy PSYCHIC, 2, COLORLESS, 1 ; energies
	tx SuperPsiName ; name
	tx SuperPsiDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_PLUS ; category
	dw SuperPsiEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
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
	tx PKMNPowerCondition2 ; description (cont)
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
	db NONE ; flags 1
	db NONE ; flags 2
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
	db INFLICT_POISON/INFLICT_SLEEP ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_SLEEPING_GAS ; animatio

	; attack 1
	energy DARKNESS, 2 ; energies
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
	tx GasName ; category
	db 95 ; Pokedex number
	db 16 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

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
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_DARK_MIND ; animation

	db 1 ; retreat cost
	db WR_PSYCHIC ; weakness
	db NONE ; resistance
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 29 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

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
    dw NONE ; description (cont)
    db 0 ; damage
    db POKEMON_POWER ; category
    dw DeepSleepEffectCommands ; effect commands
    db NONE ; flags 1
    db NONE ; flags 2
    db NONE ; flags 3
    db 0
    db ATK_ANIM_PKMN_POWER_1

	; attack 3
	energy DARKNESS, 3, ; energies
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
	tx SharpClawName ; category
	db 95 ; Pokedex number
	db 52 ; level
	db 2, 11 ; length
	dw 22 * 10 ; weight
	tx MagikarpDescription ; description
	db 18

ElectabuzzLv35Card:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectabuzzLv35CardGfx ; gfx
	tx ElectabuzzName ; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	dw ELECTABUZZ_LV35
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
	dw PlasmaEffectCommands ; effect commands
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
	db 0

ElectivireCard:
	db TYPE_PKMN_LIGHTNING ; type
	gfx ElectivireCardGfx ; gfx
	tx ElectivireName ; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	dw ELECTIVIRE
	db 100 ; hp
	db STAGE1 ; stage
	tx ElectabuzzName ; pre-evo name

	; attack 1
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx ExplosiveBoltName ; name
	tx ExplosiveBoltDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw ElectroComboEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDER ; animation

	; attack 2
	energy LIGHTNING, 1, COLORLESS, 2 ; energies
	tx ExplosiveBoltName ; name
	tx ExplosiveBoltDescription ; description
	dw NONE ; description (cont)
	db 40 ; damage
	db DAMAGE_PLUS ; category
	dw ElectroComboEffectCommands ; effect commands
	db NONE ; flags 1
	db NONE ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_THUNDER ; animation

	db 3 ; retreat cost
	db WR_FIGHTING ; weakness
	db WR_LIGHTNING ; resistance
	tx ElectricName ; category
	db 117 ; Pokedex number
	db 66 ; level
	db 3, 7 ; length
	dw 66 * 10 ; weight
	tx ElectabuzzLv35Description ; description
	db 0

MoonStoneCard:
	db TYPE_TRAINER ; type
	gfx MoonStoneCardGfx ; gfx
	tx MoonStoneName ; name
	db CIRCLE ; rarity
	db COLOSSEUM | NONE ; sets
	dw MOON_STONE
	dw ColorlessEvolutionPkmnSearchEffectCommands ; effect commands
	tx MoonStoneDescription ; description
	dw NONE ; description (cont)

SuperRodCard:
	db TYPE_TRAINER ; type
	gfx SuperRodCardGfx ; gfx
	tx SuperRodName ; name
	db DIAMOND ; rarity
	db COLOSSEUM | NONE ; sets
	dw SUPER_ROD
	dw SuperRodEffectCommands ; effect commands
	tx SuperRodDescription ; description
	dw NONE ; description (cont)