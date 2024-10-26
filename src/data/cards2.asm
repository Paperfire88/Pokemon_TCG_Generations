ImpidimpCard:
	db TYPE_PKMN_DARKNESS ; type
	gfx ImpidimpCardGfx ; gfx
	tx ImpidimpName ; name
	db CIRCLE ; rarity
	db MYSTERY | NONE ; sets
	dw IMPIDIMP
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
