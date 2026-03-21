; doubles the damage at de if swords dance or focus energy was used
; in the last turn by the turn holder's arena Pokemon
HandleDoubleDamageSubstatus::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS3
	get_turn_duelist_var
	bit SUBSTATUS3_THIS_TURN_DOUBLE_DAMAGE_F, [hl]
	call nz, .double_damage_at_de
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS1
	call GetNonTurnDuelistVariable
	or a
	call nz, .ret1
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	or a
	call nz, .ret2
	ret
.ret1
	cp SUBSTATUS1_INCREASE_BY_30
	jr z, .increase_damage_by_30
	ret
.increase_damage_by_30
	ld hl, +30
	add hl, de
	ld e, l
	ld d, h
	ret
.double_damage_at_de
	ld a, e
	or d
	ret z
	sla e
	rl d
	ret
.ret2
	ret

; check if the attacking card (non-turn holder's arena card) has any substatus that
; reduces the damage dealt this turn (SUBSTATUS2).
; check if the defending card (turn holder's arena card) has any substatus that
; reduces the damage dealt to it this turn (SUBSTATUS1 or Pkmn Powers).
; damage is given in de as input and the possibly updated damage is also returned in de.
HandleDamageReduction::
	call HandleDamageReductionExceptSubstatus2
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	call GetNonTurnDuelistVariable
	or a
	ret z
	cp SUBSTATUS2_REDUCE_BY_20
	jr z, .reduce_damage_by_20
	cp SUBSTATUS2_REDUCE_BY_10
	jr z, .reduce_damage_by_10
	ret
.reduce_damage_by_20
	ld hl, -20
	add hl, de
	ld e, l
	ld d, h
	ret
.reduce_damage_by_10
	ld hl, -10
	add hl, de
	ld e, l
	ld d, h
	ret

; check if the defending card (turn holder's arena card) has any substatus that
; reduces the damage dealt to it this turn. (SUBSTATUS1 or Pkmn Powers)
; damage is given in de as input and the possibly updated damage is also returned in de.
HandleDamageReductionExceptSubstatus2::
	ld a, [wNoDamageOrEffect]
	or a
	jr nz, .no_damage
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS1
	get_turn_duelist_var
	or a
	jr z, .not_affected_by_substatus1
	cp SUBSTATUS1_NO_DAMAGE
	jr z, .no_damage
	cp SUBSTATUS1_REDUCE_BY_10
	jr z, .reduce_damage_by_10
	cp SUBSTATUS1_REDUCE_BY_20
	jr z, .reduce_damage_by_20
	cp SUBSTATUS1_HARDEN
	jr z, .prevent_less_than_40_damage
	cp SUBSTATUS1_HALVE_DAMAGE
	jr z, .halve_damage
.not_affected_by_substatus1
	call CheckCannotUseDueToStatus
	ret c
.pkmn_power
	ld a, [wLoadedAttackCategory]
	cp POKEMON_POWER
	ret z
	ld hl, wTempNonTurnDuelistCardID
	cphl SPIRITOMB
	jr z, .prevent_less_than_30_damage ; invisible wall
	; cphl KABUTO
	; jr z, .halve_damage2 ; kabuto armor
	ret	
.no_damage
	ld de, 0
	ret
.reduce_damage_by_10
	ld hl, -10
	add hl, de
	ld e, l
	ld d, h
	ret	
.reduce_damage_by_20
	ld hl, -20
	add hl, de
	ld e, l
	ld d, h
	ret
.prevent_less_than_40_damage
	ld bc, 40
	call CompareDEtoBC
	ret nc
	ld de, 0
	ret
.halve_damage
	sla d
	rr e
	bit 0, e
	ret z
	ld hl, -5
	add hl, de
	ld e, l
	ld d, h
	ret
.prevent_less_than_30_damage
	ld a, [wLoadedAttackCategory]
	cp POKEMON_POWER
	ret z
	ld bc, 30
	call CompareDEtoBC
	ret c
	ld de, 0
	ret
.halve_damage2
	sla d
	rr e
	bit 0, e
	ret z
	ld hl, -5
	add hl, de
	ld e, l
	ld d, h
	ret
; check for Invisible Wall, Kabuto Armor, NShield, or Transparency, in order to
; possibly reduce or make zero the damage at de.
HandleDamageReductionOrNoDamageFromPkmnPowerEffects::
	ld a, [wLoadedAttackCategory]
	cp POKEMON_POWER
	ret z
	push de
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	pop de
	ret c
	ld a, [wTempPlayAreaLocation_cceb]
	or a
	call nz, HandleDamageReductionExceptSubstatus2.pkmn_power
	push de ; push damage from call above, which handles Invisible Wall and Kabuto Armor
	call HandleNoDamageOrEffectSubstatus.pkmn_power
	call nc, HandleTransparency
	pop de ; restore damage
	ret nc
	; if carry was set due to NShield or Transparency, damage is 0
	ld de, 0
	ret

; when MACHAMP is damaged, if its Strikes Back is active, the
; attacking Pokemon (turn holder's arena Pokemon) takes 10 damage.
; ignore if damage taken at de is 0.
; used to bounce back a damaging attack.
HandleStrikesBack_AgainstDamagingAttack::
	ld a, e
	or d
	ret z
	ld a, [wIsDamageToSelf]
	or a
	ret nz
	ld a, [wTempNonTurnDuelistCardID] ; ID of defending Pokemon
	cp KROOKODILE
	jr z, .next
	cp16 SANDSLASH
	ret nz
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	ret c
	ld a, [wLoadedAttackCategory] ; category of attack used
	cp POKEMON_POWER	
	ret z

	ld a, [wTempPlayAreaLocation_cceb] ; defending Pokemon's PLAY_AREA_*
	or a ; cp PLAY_AREA_ARENA
	jr nz, DealDamagePokePowerEffect
	call CheckCannotUseDueToStatus
	ret c
	push hl
	push de
	; subtract 10 HP from attacking Pokemon (turn holder's arena Pokemon)
	call SwapTurn
	ld a, DUELVARS_ARENA_CARD
	get_turn_duelist_var
	call LoadCardDataToBuffer2_FromDeckIndex
	ld a, DUELVARS_ARENA_CARD_HP
	get_turn_duelist_var
	push af
	push hl
	ld de, 10
	call SubtractHP
	ld a, [wLoadedCard2ID]
	ld [wTempNonTurnDuelistCardID], a
	ld hl, 10
	jr DealDamagePokePowerEffect.load_damage
.next	
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	ret c
	ld a, [wLoadedAttackCategory] ; category of attack used
	cp POKEMON_POWER	
	ret z

	ld a, [wTempPlayAreaLocation_cceb] ; defending Pokemon's PLAY_AREA_*
	or a ; cp PLAY_AREA_ARENA
	jr nz, DealDamagePokePowerEffect
	call CheckCannotUseDueToStatus
	ret c
	; falltrough
DealDamagePokePowerEffect::
	push hl
	push de
	; subtract 10 HP from attacking Pokemon (turn holder's arena Pokemon)
	call SwapTurn
	ld a, DUELVARS_ARENA_CARD
	get_turn_duelist_var
	call LoadCardDataToBuffer2_FromDeckIndex
	ld a, DUELVARS_ARENA_CARD_HP
	get_turn_duelist_var
	push af
	push hl
	ld de, 20
	call SubtractHP
	ld a, [wLoadedCard2ID]
	ld [wTempNonTurnDuelistCardID], a
	ld hl, 20
.load_damage
	call LoadTxRam3
	ld hl, wLoadedCard2Name
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call LoadTxRam2
	ldtx hl, ReceivesDamageDueToStrikesBackText
	call DrawWideTextBox_WaitForInput
	pop hl
	pop af
	or a
	jr z, .not_knocked_out
	xor a
	call PrintPlayAreaCardKnockedOutIfNoHP
.not_knocked_out
	call SwapTurn
	pop de
	pop hl
	ret

; return carry if NShield or Transparency activate (if MIMIKYU or DUSCLOPS is
; the turn holder's arena Pokemon), and print their corresponding text if so
HandleNShieldAndTransparency::
	push de
	ld a, DUELVARS_ARENA_CARD
	add e
	get_turn_duelist_var
	call GetCardIDFromDeckIndex
	cp16 MIMIKYU
	jr z, .nshield
	cp16 HEAVY_BALL
	jr z, .transparency
.done
	pop de
	or a
	ret
.nshield
	ld a, DUELVARS_ARENA_CARD_STAGE
	call GetNonTurnDuelistVariable
	or a
	jr z, .done
	ld a, NO_DAMAGE_OR_EFFECT_NSHIELD
	ld [wNoDamageOrEffect], a
	ldtx hl, NoDamageOrEffectDueToNShieldText
.print_text
	call DrawWideTextBox_WaitForInput
	pop de
	retscf
.transparency
	xor a
	ld [wDuelDisplayedScreen], a
	ldtx de, TransparencyCheckText
	call TossCoin
	jr nc, .done
	ld a, NO_DAMAGE_OR_EFFECT_TRANSPARENCY
	ld [wNoDamageOrEffect], a
	ldtx hl, NoDamageOrEffectDueToTransparencyText
	jr .print_text

; return carry if the turn holder's arena Pokemon is under a condition that makes
; it unable to attack. also return in hl the text id to be displayed
HandleCantAttackSubstatus::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	or a
	ret z
	ldtx hl, UnableToAttackDueToTailWagText
	cp SUBSTATUS2_CANNOT_ATTACK_THIS
	jr z, .return_with_cant_attack
	ldtx hl, UnableToAttackText
	cp SUBSTATUS2_CANNOT_ATTACK
	jr z, .return_with_cant_attack
	or a
	ret
.return_with_cant_attack
	retscf

; return carry if the turn holder's arena Pokemon cannot use
; selected attack at wSelectedAttack due to amnesia
HandleAmnesiaSubstatus::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	or a
	jr nz, .check_amnesia
	ret
.check_amnesia
	cp SUBSTATUS2_AMNESIA
	jr z, .affected_by_amnesia
.not_the_disabled_atk
	or a
	ret
.affected_by_amnesia
	ld a, DUELVARS_ARENA_CARD_DISABLED_ATTACK_INDEX
	get_turn_duelist_var
	ld a, [wSelectedAttack]
	cp [hl]
	jr nz, .not_the_disabled_atk
	ldtx hl, UnableToUseAttackDueToAmnesiaText
	retscf

; return carry if the turn holder's attack was unsuccessful due to sand attack or smokescreen effect
HandleSandAttackOrSmokescreenSubstatus::
	call CheckSandAttackOrSmokescreenSubstatus
	ret nc
	call TossCoin
	ld [wGotHeadsFromSandAttackOrSmokescreenCheck], a
	ccf
	ret nc
	ldtx hl, AttackUnsuccessfulText
	call DrawWideTextBox_WaitForInput
	retscf

; return carry if the turn holder's arena card is under the effects of sand attack or smokescreen
CheckSandAttackOrSmokescreenSubstatus::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	or a
	ret z
	ldtx de, SmokescreenCheckText
	cp SUBSTATUS2_SMOKESCREEN
	jr z, .card_is_affected
	or a
	ret
.card_is_affected
	ld a, [wGotHeadsFromSandAttackOrSmokescreenCheck]
	or a
	ret nz
	retscf

; return carry if the defending card (turn holder's arena card) is under a substatus
; that prevents any damage or effect dealt to it for a turn.
; also return the cause of the substatus in wNoDamageOrEffect
HandleNoDamageOrEffectSubstatus::
	xor a
	ld [wNoDamageOrEffect], a
	ld a, [wLoadedAttackCategory]
	cp POKEMON_POWER
	ret z
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS1
	get_turn_duelist_var
	ld e, NO_DAMAGE_OR_EFFECT_FLY
	ldtx hl, NoDamageOrEffectDueToFlyText
	cp SUBSTATUS1_IMMUNITY
	jr z, .no_damage_or_effect
	ld e, NO_DAMAGE_OR_EFFECT_BARRIER
	ldtx hl, NoDamageOrEffectDueToBarrierText
	cp SUBSTATUS1_IMMUNITY
	jr z, .no_damage_or_effect
	ld e, NO_DAMAGE_OR_EFFECT_AGILITY
	ldtx hl, NoDamageOrEffectDueToAgilityText
	cp SUBSTATUS1_IMMUNITY
	jr z, .no_damage_or_effect
	call CheckCannotUseDueToStatus
	ccf
	ret nc
.pkmn_power
	ld hl, wTempNonTurnDuelistCardID
	cphl MIMIKYU
	jr z, .neutralizing_shield
	or a
	ret
.no_damage_or_effect
	ld a, e
	ld [wNoDamageOrEffect], a
	retscf
.neutralizing_shield
	ld a, [wIsDamageToSelf]
	or a
	ret nz
	; prevent damage if attacked by a non-basic Pokemon
	ld a, [wTempTurnDuelistCardID + 0]
	ld e, a
	ld a, [wTempTurnDuelistCardID + 1]
	ld d, a
	call LoadCardDataToBuffer2_FromCardID
	ld a, [wLoadedCard2Stage]
	or a
	ret z
	ld e, NO_DAMAGE_OR_EFFECT_NSHIELD
	ldtx hl, NoDamageOrEffectDueToNShieldText
	jr .no_damage_or_effect

; if the Pokemon being attacked is DUSCLOPS, and its Transparency is active,
; there is a 50% chance that any damage or effect is prevented
; return carry if damage is prevented
HandleTransparency::
	ld hl, wTempNonTurnDuelistCardID
	cphl HEAVY_BALL
	jr z, .transparency
.done
	or a
	ret
.transparency
	ld a, [wLoadedAttackCategory]
	cp POKEMON_POWER
	jr z, .done ; Transparency has no effect against Pkmn Powers
	ld a, [wTempPlayAreaLocation_cceb]
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	jr c, .done
	xor a
	ld [wDuelDisplayedScreen], a
	ldtx de, TransparencyCheckText
	call TossCoin
	ret nc
	ld a, NO_DAMAGE_OR_EFFECT_TRANSPARENCY
	ld [wNoDamageOrEffect], a
	ldtx hl, NoDamageOrEffectDueToTransparencyText
	retscf

; return carry and return the appropriate text id in hl if the target has an
; special status or power that prevents any damage or effect done to it this turn
; input: a = NO_DAMAGE_OR_EFFECT_*
CheckNoDamageOrEffect::
	ld a, [wNoDamageOrEffect]
	or a
	ret z
	bit 7, a
	jr nz, .dont_print_text ; already been here so don't repeat the text
	ld hl, wNoDamageOrEffect
	set 7, [hl]
	dec a
	add a
	ld e, a
	ld d, $0
	ld hl, NoDamageOrEffectTextIDTable
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	retscf

.dont_print_text
	ld hl, $0000
	retscf

NoDamageOrEffectTextIDTable::
	tx NoDamageOrEffectDueToAgilityText      ; NO_DAMAGE_OR_EFFECT_AGILITY
	tx NoDamageOrEffectDueToBarrierText      ; NO_DAMAGE_OR_EFFECT_BARRIER
	tx NoDamageOrEffectDueToFlyText          ; NO_DAMAGE_OR_EFFECT_FLY
	tx NoDamageOrEffectDueToTransparencyText ; NO_DAMAGE_OR_EFFECT_TRANSPARENCY
	tx NoDamageOrEffectDueToNShieldText      ; NO_DAMAGE_OR_EFFECT_NSHIELD

; return carry if turn holder has Omanyte and its Clairvoyance Pkmn Power is active
IsClairvoyanceActive::
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	ret c
	ld de, IMAKUNI_CARD
	jp CountPokemonIDInPlayArea

; returns carry if turn holder's arena card is paralyzed, asleep, confused,
; and/or toxic gas in play, meaning that attack and/or pkmn power cannot be used
CheckCannotUseDueToStatus::
	xor a
	
CheckCannotUseDueToStatus_OnlyToxicGasIfANon0::
	or a
	jr nz, .check_toxic_gas
	ld a, DUELVARS_ARENA_CARD_STATUS
	get_turn_duelist_var
	and CNF_SLP_PRZ
	ldtx hl, CannotUseDueToStatusText
	scf
	jr nz, .done ; return carry
.check_substatus
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS3
	get_turn_duelist_var
	bit SUBSTATUS3_NO_POKEPOWERS_F, a
	jr z, .check_toxic_gas
	ldtx hl, UnableDueToToxicGasText
	retscf
.check_toxic_gas
	push de
	ld de, KABUTOPS
	call CountPokemonIDInBothArenas
	pop de
	ldtx hl, UnableDueToToxicGasText
.done
	ret

; return, in a, the amount of times that the Pokemon card with a given ID is found in the
; play area of both duelists. Also return carry if the Pokemon card is at least found once.
; if the arena Pokemon is asleep, confused, or paralyzed (Pkmn Power-incapable), it doesn't count.
; input:
; - de = Pokemon card ID to search
CountPokemonIDInBothPlayAreas::
	push bc
	push de
	call CountPokemonIDInPlayArea
	ld c, a
	pop de
	call SwapTurn
	call CountPokemonIDInPlayArea
	call SwapTurn
	add c
	or a
	scf
	jr nz, .found
	or a
.found
	pop bc
	ret
; return, in a, the amount of times that the Pokemon card with a given ID is found in the
; arena of both duelists.
; if the arena Pokemon is asleep, confused, or paralyzed (Pkmn Power-incapable), it doesn't count.
; input:
; - de = Pokemon card ID to search
CountPokemonIDInBothArenas::
	push bc
	push de
	call CheckPokemonIDInArena
	ld c, a
	pop de
	call SwapTurn
	call CheckPokemonIDInArena
	call SwapTurn
	add c
	or a
	scf
	jr nz, .found
	or a
.found
	pop bc
	ret
; return, in a, the amount of times that the Pokemon card with a given ID is found in the
; turn holder's play area. Also return carry if the Pokemon card is at least found once.
; if the arena Pokemon is asleep, confused, or paralyzed (Pkmn Power-incapable), it doesn't count.
; input:
; - de = Pokemon card ID to search
CountPokemonIDInPlayArea::
	push hl
	push de
	push bc
	ld a, e
	ld [wTempPokemonID_ce7c + 0], a
	ld a, d
	ld [wTempPokemonID_ce7c + 1], a
	ld c, $0
	ld a, DUELVARS_ARENA_CARD
	get_turn_duelist_var
	cp -1
	jr z, .check_bench
	call GetCardIDFromDeckIndex
	push bc
	ld a, [wTempPokemonID_ce7c + 0]
	ld c, a
	ld a, [wTempPokemonID_ce7c + 1]
	ld b, a
	call CompareDEtoBC
	pop bc
	jr nz, .check_bench
	ld a, DUELVARS_ARENA_CARD_STATUS
	get_turn_duelist_var
	and CNF_SLP_PRZ
	jr nz, .check_bench
	inc c
.check_bench
	ld a, DUELVARS_BENCH
	get_turn_duelist_var
.next_bench_slot
	ld a, [hli]
	cp -1
	jr z, .done
	call GetCardIDFromDeckIndex
	push bc
	ld a, [wTempPokemonID_ce7c + 0]
	ld c, a
	ld a, [wTempPokemonID_ce7c + 1]
	ld b, a
	call CompareDEtoBC
	pop bc
	jr nz, .skip
	inc c
.skip
	inc b
	jr .next_bench_slot
.done
	ld a, c
	or a
	scf
	jr nz, .found
	or a
.found
	pop bc
	pop de
	pop hl
	ret

CheckPokemonIDInArena::
	push hl
	push de
	push bc
	ld a, e
	ld [wTempPokemonID_ce7c + 0], a
	ld a, d
	ld [wTempPokemonID_ce7c + 1], a
	ld c, $0
	ld a, DUELVARS_ARENA_CARD
	get_turn_duelist_var
	cp -1
	jr z, .done
	call GetCardIDFromDeckIndex
	push bc
	ld a, [wTempPokemonID_ce7c + 0]
	ld c, a
	ld a, [wTempPokemonID_ce7c + 1]
	ld b, a
	call CompareDEtoBC
	pop bc
	jr nz, .done
	ld a, DUELVARS_ARENA_CARD_STATUS
	get_turn_duelist_var
	and CNF_SLP_PRZ
	jr nz, .done
	inc c
.done
	ld a, c
	or a
	scf
	jr nz, .found
	or a
.found
	pop bc
	pop de
	pop hl
	ret

; return, in a, the retreat cost of the card in wLoadedCard1,
; adjusting for any Dodrio's Retreat Aid Pkmn Power that is active.
GetLoadedCard1RetreatCost::
	ld c, 0
	ld a, DUELVARS_BENCH
	get_turn_duelist_var
.check_bench_loop
	ld a, [hli]
	cp -1
	jr z, .no_more_bench
	call GetCardIDFromDeckIndex
	cp16 BRAVIARY
	jr nz, .not_dodrio
	inc c
.not_dodrio
	jr .check_bench_loop
.no_more_bench
	ld a, c
	or a
	jr nz, .dodrio_found
.muk_found
	ld a, [wLoadedCard1RetreatCost] ; return regular retreat cost
	ret
.dodrio_found
	ld de, KABUTOPS
	call CountPokemonIDInBothArenas
	jr c, .muk_found
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS3
	get_turn_duelist_var
	bit SUBSTATUS3_NO_POKEPOWERS_F, a
	jr nz, .muk_found
	ld a, [wLoadedCard1RetreatCost]
	sub c ; apply Retreat Aid for each Pkmn Power-capable Dodrio
	ret nc
	xor a
	ret

; return carry if the turn holder's arena Pokemon is affected by Acid and can't retreat
CheckCantRetreatDueToAcid::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	or a
	ret z
	cp SUBSTATUS2_UNABLE_RETREAT
	jr z, .cant_retreat
	or a
	ret
.cant_retreat
	ldtx hl, UnableToRetreatDueToAcidText
	retscf

CheckCantRetreatDueToPoisonReef::
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	ret c
	call SwapTurn
	ld a, DUELVARS_ARENA_CARD
	get_turn_duelist_var
	ld c, 0
.loop
	ld a, [hl]
	cp $ff
	jr z, .done
	call GetCardIDFromDeckIndex
	cp16 DRAGALGE
	jr nz, .next
	inc c
.next
	inc hl
	jr .loop
.done
	call SwapTurn
	ld a, c
	cp 1
	jr nc, .cant_retreat
	or a
	ret

.cant_retreat
	ldtx hl, UnableToRetreatText
	retscf

; return carry if the turn holder is affected by Headache and trainer cards can't be used
CheckCantUseTrainerDueToHeadache::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS3
	get_turn_duelist_var
	or a
	bit SUBSTATUS3_HEADACHE_F, [hl]
	ret z
	ldtx hl, UnableToUseTrainerDueToHeadacheText
	retscf

CheckCantUseTrainerDueToFlag:
	ld a, DUELVARS_ARENA_CARD_FLAGS
	get_turn_duelist_var
	and SOMETHINGFORNOW
	ret z
	ldtx hl, ThisAttackCannotBeUsedTwiceText
	retscf

checkifxisinplay::
	ld de, MARNIE
	call SwapTurn
	call CountPokemonIDInPlayArea
	call SwapTurn
	ret

; return carry if any duelist has Aerodactyl and its Prehistoric Power Pkmn Power is active
IsPrehistoricPowerActive::
	ld de, TYRANTRUM
	call CountPokemonIDInBothPlayAreas
	ret nc
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	ret c
	ld de, KABUTOPS
	call CountPokemonIDInBothArenas
	ldtx hl, UnableToEvolveDueToPrehistoricPowerText
	ccf
	ret

; clears some SUBSTATUS2 conditions from the turn holder's active Pokemon.
; more specifically, those conditions that reduce the damage from an attack
; or prevent the opposing Pokemon from attacking the substatus condition inducer.
ClearDamageReductionSubstatus2::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	or a
	ret z
	cp SUBSTATUS2_REDUCE_BY_20
	jr z, .zero
	cp SUBSTATUS2_REDUCE_BY_10
	jr z, .zero
	cp SUBSTATUS2_CANNOT_ATTACK_THIS
	jr z, .zero
	ret
.zero
	ld [hl], 0
	ret

; clears the SUBSTATUS1 and updates the double damage condition of the player about to start his turn
UpdateSubstatusConditions_StartOfTurn::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS1
	get_turn_duelist_var
	ld [hl], $0
	or a
	ret z
	cp SUBSTATUS1_NEXT_TURN_DOUBLE_DAMAGE
	ret nz
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS3
	get_turn_duelist_var
	set SUBSTATUS3_THIS_TURN_DOUBLE_DAMAGE_F, [hl]
	ret

; clears the SUBSTATUS2, Headache, and updates the double damage condition of the player ending his turn
UpdateSubstatusConditions_EndOfTurn::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS3
	get_turn_duelist_var
	res SUBSTATUS3_HEADACHE_F, [hl]
	res SUBSTATUS3_NO_POKEPOWERS_F, [hl]
	push hl
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	xor a
	ld [hl], a
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS1
	get_turn_duelist_var
	pop hl
	cp SUBSTATUS1_NEXT_TURN_DOUBLE_DAMAGE
	ret z
	res SUBSTATUS3_THIS_TURN_DOUBLE_DAMAGE_F, [hl]
	ret

; return carry if turn holder has Blastoise and its Rain Dance Pkmn Power is active
IsRainDanceActive::
	ld de, GRENINJA
	call CountPokemonIDInPlayArea
	ret nc ; return if no Pkmn Power-capable Blastoise found in turn holder's play area
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	ret c
	ld de, KABUTOPS
	call CountPokemonIDInBothArenas
	ccf
	ret

; return carry if card at [hTempCardIndex_ff98] is a water energy card AND
; if card at [hTempPlayAreaLocation_ff9d] is a water Pokemon card.
CheckRainDanceScenario::
	ldh a, [hTempCardIndex_ff98]
	call GetCardIDFromDeckIndex
	call GetCardType
	cp TYPE_ENERGY_WATER
	jr nz, .no_carry
	ldh a, [hTempPlayAreaLocation_ff9d]
	call GetPlayAreaCardColor
	cp TYPE_PKMN_WATER
	jr nz, .no_carry
	retscf
.no_carry
	or a
	ret

; if the defending (non-turn) card's HP is 0 and the attacking (turn) card's HP
;  is not, the attacking card faints if it was affected by destiny bond
HandleDestinyBondSubstatus::
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS1
	call GetNonTurnDuelistVariable
	cp SUBSTATUS1_DESTINY_BOND
	jr z, Thecheck_hp
	ret

Thecheck_hp::
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	cp -1
	ret z
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	or a
	ret nz
	ld a, DUELVARS_ARENA_CARD_HP
	get_turn_duelist_var
	or a
	ret z
	ld [hl], 0
	push hl
	call DrawDuelMainScene
	call DrawDuelHUDs
	pop hl
	ld l, DUELVARS_ARENA_CARD
	ld a, [hl]
	call LoadCardDataToBuffer2_FromDeckIndex
	ld hl, wLoadedCard2Name
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call LoadTxRam2
	ldtx hl, KnockedOutDueToDestinyBondText
	jp DrawWideTextBox_WaitForInput

; when KROOKODILE is damaged, if its Strikes Back is active, the
; attacking Pokemon (turn holder's arena Pokemon) takes 10 damage.
; used to bounce back an attack of the RESIDUAL category
HandleStrikesBack_AgainstResidualAttack::
	ld a, [wTempNonTurnDuelistCardID]
	cp KROOKODILE
	jr z, .strikes_back
	cp16 SANDSLASH
	jr z, .iron_barbs
	ret
.iron_barbs	
	ld a, [wLoadedAttackCategory]
	and RESIDUAL
	ret nz
	ld a, [wDealtDamage]
	or a
	ret z
	call SwapTurn
	call CheckCannotUseDueToStatus
	call SwapTurn
	ret c
	ld hl, 10 ; damage to be dealt to attacker
	call ApplyStrikesBack_AgainstResidualAttack
	call nc, WaitForWideTextBoxInput
	ret
.strikes_back
	ld a, [wLoadedAttackCategory]
	and RESIDUAL
	ret nz
	ld a, [wDealtDamage]
	or a
	ret z
	call SwapTurn
	call CheckCannotUseDueToStatus
	call SwapTurn
	ret c
	ld hl, 20 ; damage to be dealt to attacker
	call ApplyStrikesBack_AgainstResidualAttack
	call nc, WaitForWideTextBoxInput
	ret

ApplyStrikesBack_AgainstResidualAttack::
	push hl
	call LoadTxRam3
	ld a, [wTempTurnDuelistCardID]
	ld e, a
	ld d, $0
	call LoadCardDataToBuffer2_FromCardID
	ld hl, wLoadedCard2Name
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call LoadTxRam2
	ld a, DUELVARS_ARENA_CARD_HP
	get_turn_duelist_var
	pop de
	push af
	push hl
	call SubtractHP
	ldtx hl, ReceivesDamageDueToStrikesBackText
	call DrawWideTextBox_PrintText
	pop hl
	pop af
	or a
	ret z
	call WaitForWideTextBoxInput
	xor a
	call PrintPlayAreaCardKnockedOutIfNoHP
	call DrawDuelHUDs
	retscf

; if the id of the card provided in register a as a deck index is KABUTOPS,
; clear the changed type of all arena and bench Pokemon
ClearChangedTypesIfMuk::
	call GetCardIDFromDeckIndex
	cp16 KABUTOPS
	ret nz
	call SwapTurn
	call .zero_changed_types
	call SwapTurn
.zero_changed_types
	ld a, DUELVARS_ARENA_CARD_CHANGED_TYPE
	get_turn_duelist_var
	ld c, MAX_PLAY_AREA_POKEMON
.zero_changed_types_loop
	xor a
	ld [hli], a
	dec c
	jr nz, .zero_changed_types_loop
	ret
OverwriteLoadedAttackCost::
	ld bc, (NUM_TYPES - 1) / 2
	add hl, bc
; check whether there are any cost modifiers
	call GetAttackCostDiscount
	ld b, a
	call GetAttackCostPenalty
	add b
	ret z  ; no modifiers
; apply attack cost modifiers
	ld a, [hl]
IF (NUM_TYPES % 2) == 0
	swap a
ENDC	
	and $0f
	add c  ; penalty
	sub b  ; discount
	jr nc, .overwrite
	xor a  ; no Colorless required
	; jr .capped
.overwrite
	cp $10
	jr c, .capped
	ld a, $0f
.capped
IF (NUM_TYPES % 2) == 0
	swap a
ELSE
; retain colored cost
	ld c, a
	ld a, [hl]
	and $f0
	or c
ENDC	
	ld [hl], a
	ret
GetAttackCostDiscount:
	push hl
	ld c, 0
	ld a, e
	or a
	jr nz, .end	
	push de
	call CheckCannotUseDueToStatus_OnlyToxicGasIfANon0
	pop de
	jr c, .end
	ld de, RILLABOOM
	call CountPokemonIDInBothPlayAreas
	jr nc, .end
	farcall GetArenaCardColor
	cp GRASS
	jr nz, .end
	inc c
.end	
	ld a, c
	pop hl
	ret	
GetAttackCostPenalty:
	push hl
	ld c, 0
	ld a, e
	or a
	jr nz, .end
	ld a, DUELVARS_ARENA_CARD_SUBSTATUS2
	get_turn_duelist_var
	cp SUBSTATUS2_ATTACK_COST_PLUS_1
	jr nz, .end
	inc c
.end
	ld a, c
	pop hl
	ret
