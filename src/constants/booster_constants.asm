DEF NUM_CARDS_IN_BOOSTER EQU 50

	const_def
	const BOOSTER_CARD_TYPE_GRASS     ; $00
	const BOOSTER_CARD_TYPE_FIRE      ; $01
	const BOOSTER_CARD_TYPE_WATER     ; $02
	const BOOSTER_CARD_TYPE_LIGHTNING ; $03
	const BOOSTER_CARD_TYPE_FIGHTING  ; $04
	const BOOSTER_CARD_TYPE_PSYCHIC   ; $05
	const BOOSTER_CARD_TYPE_DARKNESS
	const BOOSTER_CARD_TYPE_COLORLESS ; $06
	const BOOSTER_CARD_TYPE_TRAINER   ; $07
	const BOOSTER_CARD_TYPE_ENERGY    ; $08
DEF NUM_BOOSTER_CARD_TYPES EQU const_value

	const_def
	const BOOSTER_COLOSSEUM  ; $00
	const BOOSTER_EVOLUTION  ; $01
	const BOOSTER_MYSTERY    ; $02
	const BOOSTER_LABORATORY ; $03

	const_def
	const BOOSTER_COLOSSEUM_NEUTRAL           ; $00
	const BOOSTER_COLOSSEUM_GRASS             ; $01
	const BOOSTER_COLOSSEUM_FIRE              ; $02
	const BOOSTER_COLOSSEUM_WATER             ; $03
	const BOOSTER_COLOSSEUM_LIGHTNING         ; $04
	const BOOSTER_COLOSSEUM_FIGHTING          ; $05
	const BOOSTER_COLOSSEUM_TRAINER           ; $06
	const BOOSTER_EVOLUTION_NEUTRAL           ; $07
	const BOOSTER_EVOLUTION_GRASS             ; $08
	const BOOSTER_EVOLUTION_FIRE              ; $09
	const BOOSTER_EVOLUTION_WATER             ; $0a
	const BOOSTER_EVOLUTION_FIGHTING          ; $0b
	const BOOSTER_EVOLUTION_PSYCHIC           ; $0c
	const BOOSTER_EVOLUTION_TRAINER           ; $0d
	const BOOSTER_MYSTERY_NEUTRAL             ; $0e
	const BOOSTER_MYSTERY_GRASS_COLORLESS     ; $0f
	const BOOSTER_MYSTERY_WATER_COLORLESS     ; $10
	const BOOSTER_MYSTERY_LIGHTNING_COLORLESS ; $11
	const BOOSTER_MYSTERY_FIGHTING_COLORLESS  ; $12
	const BOOSTER_MYSTERY_TRAINER_COLORLESS   ; $13
	const BOOSTER_LABORATORY_NEUTRAL          ; $14
	const BOOSTER_LABORATORY_GRASS            ; $15
	const BOOSTER_LABORATORY_WATER            ; $16
	const BOOSTER_LABORATORY_PSYCHIC          ; $17
	const BOOSTER_LABORATORY_TRAINER          ; $18
	const BOOSTER_ENERGY_LIGHTNING_FIRE       ; $19
	const BOOSTER_ENERGY_WATER_FIGHTING       ; $1a
	const BOOSTER_ENERGY_GRASS_PSYCHIC        ; $1b
	const BOOSTER_ENERGY_RANDOM               ; $1c

DEF NUM_BOOSTERS EQU const_value
DEF NO_BOOSTER EQU $ff
