DEF NONE EQU $0

; sCardCollection constants
DEF CARD_COLLECTION_SIZE EQU $200 ; cards
DEF MAX_AMOUNT_OF_CARD   EQU 99
DEF CARD_NOT_OWNED_F     EQU 7
DEF CARD_NOT_OWNED       EQU 1 << CARD_NOT_OWNED_F
DEF CARD_COUNT_MASK      EQU $7f

; sDeck* and generic deck constants
DEF NUM_DECKS                EQU 4
DEF DECK_NAME_SIZE           EQU 24
DEF DECK_NAME_SIZE_WO_SUFFIX EQU 21 ; name part before "deck"
DEF DECK_SIZE                EQU 60
DEF DECK_SIZE_BYTES          EQU DECK_SIZE * 2
DEF DECK_STRUCT_SIZE         EQU DECK_NAME_SIZE + DECK_SIZE_BYTES
DEF DECK_COMPRESSED_SIZE     EQU DECK_SIZE + (DECK_SIZE / 8) + 1
DEF DECK_COMPRESSED_STRUCT_SIZE EQU DECK_NAME_SIZE + DECK_COMPRESSED_SIZE
DEF DECK_CONFIG_BUFFER_SIZE  EQU 80
DEF MAX_NUM_SAME_NAME_CARDS  EQU 4
DEF MAX_UNNAMED_DECK_NUM     EQU 999

; card data offsets (data/cards.asm and card_data_struct)

; all card types
RSRESET
DEF CARD_DATA_TYPE                  rb
DEF CARD_DATA_GFX                   rw
DEF CARD_DATA_NAME                  rw
DEF CARD_DATA_RARITY                rb
DEF CARD_DATA_SET                   rb
DEF CARD_DATA_ID                    rw
DEF CARD_DATA_EFFECT_COMMANDS       EQU _RS ; !TYPE_PKMN
DEF CARD_DATA_HP                    rb ; TYPE_PKMN
DEF CARD_DATA_STAGE                 rb ; TYPE_PKMN
DEF CARD_DATA_NONPKMN_DESCRIPTION   EQU _RS ; !TYPE_PKMN
DEF CARD_DATA_PREEVO_NAME           rw ; TYPE_PKMN

; TYPE_PKMN card only
DEF CARD_DATA_ATTACK1                 EQU _RS
DEF CARD_DATA_ATTACK1_ENERGY_COST     rb 4 ; NUM_TYPES / 2
DEF CARD_DATA_ATTACK1_NAME            rw
DEF CARD_DATA_ATTACK1_DESCRIPTION     rw 2
DEF CARD_DATA_ATTACK1_DAMAGE          rb
DEF CARD_DATA_ATTACK1_CATEGORY        rb
DEF CARD_DATA_ATTACK1_EFFECT_COMMANDS rw
DEF CARD_DATA_ATTACK1_FLAG1           rb
DEF CARD_DATA_ATTACK1_FLAG2           rb
DEF CARD_DATA_ATTACK1_FLAG3           rb
DEF CARD_DATA_ATTACK1_EFFECT_PARAM    rb
DEF CARD_DATA_ATTACK1_ANIMATION       rb

; TYPE_PKMN card only
DEF CARD_DATA_ATTACK2                 EQU _RS
DEF CARD_DATA_ATTACK2_ENERGY_COST     rb 4 ; NUM_TYPES / 2
DEF CARD_DATA_ATTACK2_NAME            rw
DEF CARD_DATA_ATTACK2_DESCRIPTION     rw 2
DEF CARD_DATA_ATTACK2_DAMAGE          rb
DEF CARD_DATA_ATTACK2_CATEGORY        rb
DEF CARD_DATA_ATTACK2_EFFECT_COMMANDS rw
DEF CARD_DATA_ATTACK2_FLAG1           rb
DEF CARD_DATA_ATTACK2_FLAG2           rb
DEF CARD_DATA_ATTACK2_FLAG3           rb
DEF CARD_DATA_ATTACK2_EFFECT_PARAM    rb
DEF CARD_DATA_ATTACK2_ANIMATION       rb

; TYPE_PKMN card only
DEF CARD_DATA_RETREAT_COST          rb
DEF CARD_DATA_WEAKNESS              rb
DEF CARD_DATA_RESISTANCE            rb
DEF CARD_DATA_CATEGORY              rw
DEF CARD_DATA_POKEDEX_NUMBER        rb
DEF CARD_DATA_LEVEL                 rb
DEF CARD_DATA_LENGTH                rw
DEF CARD_DATA_WEIGHT                rw
DEF CARD_DATA_PKMN_DESCRIPTION      rw
DEF CARD_DATA_UNKNOWN2              rb

DEF PKMN_CARD_DATA_LENGTH EQU _RS

; generic type (color) constants
	const_def
	const FIRE        ; $00
	const GRASS       ; $01
	const LIGHTNING   ; $02
	const WATER       ; $03
	const FIGHTING    ; $04
	const PSYCHIC     ; $05
	const DARKNESS ; $07
DEF NUM_COLORED_TYPES EQU const_value
	const COLORLESS   ; $06
	const UNUSED ; $07
DEF NUM_TYPES EQU const_value

; generic type (color) flag constants
DEF FIRE_F      EQU $1 << FIRE      ; $01
DEF GRASS_F     EQU $1 << GRASS     ; $02
DEF LIGHTNING_F EQU $1 << LIGHTNING ; $04
DEF WATER_F     EQU $1 << WATER     ; $08
DEF FIGHTING_F  EQU $1 << FIGHTING  ; $10
DEF PSYCHIC_F   EQU $1 << PSYCHIC   ; $20
DEF DARKNESS_f EQU $1 << DARKNESS ; $40
DEF COLORLESS_F EQU $1 << COLORLESS ; $40

; CARD_DATA_TYPE constants
DEF TYPE_PKMN_FIRE      EQU FIRE
DEF TYPE_PKMN_GRASS     EQU GRASS
DEF TYPE_PKMN_LIGHTNING EQU LIGHTNING
DEF TYPE_PKMN_WATER     EQU WATER
DEF TYPE_PKMN_FIGHTING  EQU FIGHTING
DEF TYPE_PKMN_PSYCHIC   EQU PSYCHIC
DEF TYPE_PKMN_DARKNESS   EQU DARKNESS
DEF TYPE_PKMN_COLORLESS EQU COLORLESS
	const_def TYPE_PKMN_COLORLESS + 1 - TYPE_PKMN_FIRE
DEF TYPE_ENERGY EQU const_value
	const TYPE_ENERGY_FIRE             ; $08
	const TYPE_ENERGY_GRASS            ; $09
	const TYPE_ENERGY_LIGHTNING        ; $0a
	const TYPE_ENERGY_WATER            ; $0b
	const TYPE_ENERGY_FIGHTING         ; $0c
	const TYPE_ENERGY_PSYCHIC          ; $0d
	const TYPE_ENERGY_DARKNESS         ; $0f
	const TYPE_ENERGY_DOUBLE_COLORLESS ; $0e
	const TYPE_TRAINER                 ; $10
	const TYPE_TRAINER_UNUSED          ; $11
DEF NUM_CARD_TYPES EQU const_value - 1

DEF TYPE_PKMN      EQU %111
DEF TYPE_ENERGY_F  EQU 3
DEF TYPE_TRAINER_F EQU 4

; CARD_DATA_RARITY constants
DEF CIRCLE    EQU $0
DEF DIAMOND   EQU $1
DEF STAR      EQU $2
DEF PROMOSTAR EQU $ff

; card set constants (set 1)
	const_def
	const CARD_SET_COLOSSEUM   ; $0
	const CARD_SET_EVOLUTION   ; $1
	const CARD_SET_MYSTERY     ; $2
	const CARD_SET_LABORATORY  ; $3
	const CARD_SET_PROMOTIONAL ; $4
	const CARD_SET_ENERGY      ; $5
DEF NUM_CARD_SETS EQU const_value - 1

; CARD_DATA_SET constants (set 1)
DEF COLOSSEUM   EQU CARD_SET_COLOSSEUM   << 4
DEF EVOLUTION   EQU CARD_SET_EVOLUTION   << 4
DEF MYSTERY     EQU CARD_SET_MYSTERY     << 4
DEF LABORATORY  EQU CARD_SET_LABORATORY  << 4
DEF PROMOTIONAL EQU CARD_SET_PROMOTIONAL << 4
DEF ENERGY      EQU CARD_SET_ENERGY      << 4

; CARD_DATA_SET constants (set 2)
DEF JUNGLE EQU $1
DEF FOSSIL EQU $2
DEF GB     EQU $7
DEF PRO    EQU $8

; CARD_DATA_STAGE constants
DEF BASIC  EQU $00
DEF STAGE1 EQU $01
DEF STAGE2 EQU $02
DEF STAGE2_WITHOUT_STAGE1 EQU $03

; CARD_DATA_WEAKNESS and CARD_DATA_RESISTANCE constants
DEF WR_FIRE      EQU $80
DEF WR_GRASS     EQU $40
DEF WR_LIGHTNING EQU $20
DEF WR_WATER     EQU $10
DEF WR_FIGHTING  EQU $08
DEF WR_PSYCHIC   EQU $04
DEF WR_DARKNESS  EQU $04

; CARD_DATA_ATTACK*_CATEGORY constants
DEF DAMAGE_NORMAL EQU $00
DEF DAMAGE_PLUS   EQU $01
DEF DAMAGE_MINUS  EQU $02
DEF DAMAGE_X      EQU $03
DEF POKEMON_POWER EQU $04
DEF RESIDUAL_F    EQU 7
DEF RESIDUAL      EQU 1 << RESIDUAL_F

; Bit mask for CheckLoadedAttackFlag
; for flag address from wLoadedAttackFlag1
DEF ATTACK_FLAG1_ADDRESS EQU $0 << 3
DEF ATTACK_FLAG2_ADDRESS EQU $1 << 3
DEF ATTACK_FLAG3_ADDRESS EQU $2 << 3

; CARD_DATA_ATTACK*_FLAG1 constants
DEF INFLICT_POISON_F           EQU %000
DEF INFLICT_SLEEP_F            EQU %001
DEF INFLICT_PARALYSIS_F        EQU %010
DEF INFLICT_CONFUSION_F        EQU %011
DEF LOW_RECOIL_F               EQU %100
DEF DAMAGE_TO_OPPONENT_BENCH_F EQU %101
DEF HIGH_RECOIL_F              EQU %110
DEF DRAW_CARD_F                EQU %111

; CARD_DATA_ATTACK*_FLAG2 constants
; bits 5, 6 and 7 cover a wide variety of effects
DEF SWITCH_OPPONENT_POKEMON_F  EQU %000
DEF HEAL_USER_F                EQU %001
DEF NULLIFY_OR_WEAKEN_ATTACK_F EQU %010
DEF DISCARD_ENERGY_F           EQU %011
DEF ATTACHED_ENERGY_BOOST_F    EQU %100
DEF FLAG_2_BIT_5_F             EQU %101
DEF FLAG_2_BIT_6_F             EQU %110
DEF FLAG_2_BIT_7_F             EQU %111

; CARD_DATA_ATTACK*_FLAG3 constants
; bit 1 covers a wide variety of effects
; bits 2-7 are unused
DEF BOOST_IF_TAKEN_DAMAGE_F    EQU %000
DEF SPECIAL_AI_HANDLING_F      EQU %001

; CARD_DATA_ATTACK*_FLAG1_F constants
DEF INFLICT_POISON           EQU $1 << INFLICT_POISON_F
DEF INFLICT_SLEEP            EQU $1 << INFLICT_SLEEP_F
DEF INFLICT_PARALYSIS        EQU $1 << INFLICT_PARALYSIS_F
DEF INFLICT_CONFUSION        EQU $1 << INFLICT_CONFUSION_F
DEF LOW_RECOIL               EQU $1 << LOW_RECOIL_F
DEF DAMAGE_TO_OPPONENT_BENCH EQU $1 << DAMAGE_TO_OPPONENT_BENCH_F
DEF HIGH_RECOIL              EQU $1 << HIGH_RECOIL_F
DEF DRAW_CARD                EQU $1 << DRAW_CARD_F

; CARD_DATA_ATTACK*_FLAG2_F constants
; bits 5, 6 and 7 cover a wide variety of effects
DEF SWITCH_OPPONENT_POKEMON  EQU $1 << SWITCH_OPPONENT_POKEMON_F
DEF HEAL_USER                EQU $1 << HEAL_USER_F
DEF NULLIFY_OR_WEAKEN_ATTACK EQU $1 << NULLIFY_OR_WEAKEN_ATTACK_F
DEF DISCARD_ENERGY           EQU $1 << DISCARD_ENERGY_F
DEF ATTACHED_ENERGY_BOOST    EQU $1 << ATTACHED_ENERGY_BOOST_F
DEF FLAG_2_BIT_5             EQU $1 << FLAG_2_BIT_5_F
DEF FLAG_2_BIT_6             EQU $1 << FLAG_2_BIT_6_F
DEF FLAG_2_BIT_7             EQU $1 << FLAG_2_BIT_7_F

; CARD_DATA_ATTACK*_FLAG3_F constants
; bit 1 covers a wide variety of effects
; bits 2-7 are unused
DEF BOOST_IF_TAKEN_DAMAGE    EQU $1 << BOOST_IF_TAKEN_DAMAGE_F
DEF SPECIAL_AI_HANDLING      EQU $1 << SPECIAL_AI_HANDLING_F

; special CARD_DATA_RETREAT_COST values
DEF UNABLE_RETREAT EQU $64

; attack index constants
DEF FIRST_ATTACK_OR_PKMN_POWER EQU $0
DEF SECOND_ATTACK              EQU $1

; whether attack with the ATTACHED_ENERGY_BOOST flag
; has limit on attached energy cards boost.
DEF MAX_ENERGY_BOOST_IS_LIMITED     EQU $2
DEF MAX_ENERGY_BOOST_IS_NOT_LIMITED EQU $3
