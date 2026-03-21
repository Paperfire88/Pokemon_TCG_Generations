EffectCommands::
; Each attack has a two-byte effect pointer (attack's 7th param) that points to one of these structures.
; Similarly, trainer cards have a two-byte pointer (7th param) to one of these structures, which determines the card's function.
; Energy cards also point to one of these, but their data is just $00.
;	db EFFECTCMDTYPE_* ($01 - $0a)
;	dw Function
;	...
;	db $00

; Commands are associated to a time or a scope (EFFECTCMDTYPE_*) that determines when their function is executed during the turn.
; - EFFECTCMDTYPE_INITIAL_EFFECT_1: Executed right after attack or trainer card is used. Bypasses Smokescreen and Sand Attack effects.
; - EFFECTCMDTYPE_INITIAL_EFFECT_2: Executed right after attack, Pokemon Power, or trainer card is used.
; - EFFECTCMDTYPE_DISCARD_ENERGY: For attacks or trainer cards that require putting one or more attached energy cards into the discard pile.
; - EFFECTCMDTYPE_REQUIRE_SELECTION: For attacks, Pokemon Powers, or trainer cards requiring the user to select a card (from e.g. play area screen or card list).
; - EFFECTCMDTYPE_BEFORE_DAMAGE: Effect command of an attack executed prior to the damage step. For trainer card or Pokemon Power, usually the main effect.
; - EFFECTCMDTYPE_AFTER_DAMAGE: Effect command executed after the damage step.
; - EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN: For attacks that may result in the defending Pokemon being switched out. Called only for AI-executed attacks.
; - EFFECTCMDTYPE_PKMN_POWER_TRIGGER: Pokemon Power effects that trigger the moment the Pokemon card is played.
; - EFFECTCMDTYPE_AI: Used for AI scoring.
; - EFFECTCMDTYPE_AI_SELECTION: When AI is required to select a card

; Attacks that have an EFFECTCMDTYPE_REQUIRE_SELECTION also must have either an EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN or an
; EFFECTCMDTYPE_AI_SELECTION (for anything not involving switching the defending Pokemon), to handle selections involving the AI.

; Similar attack effects of different Pokemon cards all point to a different command list,
; even though in some cases their commands and function pointers match.

; Function name examples
;	PoisonEffect                     ; generic effect shared by multiple attacks.
;	Paralysis50PercentEffect         ;
;	DiscardtopCardsffect              ; unique effect from an attack known by multiple cards.
;	MetapodStiffenEffect             ;
;	AcidEffect                       ; unique effect from an attack known by a single card
;	FoulOdorEffect                   ;
;	SpitPoison_Poison50PercentEffect ; unique effect made of more than one command.
;	SpitPoison_AIEffect              ;

SpitPoisonEffectCommands: ; Inflicts Poison on the Defending PKMN.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00
ArbokTerrorStrikeEffectCommands: ; After doing damage, Flip a coin. If heads, Switch in 1 of your opponents Benched PKMN to the Active Spot.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TerrorStrike_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TerrorStrike_50PercentSelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, TerrorStrike_50PercentSelectSwitchPokemon
	db  $00 
Poison50PercentEffectCommands: ; Inflicts Poison on a Coin Flip. so 50/50.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00
VictreebelLureEffectCommands: ; After doing damage, Switch in 1 of your opponents Benched PKMN to the Active Spot.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttractEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00
Acid50PercentEffectCommands: ; Prevents the Defending PKMN to retreat on a Coin Flip. so 50/50.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AcidEffect
	db  $00
SteamRollerEffectCommands: ; Increases Attack Cost by 1 colorless more on a Coin Flip. so 50/50.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SteamRollerEffect
	db  $00	
Paralysis50PercentEffectCommands: ; Inflicts Paralysis on a Coin Flip. so 50/50.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00
FlappleFoulOdorEffectCommands: ; Inflicts Confusion on both Active PKMN.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FoulOdorEffect
	db  $00
ScytherSwordsDanceEffectCommands: ; Doubles Damage during the next turn.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SwordsDanceEffect
	db  $00
LeechLifeEffectCommands: ; Heal HP equal to the Damage Done.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LeechLifeEffect
	db  $00
BeedrillTwineedleEffectCommands: ; Flips 2 coins, for each deals 30 damage.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleKick30_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, Twineedle_AIEffect
	db  $00
ExeggcuteLeechSeedEffectCommands: ; If this attack inflicts damage, heal 10 HP.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExeggcuteLeechSeedEffect
	db  $00
KoffingFoulGasEffectCommands: ; Inflicts Poison and Confusion on a Coin Flip. so 50/50.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FoulGas_PoisonOrConfusionEffect
	dbw EFFECTCMDTYPE_AI, FoulGas_AIEffect
	db  $00
MetapodStiffenEffectCommands: ; If heads, prevent all damage done to user next turn and draw a card.
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StiffenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	db  $00
ExeggutorTeleportEffectCommands: ; After Attacking, swith this pkmn to the becnh (Optional.)
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TeleportBlast_BeforeDamageEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TeleportBlast_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00
ExeggutorBigEggsplosionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BigEggsplosion_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, BigEggsplosion_AIEffect
	db  $00
ToxicEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoublePoisonEffect
	dbw EFFECTCMDTYPE_AI, Toxic_AIEffect
	db  $00
NidoqueenBoyfriendsEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BoyfriendsEffect
	db  $00
NidoranMHornHazardEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HornHazard_NoDamage50PercentEffect
	dbw EFFECTCMDTYPE_AI, HornHazard_AIEffect
	db  $00
WhirlwindEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Whirlwind_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Whirlwind_SelectEffect
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, Whirlwind_SelectEffect
	db  $00
AbsorbEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00
SporeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
	db  $00
ChikoritaLeechSeedEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ChikoritaLeechSeedEffect
	db  $00
VenusaurEnergyTransEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyTrans_CheckPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyTrans_TransferEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyTrans_AIEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyTrans_PrintProcedure
	db  $00
ShiftGearEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ShiftGear_CheckPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ShiftGear_TransferEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyTrans_AIEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ShiftGear_PrintProcedure
	db  $00	
MinimizeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MinimizeEffect
	db  $00
MukToxicGasEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
VenusaurSolarPowerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SolarPower_CheckUse
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SolarPower_RemoveStatusEffect
	db  $00
OmastarWaterGunEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	db  $00
OmanyteClairvoyanceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
BlastoiseRainDanceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
BlastoiseHydroPumpEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HydroPumpEffect
	dbw EFFECTCMDTYPE_AI, HydroPumpEffect
	db  $00
VaporeonHydroPumpEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HydroPumpEffect2
	dbw EFFECTCMDTYPE_AI, HydroPumpEffect2
	db  $00
LiquidationEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DamageincreseretreatcostEffect
	dbw EFFECTCMDTYPE_AI, Low_AIEffect
	db  $00
FlailEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Flail_HPCheck
	dbw EFFECTCMDTYPE_AI, Flail_AIEffect
	db  $00
BUIZELHeadacheEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HeadacheEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal10DamageToSelfEffect
	db  $00
FurySwipesEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FurySwipes10_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes10_AIEffect
	db  $00
FLOATZELHyperBeamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HyperBeam_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00
KnockOffEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, KnockOffEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HyperBeam_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00	
SeadraWaterGunEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SeadraWaterGunEffect
	dbw EFFECTCMDTYPE_AI, SeadraWaterGunEffect
	db  $00
AgilityEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AgilityEffect
	db  $00
QuickAttackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuickAttack_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, QuickAttack_AIEffect
	db  $00
VaporeonWaterGunEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VaporeonWaterGunEffect
	dbw EFFECTCMDTYPE_AI, VaporeonWaterGunEffect
	db  $00
StarmieRecoverEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, StarmieRecover_CheckEnergyHP
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StarmieRecover_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StarmieRecover_HealEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, StarmieRecover_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
	db  $00
SmokescreenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	db  $00
AmnesiaEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Amnesia_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Amnesia_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Amnesia_DisableEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Amnesia_AISelectEffect
	db  $00
PoliwagWaterGunEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WaterGunEffect
	dbw EFFECTCMDTYPE_AI, WaterGunEffect
	db  $00
SuicuneBlizzardEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Blizzard_BenchDamage50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Blizzard_BenchDamageEffect
	db  $00
CryoBlizzardEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CryoBlizzardCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Blizzard_BenchDamageEffect
	db  $00
TentacoolCowardiceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Cowardice_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Cowardice_RemoveFromPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Cowardice_PlayerSelectEffect
	db  $00
SuicuneQuickfreezeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, Quickfreeze_Paralysis50PercentEffect
	db  $00
ArcanineTakeDownEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TakeDownEffect
	db  $00
ArcanineFlamesOfRageEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FlamesOfRage_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FlamesOfRage_AISelectEffect
	dbw EFFECTCMDTYPE_AI, FlamesOfRage_AIEffect
	db  $00
NinetalesFireBlastEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00
TepigEmberEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00
CharmeleonFlamethrowerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00
CharizardEnergyBurnEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
CharizardFireSpinEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergyx2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	db  $00
RageEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Rage_AIEffect
	db  $00
EnteiFiregiverEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Firegiver_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, Firegiver_AddToHandEffect
	db  $00
GengarCurseEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Curse_CheckDamageAndBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Curse_TransferDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Curse_PlayerSelectEffect
	db  $00
Sleep50PercentEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sleep50PercentEffect
	db  $00
GastlyEnergyConversionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyAbsorption_CheckDiscardPile
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyConversion_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyConversion_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyConversion_AISelectEffect
	db  $00
HypnoProphecyEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Prophecy_CheckDeck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Prophecy_ReorderDeckEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Prophecy_PlayerSelectEffect
	db  $00

RaltsProphecyEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Prophecy_CheckDeck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Prophecy_ReorderDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Prophecy_PlayerSelectEffect
	db  $00	

MrMimeInvisibleWallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MeditateEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Meditate_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Meditate_AIEffect
	db  $00

AlakazamDamageSwapEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DamageSwap_CheckDamage
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DamageSwap_SelectAndSwapEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DamageSwap_SwapEffect
	db  $00

Confusion50PercentEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Confusion50PercentEffect
	db  $00

MewPsywaveEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsywaveEffect
	db  $00

MewDevolutionBeamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DevolutionBeam_CheckPlayArea
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DevolutionBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionBeam_LoadAnimation
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DevolutionBeam_DevolveEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, DevolutionBeam_AISelectEffect
	db  $00

MewNeutralizingShieldEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
MewtwoPsychicEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Psychic_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Psychic_AIEffect
	db  $00

MewtwoAltLV60EnergyAbsorptionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyAbsorption_CheckDiscardPile
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyAbsorption_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyAbsorption_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyAbsorption_AISelectEffect
	db  $00

MalamarStrangeBehaviorEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StrangeBehavior_CheckDamage
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StrangeBehavior_SelectAndSwapEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StrangeBehavior_SwapEffect
	db  $00

SlowpokeScavengeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Scavenge_CheckDiscardPile
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Scavenge_PlayerSelectEnergyEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Scavenge_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Scavenge_PlayerSelectTrainerEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Scavenge_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Scavenge_AISelectEffect
	db  $00
GeodudeStoneBarrageEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StoneBarrage_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, StoneBarrage_AIEffect
	db  $00
OnixHardenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HardenEffect
	db  $00
MachampStrikesBackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
KabutoKabutoArmorEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
CuboneSnivelEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SnivelEffect
	db  $00
MarowakCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyFighting_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyFighting_AISelectEffect
	db  $00
GravelerHardenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HardenEffect
	db  $00
LeerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LeerEffect
	db  $00
PoisonWhipEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	;Falltrough
HitmonleeStretchKickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StretchKick_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StretchKick_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00
PerrserkerFurySwipesEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FurySwipes20_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00
IronTailEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IronTail_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00	
MetallicStrikesEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MetallicStrikesEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00	
SandacondaEarthquakeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EarthquakeEffect
	db  $00

AerodactylPrehistoricPowerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
MarowakBoneAttackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BoneAttackEffect
	db  $00

MarowakWailEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Wail_BenchCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Wail_FillBenchEffect
	db  $00
ElectabuzzThunderpunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Thunderpunch_ModifierEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Thunderpunch_RecoilEffect
	dbw EFFECTCMDTYPE_AI, Thunderpunch_AIEffect
	db  $00

CrystalStreamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CrystalStreamEffect
	db  $00

DoubleShockEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleShockEffect
	db  $00

PikachuThunderJoltEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ThunderJolt_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ThunderJolt_RecoilEffect
	db  $00

SparkEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Spark_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

GrowlEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrowlEffect
	db  $00
RaichuThunderEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Thunder_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Thunder_RecoilEffect
	db  $00

RaichuGigashockEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Gigashock_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Gigashock_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Gigashock_AISelectEffect
	db  $00
MagnetonSonicboomEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sonicboom_UnaffectedByColorEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00
IcicleCrashEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IcicleCrashEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, IcicleCrashEffect
	db  $00
RaikouPealOfThunderEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PealOfThunder_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, PealOfThunder_RandomlyDamageEffect
	db  $00
EnergyBoostEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyBoost_AttachEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyBoost_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyBoost_AISelectEffect
	db  $00
EeveeTailWagEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TailWagEffect
	db  $00
LugiaStepInEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StepIn_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StepIn_SwitchEffect
	db  $00
SnorlaxThickSkinnedEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00
NuzzleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	; falltrough
KangaskhanFetchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	db  $00
TaurosRampageEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rampage_Confusion50PercentEffect
	dbw EFFECTCMDTYPE_AI, Rampage_AIEffect
	db  $00
DoduoFuryAttackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FuryAttack_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FuryAttack_AIEffect
	db  $00

DodrioRetreatAidEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MeowthPayDayEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PayDayEffect
	db  $00

ClefableMetronomeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Metronome_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ClefableMetronome_UseAttackEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Metronome_AISelectEffect
	db  $00

PidgeotHurricaneEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HurricaneEffect
	db  $00

ClefairyMetronomeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Metronome_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ClefairyMetronome_UseAttackEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Metronome_AISelectEffect
	db  $00
ImpersonateEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ImpersonateEffect
	db  $00
WigglytuffDoTheWaveEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoTheWaveEffect
	dbw EFFECTCMDTYPE_AI, DoTheWaveEffect
	db  $00

JigglypuffDoubleEdgeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal20DamageToSelfEffect
	db  $00

PersianPounceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PounceEffect
	db  $00
RaticateSuperFangEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperFang_HalfHPEffect
	dbw EFFECTCMDTYPE_AI, SuperFang_AIEffect
	db  $00
TrainerCardAsPokemonEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, TrainerCardAsPokemon_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TrainerCardAsPokemon_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TrainerCardAsPokemon_PlayerSelectSwitch
	db  $00
LugiaHealingWindEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HealingWind_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, HealingWind_PlayAreaHealEffect
	db  $00
DittoMorphEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MorphEffect
	db  $00
PidgeotGaleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Gale_SwitchEffect
	db  $00
JigglypuffFriendshipSongEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Max_BenchCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FriendshipSong_AddToBench50PercentEffect
	db  $00
ExpandEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExpandEffect
	db  $00
SteelTackleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SteelTackleEffect
	db  $00	
DoubleColorlessEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
PsychicEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
FightingEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
LightningEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
WaterEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
FireEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
GrassEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00
DarknessEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00	
MetalEnergyEffectCommands:
	db BANK("Effect Functions")
	db  $00	

SuperPotionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperPotion_DamageEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SuperPotion_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperPotion_HealEffect
	db  $00

ImakuniEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ImakuniEffectCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ImakuniEffect
	db  $00

EnergyRemovalEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyRemoval_EnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRemoval_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CheckIfThereis3orMorePrizeCards
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyRemoval_AISelection
	db  $00

EnergyRetrievalEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyRetrieval_HandEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyRetrieval_DiscardAndAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyRetrieval_PlayerDiscardPileSelection
	db  $00

EnergySearchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergySearch_PlayerSelection
	db  $00
ProfessorOakEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ProfessorOakCheck
	db  $00

PotionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PlayArea_DamageCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Potion_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Potion_HealEffect
	db  $00

GamblerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GamblerEffect
	db  $00

ItemFinderEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ItemFinder_HandDiscardPileCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ItemFinder_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ItemFinder_DiscardAddToHandEffect
	db  $00

DefenderEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Defender_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Defender_AttachDefenderEffect
	db  $00

MysteriousFossilEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Max_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MysteriousFossil_PlaceInPlayAreaEffect
	db  $00

FullHealEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FullHeal_StatusCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FullHeal_ClearStatusEffect
	db  $00

ImposterProfessorOakEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ImposterProfessorOakEffect2
	db  $00

ComputerSearchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HandDeckOnceperDuelCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ComputerSearch_PlayerDiscardHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ComputerSearch_DiscardAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ComputerSearch_PlayerDeckSelection
	db  $00

ClefairyDollEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Max_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ClefairyDoll_PlaceInPlayAreaEffect
	db  $00

MrFujiEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, MrFuji_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MrFuji_ReturnToDeckEffect
	db  $00

PlusPowerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlusPowerEffect
	db  $00

SwitchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Switch_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Switch_SwitchEffect
	db  $00

PokemonCenterEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PlayArea_DamageCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonCenter_HealDiscardEnergyEffect
	db  $00

PokemonFluteEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokemonFlute_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PokemonFlute_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonFlute_PlaceInPlayAreaText
	db  $00

RareCandyEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, RareCandy_HandPlayAreaCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, RareCandy_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RareCandy_EvolveEffect
	db  $00

ScoopUpEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ScoopUp_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ScoopUp_ReturnToHandEffect
	db  $00

PokemonTraderEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HandDeckCheckfor2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PokemonTrader_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonTrader_TradeCardsEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokemonTrader_PlayerDeckSelection
	db  $00

PokedexEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokedex_OrderDeckCardsEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Pokedex_PlayerSelection
	db  $00

BillEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Draw3Effect
	db  $00

LassEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ThreeCardHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ComputerSearch_PlayerDiscardHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Lass2Effect
	db  $00
PokeBallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokeBall_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokeBall_PlayerSelection
	db  $00

RecycleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recycle_DiscardPileCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Recycle_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Recycle_PlayerSelection
	db  $00

ReviveEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Revive_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Revive_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Revive_PlaceInPlayAreaEffect
	db  $00

DevolutionSprayEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DevolutionSpray_PlayAreaEvolutionCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DevolutionSpray_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionSpray_DevolutionEffect
	db  $00

SuperEnergyRemovalEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyRemoval_EnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRemoval_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CheckIfThereis3orMorePrizeCards
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyRemoval_AISelection
	db  $00

SuperEnergyRetrievalEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperEnergyRetrieval_HandEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SuperEnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperEnergyRetrieval_DiscardAndAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SuperEnergyRetrieval_PlayerDiscardPileSelection
	db  $00

BossOrdersEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, BossOrders_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BossOrders_Switch50PercentEffect
	db  $00

GrassKnotEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrassKnot_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, GrassKnot_AIEffect
	db  $00

LowKickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Low_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Low_AIEffect
	db  $00

PunkRockEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PunkRock_PoisonOrConfusionEffect
	dbw EFFECTCMDTYPE_AI, PunkRock_AIEffect
	db  $00	

VibrationToxicEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ToxicVibration_PoisonOrSleepEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00	

SleepingPoisonEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepingPoisonEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00	

ChatoicNoiseEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChaoticNoise_ConfusionOrSleepEffect
	dbw EFFECTCMDTYPE_AI, PunkRock_AIEffect
	db  $00	

AquaStreamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AquaStream_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyConversion_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyConversion_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyConversion_AISelectEffect
	dbw EFFECTCMDTYPE_AI, AquaStream_AIEffect
	db  $00
LastRespectsEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LastRespects_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, LastRespects_AIEffect
	db  $00

HexEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HexEffect
	dbw EFFECTCMDTYPE_AI, HexAIEffect ; Define damage for AI here (20+30)
	db  $00

Do30moreIfDFPStatusedEffectCommands:
	db BANK("Effect Functions")	; 
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CriticalStrikeEffect
	dbw EFFECTCMDTYPE_AI, CriticalStrikeEffectAIEffect ; Define damage for AI here (20+30)
	db  $00

Mills3EffectCommands:
	db BANK("Effect Functions")			;When this poke enters the field, mill 5 from the opponent's deck. Unused. 
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, DredgeUpEffect.discard3
	db  $00

MillAtkOppCardsEffectCommands:
	db BANK("Effect Functions")	; If attack is successful, mill 3 from opp's deck.
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DiscardtopCardsffect
	db  $00

NoOppTrainersEffectCommands:
	db BANK("Effect Functions")		; Upon entering the field, Opp can't use trainers next turn.
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, HeadacheEffect
	db  $00	

LightningHasteEffectCommands:
	db BANK("Effect Functions")
  dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LightningHaste_OncePerTurnCheck
  dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LightningHaste_AttachEnergyEffect
  db  $00

ShinyFeatherEffectCommands:
	db BANK("Effect Functions")		; Enters the field to trigger the pokepower. Gets a trainer card from discard. Modified Itemfinder effect. Ai doesn't understand this?
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, ShinyFeatherEffect
	db  $00

DriveOffEffectCommands:
	db BANK("Effect Functions")
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LureAbility_AssertPokemonInBench
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DriveOff_BenchEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DriveOff_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
    db  $00
FanActionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SetUsedPokemonPowerThisTurn
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Whirlwind_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Whirlwind_SelectEffect
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, Whirlwind_SelectEffect
    db  $00	
SleepLureEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00	

BattleBlastEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BattleblastEffect
	dbw EFFECTCMDTYPE_AI, BattleblastEffect
	db  $00	

PoisonLureEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00	

PoisonHalfEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperFang_HalfHPEffect
	dbw EFFECTCMDTYPE_AI, SuperFang_AIEffect
	db  $00	
UltravisionEffectCommands:
	db BANK("Effect Functions")
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedCard_AddToHandFromDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Ultravision_PlayerSelectEffect
    dbw EFFECTCMDTYPE_AI_SELECTION, Ultravision_AISelectEffect
    db  $00
BugbuzzEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BugbuzzEffect
	dbw EFFECTCMDTYPE_AI, BugbuzzEffect
	db  $00	

BurstinginfernoEffectCommands:
	db BANK("Effect Functions")		; Modified Burstinginferno code. Discard any number of fire energy (min 1) then +20 per discard. 
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Burstinginferno_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Burstinginferno_DiscardDeckEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Burstinginferno_DiscardEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Burstinginferno_AISelectEffect
	dbw EFFECTCMDTYPE_AI, Burstinginferno_AIEffect
	db  $00	

PlasmaFistEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	db  $00

SmogScreenAttackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00	

SprintEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SprintEffect
	db  $00

Do10MorePerInjuredPokesEffectCommands:
	db BANK("Effect Functions")		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, adsEffect
	dbw EFFECTCMDTYPE_AI, asd_AIEffect
	db  $00

StaticOverloadEffectCommands:
	db BANK("Effect Functions")		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StaticOverloadEffect
	dbw EFFECTCMDTYPE_AI, StaticOverload_AIEffect
	db  $00

HundredFuriousLashesEffectCommands:
	db BANK("Effect Functions")		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LashesEffect
	dbw EFFECTCMDTYPE_AI, BigEggsplosion_AIEffect
	db  $00

DraconicEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Stage1Search_DeckCheck
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Stage1Search_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Stage1Search_AddToHandEffect
	db  $00

SharpshootingEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StretchKick_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

HazardousEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ParalysisEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

HydroDrainEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SeadraWaterGunEffect
	dbw EFFECTCMDTYPE_AI, SeadraWaterGunEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

CornerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TEsffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_AI, Toxic_AIEffect
	db  $00

IncreaseRetreatCostCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	db $00
ElectroWebEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ElectroWebEffect
	db $00	
EntrapCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EntrapEffect
	db $00

WrackdownCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OpportunistDamagedEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	db $00	

OctolockEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PreventPokePowers50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	db $00
CoordinatedShurikenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Gigashock_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Gigashock_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Gigashock_AISelectEffect
	db  $00

DowndrawCommnads:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Teleport_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BillEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Teleport_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00

MachPunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MachPunch_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, MachPunch_AIEffect
	db  $00

TeraSparkEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TeraSpark_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

TreasureRushNameEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TreasureRushName_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, TreasureRushName_AIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal20DamageToSelfEffect
	db  $00

SuctionHealCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LeechLifeEffect
	db $00

SnapEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, RandomSnipeEffect
	db  $00

Snap2EffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, CatPunchEffect
	db  $00	

ShuffleHandThenDraw4EffectCommands:
	db BANK("Effect Functions")		;Shuffles hand into deck, then draws 7.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DataRetrievalEffect
	db  $00

HealingWindEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HealingWind_PlayAreaHealEffect
	db  $00	

DragonRageEffectCommands:
	db BANK("Effect Functions")
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonRage_DamageBoostEffect
    dbw EFFECTCMDTYPE_AI, DragonRage_AIEffect
    db  $00	

EnergyCrushEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyCrushEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TeleportBlast_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	dbw EFFECTCMDTYPE_AI, Psychic_AIEffect
	db  $00

HuntingArrowEffectCommands:
	db BANK("Effect Functions")		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DamagedOp_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StretchKick_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	db  $00
TwineedleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TwineedleEffect
	dbw EFFECTCMDTYPE_AI, DoubleKick30_AIEffect
	db  $00

ApplefallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfFEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfFEnergiesAIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FoulOdorEffect
	db  $00	

SweetImpactEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfFEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfFEnergiesAIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExeggcuteLeechSeedEffect
	db  $00	

ViseBiteEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Low_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ViseBiteEffect
	dbw EFFECTCMDTYPE_AI, GrassKnot_AIEffect
	db  $00	

DustyPillarEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrassKnot_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DustyEffect
	dbw EFFECTCMDTYPE_AI, GrassKnot_AIEffect
	db  $00		

KabitopsEffectCommands:
	db BANK("Effect Functions")		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfLEnergiesEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LeechLifeEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfLEnergiesAIEffect
	db  $00	

RiotEffectCommands:
	db BANK("Effect Functions")		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfDEnergiesEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, RiotEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfGEnergiesAIEffect
	db  $00	

CinderCannonEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfFTEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExtraEffectIfTEnergieesEffect
	db  $00		

FlareUpEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlareUp_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, FlareUp_AIEffect
	db  $00	

MoreDamageifDFPInjuredEffectCommands:
	db BANK("Effect Functions")		;Does 20 less damage if the DFP already has damage counters on it. 
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LessDamageifDFPDamagedEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00	

OpportunistEffectCommands:
	db BANK("Effect Functions")		;
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OpportunistDamagedEffect
	db  $00		

CounterpunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Counterpunch_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Counterpunch_AIEffect
	db  $00	
RageFistEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RageFistEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, RageFistAfterDamageEffect
	dbw EFFECTCMDTYPE_AI, Counterpunch_AIEffect
	db  $00	
CrabhammerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CrabHammerEffect
	db  $00		
IcyWindEffectCommands:
	db BANK("Effect Functions")		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sleep50PercentEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfTEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	db  $00	

EntrapEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EntrapDamagedEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AcidEffect
	db  $00		

GiantBloomEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GaintBloomEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

UnableRetreatEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, UnableRetreatEffect
	db  $00
DarkForestEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DarkForestEffect
	db  $00	
BlockinEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, UnableRetreatEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BlockinEffect
	db  $00
StickandAbsorbEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, UnableRetreatEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StickandAbsorbEffect
	db  $00	

PsyShadowEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsyShadow_AttachEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PsyShadow_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyBoost_AISelectEffect
	db  $00 

GigaMagnetEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyBoost_AttachEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, GigaMagnet_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyBoost_AISelectEffect
	db  $00 

IceShardEffectCommands:
	db BANK("Effect Functions")	; 
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IceShardEffect
	dbw EFFECTCMDTYPE_AI, IceShardEffectAIEffect ; Define damage for AI here (20+30)
	db  $00	
JewelseekersEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokepower_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindPsychic
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindPsychic
	db  $00

GrassPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindGrass
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindGrass
	db  $00	

FirePkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindFire
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindFire
	db  $00	

WaterPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindWater
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindWater
	db  $00	

LightningPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindLightning
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindLightning
	db  $00	

FightingPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindFighting
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindFighting
	db  $00	

PsychicPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindPsychic
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindPsychic
	db  $00	

DarknessPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindDarkness
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindDarkness
	db  $00	

ColorlessPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindColorless
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindColorless
	db  $00	

EvolutionPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindEvolution
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindEvolution
	db  $00	

EvolutionPkmnSearchPokepowerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SprintHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, GenericReturnCardtoDeck_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokepower_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EvolutionaryLighEffect2
	db  $00	

ColorlessEvolutionPkmnSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_FarcallAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindColorlessEvolution
	db  $00	

PowerLariatEffectCommands:
	db BANK("Effect Functions")		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PowerLariatEffect
	dbw EFFECTCMDTYPE_AI, PowerLariat_AIEffect
	db  $00

EnergyBurstfectCommands:		;Does 10x per your and opponent's energy.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyBurst_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, EnergyBurst_AIEffect
	db  $00
FeintEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sonicboom_UnaffectedByColorEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE,	DrawACard_DamagedEffect
	db  $00
Exp_EvolutionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExplosiveEvolutionEffect2
	db  $00
RapidEvolutionEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Magikarp_EvolveEffect
	db  $00	
StompOffEffectCommands:
	db BANK("Effect Functions")	; If attack is successful, mill 3 from opp's deck.
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DiscardEachtop2ffect
	db  $00
DarkDestructionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DarkDestructionEffect
	dbw EFFECTCMDTYPE_AI, Rage_AIEffect
	db  $00
DragonVortexEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonVortex_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedDiscardPileCards_ShuffleIntoDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Riptide_PlayerSelectEffect
	db  $00
FistOfAntiquityEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonVortex_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedDiscardPileCards_ShuffleIntoOPPDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FistOfAntiquitySelectEffect
	db  $00
SoulDrainEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SoulDrain_HealEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedDiscardPileCards_ShuffleIntoOPPDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SoulDrainSelectEffect
	db  $00	
MagmaRecycleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MagmaRecycle_DrawEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedDiscardPileCards_ShuffleIntoOPPDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SoulDrainSelectEffect
	db  $00	
MetalSoundEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ConfusionEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MetalSoundEffect
	db  $00 

ScoutEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ScoutEffect
	dbw EFFECTCMDTYPE_AI, ScoutFool_AIEffect
	db  $00

Bounce1EnergyEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StarmieRecover_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BounceEnergy_BounceEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
	db  $00

ShareLootEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ShareLootEffect
	db $00

SharpenEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SharpenEffect
	db  $00

SuckerPunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuckerPunchEffect
	db  $00

LuckyFindEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LuckyFindEffectEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindTrainer
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindTrainer
	db  $00
SnackSearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SnackSearchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SnackSearchEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, AIFindTrainer
	db  $00
GrassCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, GrassCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, GrassCallForFamily_AISelectEffect2
	db  $00

FireCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FireCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, FireCallForFamily_AISelectEffect2
	db  $00

WaterCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, WaterCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, WaterCallForFamily_AISelectEffect2
	db  $00

LightningCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, LightningCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, LightningCallForFamily_AISelectEffect2
	db  $00

PsychicCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PsychicCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, PsychicCallForFamily_AISelectEffect2
	db  $00

DarknessCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DarknessCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, DarknessCallForFamily_AISelectEffect2
	db  $00

ColorlessCallforFriendEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ColorlessCallForFamily_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, ColorlessCallForFamily_AISelectEffect2
	db  $00

IronTackleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IronTackleEffect
	db  $00	

PoisonSporeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonSporeEffect
	db  $00

HelpfullSlashEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileGrass_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PlayerDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

LiveCoalEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileFire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

PlasmaEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileLightning_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LightningEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyAbsorption_AISelectEffect
	db  $00

VacuumEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPilefighting_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FightingEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyAbsorption_AISelectEffect
	db  $00

DreamyWishEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPilePsychic_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PsychihcEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

DarkChargeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileDarkness_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DarknessEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

EnergizeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileLightning_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergizeEffect1
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergizeEffect2
	db  $00
MendEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileMetal_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, MetalEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00
FirestarterEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireStarterCheck
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FireEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ElectroChargeSet
	db  $00

EmberYesNoEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EmberEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EmberB_AISelectEffect
	dbw EFFECTCMDTYPE_AI, EmberB_AIEffect 
	db  $00	

FlamethrowerYesNoEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlamethrowerEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	dbw EFFECTCMDTYPE_AI, FlamethrowerB_AIEffect 
	db  $00	

FireBlastYesNoEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FireBlastEffect
	db  $00	

XScissorEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, XScissorEffect
	dbw EFFECTCMDTYPE_AI, XScissor_AIEffect
	db  $00

CallBackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokemonFlute_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PokemonFlute_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CallBack_PlaceInPlayAreaEffect
	db  $00	

AbraConfusionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AbraConfusionEffect
	db  $00

SuperPsiEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperPsiEffect
	db  $00

PsychicZenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsychicZenEffect
	db  $00

VinePullEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VinePullEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

DreamMistEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Peek_OncePerTurnCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DreamMistEffect
	db  $00

JealousEyesEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, JealousEyesEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StretchKick_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

NinjaTornadoEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, NinjaTornadoCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TeleportBlast_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00

TradeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TradeEffect
	db  $00

PlusPowerSearchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NidoranFCallForFamily_PlayerSelectEffect
	db  $00
DefenderSearchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DefenderSearch_PlayerSelectEffect
	db  $00		
SonicboomEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SonicBoomEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

LinearAttackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Linear_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StretchKick_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00
IrritatingBuzzEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF ; passive pokemon power
	db  $00
DredgeUpEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DredgeUpEffect
	db  $00
RelicSearchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RelicSearchEffect
	db  $00	
StaticKickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StaticKickEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StaticKickCheckEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00
FlareCommandEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FlareCommand2
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlareCommand_AssertPokemonInBench
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
    db  $00
NitroDrawEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, NitroDrawEffect
    db  $00	
DeepSleepEffectCommands:
	db BANK("Effect Functions")        ; Used for Gengars Deep Sleep. This command is just flavor, Deep Sleep code is found in Duel -> Core.
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
    db  $00
SpookifyEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RiotEffect
    db  $00

DarkSlumberEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DarkSlumberEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00	

PoltergeistEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoltergeistEffect
	db  $00	
MonkeyBeatdownEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MonkeyBeatdownEffect
	db  $00	
GreenForceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GreenForceEffect
	db  $00

AstonishEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Return1RandomCardFromOpponentsHandEffect
	db  $00

SuperRodEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperRodCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SelectedDiscardPileCards_ShuffleIntoDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SuperRodSelectEffect
	db  $00

AquaticRescueEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recycle_DiscardPileCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SelectedDiscardPileCards_ShuffleIntoDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, RodEffect
	db  $00
FirePaybackEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FirePaybackEffect
	dbw EFFECTCMDTYPE_AI, FirePaybackAIEffect
	db  $00
SkyDropEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SkyDrop_DamageSubtractionEffect
	dbw EFFECTCMDTYPE_AI, SkyDropAIEffect
	db  $00
DevoFlashEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, DevoFlashSelect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionBeam_LoadAnimation
	dbw EFFECTCMDTYPE_AI_SELECTION, DevolutionBeam_AISelectEffect
	db  $00	
PsyReportEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ScoutEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PsyReportEffect
	db  $00
DarkerRingEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, DarkerRingEffect
	db  $00
MindReportEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, MindReportEffect
	db  $00

TimeStreamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DevolutionBeam_CheckPlayArea
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DevolutionBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionBeam_LoadAnimation
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TimeStreamEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, DevolutionBeam_AISelectEffect
	db  $00

EnergyRaidEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyRaidEffect
	db  $00

ZzzapEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ZzzapEffect
	db  $00

StrangeEvolutionPichuEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Pikachu_EvolveEffect
	db  $00

VoltTackleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VoltTackleEffect1
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VoltTackleCheck
	db  $00

CircleCircuitEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CircleCircuitEffect
	db  $00

VoidTentaclesEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VoidTentaclesEffect
	db  $00

PsychicFangsEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsychicFangsEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

SniffOutEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recycle_DiscardPileCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Scavenge_PlayerSelectTrainerEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Scavenge_AddToHandEffect
	db  $00
Add2EnergyFromDeckEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergySearch_PlayerSelection3
	db  $00

SaltWaterEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SaltWaterEffect
	db  $00

GreeningCellsEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, AbilityOnPlay_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, GreeningCellsEffect	
	db  $00

FreezingGazeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, SmokescreenEffect	
	db  $00

Add2WaterEnergyFromDeckEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FindIceEffect
	db  $00

JawLockEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, JawLockEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, UnableRetreatEffect
	db  $00

Add2FossilsFromDeckEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MysteriousFossil_PlayerSelection
	db  $00

CrunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, CrunchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CrunchEffectCheck
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

HyperBeam50EffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HyperBeam50Effect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

VolcanicClawEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergyx2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VolcanicClawEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	db  $00

LightningSparkEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LightningSparkEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

ChatterEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChatterEffect
	db  $00	

MimicEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, GamblerEffect.shuffle_cards_into_deck
	db  $00
MirrorDrawEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MirrorDrawEffect
	db  $00
GutBlowEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GutBlowEffect
	db  $00
SharpSickleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SharpSickleEffect
	db  $00	

StrangeEvolutionTyrogueEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Tyrogue_EvolveEffect
	db  $00

TripleKickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TripleKick_MultiplierEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TrippleKickEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00

SpecialPunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SpecialPunchEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

HighJumpKickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HighJumpKickEffect
	dbw EFFECTCMDTYPE_AI, Thunderpunch_AIEffect
	db  $00
GigavoltEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GigavoltEffect
	db  $00
DrawChainEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DrawChainEffect
	db  $00
MagnetismEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MagnetismEffect
	db  $00
MountainClashEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TotalRetreatCost_10xDamageEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Put1DamageCounterOnActivePKMN
	db  $00
BurnEffectEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurnEffect
	dbw EFFECTCMDTYPE_AI, InflictBurn_AIEffect
	db  $00

MayBurnEffectEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Burn50PercentEffect
	dbw EFFECTCMDTYPE_AI, InflictBurn_AIEffect
	db  $00

KindlingPanicEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, KindlingPanicEffect
	db $00

BurnLureEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurnEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db $00		

PunishingEmbersEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PunishingEmbersEffect
	db $00

SoulBurnerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SoulBurner_DamageBoostEffect
	db  $00

SearingFlameEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SearingFlameEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	dbw EFFECTCMDTYPE_AI, InflictBurn_AIEffect 
	db  $00	
FirePunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FirePunchEffect
	db  $00	
PoisonBoostEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonBoostEffect
	dbw EFFECTCMDTYPE_AI, PoisonBoostAIEffect
	db  $00
DastardlyJabEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DastardlyJabEffect
	db  $00	
AssassinsRoseEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AssassinsRoseEffect
	dbw EFFECTCMDTYPE_AI, PoisonBoostAIEffect
	db  $00
HauntEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutDamageCounter_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Haunt_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

PhantomPainEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PhantomPain_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Haunt_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

FightingFuryEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

ClangingEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ClangingScalesEffect
	db  $00

SunAbsorbEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SunAbsorbEffect
	db  $00

WoodHammerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TakeDownEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CycloneEffect
	db  $00

IgniteEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IgniteEffect
	db  $00
SilentFateEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IgniteEffect
	db  $00	
BurningVoiceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurnBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IgniteEffect
	dbw EFFECTCMDTYPE_AI, BurnBoostAIEffect
	db  $00	
StrangeEvolutionMagbyEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MAGMAR_EvolveEffect
	db  $00

EvolutionaryFlameEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, EvolutionaryFlameEffect
	db  $00

DestructiveFlameEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DestructiveFlameEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DestructiveFlameCheck
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

WaterDripEffectCommands:
	db BANK("Effect Functions")
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StarmieRecover_PlayerSelectEffect
  	dbw EFFECTCMDTYPE_AFTER_DAMAGE, WaterDripEffect
  	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  	db  $00

WaterDuplicateEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FrogadierAreEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SUBSTITUTE_DOLL_PlayerSelection
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TeleportBlast_SwitchEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00  

WaterSplashEffectCommands:
	db BANK("Effect Functions")
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WaterSplashEffect
  	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  	db  $00

AquaJetEffectCommands:
	db BANK("Effect Functions")
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StarmieRecover_PlayerSelectEffect
  	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AquaJetEffect
  	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  	db  $00  

PillarEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PillarEffect
	db  $00

CycloneEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CycloneEffect
	db  $00

AquaWindEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AquaWindEffect
	db  $00

BlessedWindsEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BlessedWindsEffect
	db  $00
WickedGustEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, WickedGustEffect
	db  $00
FrenzyTossEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SelfConfuseEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HurricaneEffect
	db  $00	
SwirlEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, SwirlEffect
	db  $00
MudslideEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Discard3cardsfromyourDeck
	db $00
DragonPulseEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Deal10moreifEvolvedEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DragonPulseEffect
	db $00
EnergyDrawEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckBasicEnergyInHand
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, AbilityAndDeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyDrawEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyDraw_PlayerHandSelection2
	db  $00
EnergyPresentEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AttachAnEnergytoABenchPKMN
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyDrawAnyEnergy_PlayerHandSelection
	db  $00
MagnetPulseEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckBasicEnergyInHand
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MagnetPulseEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyDraw_PlayerHandSelection
	db  $00
WaterCallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckBasicEnergyInHand
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WaterCallEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyDraw_PlayerHandSelection
	db  $00
MagneticBombEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyRaidEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbraConfusionEffect
	db  $00

GatherEnergyEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, GatherEnergyEffect
	db  $00

StrangeEvolutionElekidEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Elekid_EvolveEffect
	db  $00
StrangeEvolutionMunchlaxEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Munchlax_EvolveEffect
	db  $00
StrangeEvolutionBudewEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Budew_EvolveEffect
	db  $00		
ZapCannonEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SelectUpto3AtachedEn_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Upto3_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, SelectUpto3AtachedEn_AISelectEffect
	db  $00

DischargeYesNoEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Lightning_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DischargeEffect
	db  $00	

BurningPoisonEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BurningPoisonEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00

DerisiveRoastingEffectCommands:
	db BANK("Effect Functions")		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DerisiveRoastingEffect
	dbw EFFECTCMDTYPE_AI, DerisiveRoasting_AIEffect
	db  $00

MeteorMashEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MeteorMashEffect
	dbw EFFECTCMDTYPE_AI, MeteorMashEffect
	db  $00	

MountainEaterEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MountainEaterEffect
	db $00
SandCrushEffectCommands:
	db BANK("Effect Functions")		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SandCrushEffect
	db  $00
AdamantinePressEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AdamantinePressEffect
	db  $00

MaliceTentacleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MaliceTentacleEffect
	db  $00

HorrorChantEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HorrorChantCheckandSelection
	db  $00

SmackDownEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmackDownEffect
	db  $00	

MegatonHammerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MegatonHammerEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal20DamageToSelfEffect
	db  $00	

DisruptiveSignalEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DisruptiveSignalEffect
	db $00

BrainShakeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DisruptiveSignalEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ConfusionEffect
	db $00

SatelliteBeamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SatelliteBeam_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, SatelliteBeam_AIEffect
	db  $00

MoonblastEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MoonBlastEffect
	db  $00

SleepDrainEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IfAsleepPlus20Damage
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IfAsleepDrain
	db $00
FairyPollenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FairyPollenEffect
	db  $00
FlockPeckEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FlockPeckEffect
	db  $00
ResentFulWingsEffectCommands:
	db BANK("Effect Functions")		;
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ResentFulWingsEffect
	db  $00	
NightSyndicateEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Sprint_Check
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, CheckPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PutInPlayAreaAndDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NightSyndicateEffect
	db  $00
SummonDirectiveEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, CheckPlayArea
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, SummonDirectiveEffect
	db  $00	
BlackwingVengeanceEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BlackwingVengeance_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, BlackwingVengeance_AIEffect
	db  $00
TailRevengeEffectCommands:
	db BANK("Effect Functions");TODO
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SetDefiniteDamageTo0
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TailRevenge_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, BlackwingVengeance_AIEffect
	db  $00
ChemicalScaleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChemicalScaleEffect
	db $00
DragonsVenomEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonsVenom50PercentEffect
	db  $00
SpiritBreakEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SpiritBreakEffect
	db $00
DarkOathEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, jkEffect
	db  $00

PoisonRingEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, UnableRetreatEffect
	db $00

MuddyHammerEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MuddyHammerEffect
	db $00	

DarkPulseEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TotalDarkEnergy_10xDamageEffect
	db  $00
MercilessEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MercilessEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00	
LeafArrowEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FetchEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ArrowEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00	
DarkVoidEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IfAsleppHalfHP
	db  $00
LunarDreamsEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IfAsleppHealHP
	db  $00
TDCommandEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TDCommandEffect
	dbw EFFECTCMDTYPE_AI, TDCommandAIEffect
	db  $00
ZCommandEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ZCommand_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, ZCommand_AIEffect
	db  $00
QuickBallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandDeckCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Find0RetreatCost_PlayerSelection
	db  $00	
HeavyBallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandDeckCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Find3orMoreRetreatCost_PlayerSelection
	db  $00		
PetalSpikeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PetalSpikeEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00		
FirstImpresionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FirstImpresionEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FirstImpresionEffect2
	db  $00		
JetAssaultEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FirstImpresionEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, JetAssaultEffect
	db  $00	
AxeKickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AxeKickEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AxeKickDrawEffect
	db  $00		
SuperSpeedEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperSpeedEffect
	db  $00			
FlipTurnEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FlipTurn_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00	
CryoMouthEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Discard2Effect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, CryoMouthEffect
	db  $00		
WaveCrashEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WaveCrashEffect
	db $00	
SaltCureEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SaltCureEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Heal20Effect
	db  $00	
HeavySlamEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HeavySlamEffect
	dbw EFFECTCMDTYPE_AI, HeavySlamAIEffect
	db  $00	
HalloweenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Conversion1_WeaknessCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HalloweenEffect
	db  $00	
DragonLauncherEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MrFuji_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonLauncherEffect
	db  $00		
PumpkinTrickEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PumpkinEffect
	db  $00		
Damage10xEachEnergyInBothPlayAreas:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AllEnergyInBothPlayAreas_10xDamageEffect
	dbw EFFECTCMDTYPE_AI, AllEnergyInBothPlayAreas_10xDamageEffect
	db  $00	
PsychicLockEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsychicLockEffect
	db  $00	
LifeDrainEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LifeDrain50PerentEffect
	dbw EFFECTCMDTYPE_AI, LifeDrain_AIEffect
	db  $00	
EruptionEffectCommands:
	db BANK("Effect Functions")	; Dicards the top card of each deck and checks for an Energy, for each one that you find adds +30 damage.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EruptionEffect2
	db  $00
MiracleOracleEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SprintHandCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MatterExchange_DiscardAndDrawEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MatterExchange_PlayerSelectEffect
	db  $00
BurningFireEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurningFire_DiscardAndMultiplierEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, BurningFire_PlayerSelectEffect
	db $00		
MagneticLinesEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MagneticLines_TransferEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MagneticLines_PlayerSelectEffect
	db $00
StanceChangeShieldEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, AbilityAndDeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rebirth_DiscardAndAddEffect
	db $00	
StanceChangeBladeEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, AbilityAndDeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rebirth_DiscardAndAddEffect2
	db $00
KingsBladeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, KingsBladeEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sonicboom_UnaffectedByColorEffect
	db $00
ShadowSneakEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ShadowSneakEffect
	db $00
MagmaPunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Add10moreIfyourActiveisAnEvolvedPKMNEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Burn50PercentEffect
	db $00
FlameBazookaEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SetDefiniteDamageTo0
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlameBazookaEffect
	db $00	
ProtectChargeEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Reduce20Damage50percentEffect
	db $00
PlasmaPunchEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Add10moreIfyourActiveisAnEvolvedPKMNEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db $00
PhantomIllusionEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Phantom_Illusion_EvolveEffect2
	db  $00	
GreatBallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, GreatBall_PlayerSelectEffect
	db  $00	
PremierBallEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PremierBall_PlayerSelectEffect
	db  $00		
RoseannesResearchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, RoseannesResearchEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Research_PlayerSelection
	db $00
PokemonCollectorEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokemonCollectorResearchEffect
	db $00
AcroBikeEffectCommands:
	db BANK("Effect Functions")
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AcroBike_AddToHandFromDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, AcroBike_PlayerSelectEffect
    dbw EFFECTCMDTYPE_AI_SELECTION, Ultravision_AISelectEffect
    db  $00
ProfessorElmLectureEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Elm_DeckAndDiscardPileCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FossilExcavation_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Elm_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Elm_AISelectEffect
	db $00
FossilResearcherEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FossilResearch_PlayerSelection
	db $00
ProfessorBirchEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ProfessorBirchEffect
	db $00
ZinniaEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Zinnia_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ZinniaEffect
	db $00
ItchyPollenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ItchyPollenEffect
	db  $00
BigAppetiteEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, AbilityPKMNIsYourActivePKMN2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BigAppetiteEffect
	db  $00
StormBoltEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyBomb_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TransferEnergyEnergyBombEffectCheck
	db $00
ShortCircuitEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ShortCircuit_DamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ShortCircuit_PlayerSelectEffect
	db $00
ChargeEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FindLightningEffect
	db $00
StrangePollenEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StrangePollenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Heal20Effect
	db  $00
AllYouCanGrabEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AllYouCanGrabEffect
	db  $00
ChipOffEffectCommands:
	db BANK("Effect Functions")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChipOffBeforeDamageEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ChipOffAfterDamageEffect
	db  $00
TenguStrikeEffectCommands:
	db BANK("Effect Functions 2")
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TenguStrikeEffect
	db  $00