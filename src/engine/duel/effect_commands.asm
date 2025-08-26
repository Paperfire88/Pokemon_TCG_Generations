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

SpitPoisonEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	db  $00

EkansWrapEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

ArbokTerrorStrikeEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TerrorStrike_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TerrorStrike_50PercentSelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, TerrorStrike_50PercentSelectSwitchPokemon
	db  $00

ArbokPoisonFangEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00

Poison50PercentEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

VictreebelLureEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttractEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

VictreebelAcidEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AcidEffect
	db  $00

PinsirIronGripEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

CaterpieStringShotEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

FlapplePoisonPowderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00

FlappleFoulOdorEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FoulOdorEffect
	db  $00

KakunaPoisonPowderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

VenonatStunSporeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

ScytherSwordsDanceEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SwordsDanceEffect
	db  $00

SupersonicEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SupersonicEffect
	db  $00

LeechLifeEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LeechLifeEffect
	db  $00

BeedrillTwineedleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleKick30_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, Twineedle_AIEffect
	db  $00

BeedrillPoisonStingEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00
ExeggcuteLeechSeedEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExeggcuteLeechSeedEffect
	db  $00
KoffingFoulGasEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FoulGas_PoisonOrConfusionEffect
	dbw EFFECTCMDTYPE_AI, FoulGas_AIEffect
	db  $00
MetapodStiffenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StiffenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	db  $00
MetapodStunSporeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00
ApplinStunSporeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00
ExeggutorTeleportEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Teleport_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00

ExeggutorBigEggsplosionEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BigEggsplosion_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, BigEggsplosion_AIEffect
	db  $00

VolbeatToxicEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Toxic_DoublePoisonEffect
	dbw EFFECTCMDTYPE_AI, Toxic_AIEffect
	db  $00

NidoqueenBoyfriendsEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BoyfriendsEffect
	db  $00

NidoranFCallForFamilyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NidoranFCallForFamily_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, NidoranFCallForFamily_AISelectEffect
	db  $00

NidoranMHornHazardEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HornHazard_NoDamage50PercentEffect
	dbw EFFECTCMDTYPE_AI, HornHazard_AIEffect
	db  $00

ButterfreeWhirlwindEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Whirlwind_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Whirlwind_SelectEffect
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, Whirlwind_SelectEffect
	db  $00

AbsorbEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

SporeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
	db  $00
WeedlePoisonStingEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

IvysaurPoisonPowderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

ChikoritaLeechSeedEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ChikoritaLeechSeedEffect
	db  $00

VenusaurEnergyTransEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyTrans_CheckPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyTrans_TransferEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyTrans_AIEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyTrans_PrintProcedure
	db  $00


GrimerNastyGooEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

MinimizeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MinimizeEffect
	db  $00

MukToxicGasEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MukSludgeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

WeezingSmogEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

YANMEGAVenomPowderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VenomPowder_PoisonConfusion50PercentEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00

TangelaBindEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

TangelaPoisonPowderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00

AppletunHealEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Heal_OncePerTurnCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Heal_RemoveDamageEffect
	db  $00

AppletunPetalDanceEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PetalDance_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, PetalDance_AIEffect
	db  $00

TangelaStunSporeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

TangelaPoisonWhipEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00

VenusaurSolarPowerEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SolarPower_CheckUse
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SolarPower_RemoveStatusEffect
	db  $00

OmastarWaterGunEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	db  $00

OmanyteClairvoyanceEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

WithdrawEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WithdrawEffect
	db  $00

BlastoiseRainDanceEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

BlastoiseHydroPumpEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HydroPumpEffect
	dbw EFFECTCMDTYPE_AI, HydroPumpEffect
	db  $00


VaporeonHydroPumpEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HydroPumpEffect2
	dbw EFFECTCMDTYPE_AI, HydroPumpEffect2
	db  $00

GyaradosBubblebeamEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DamageincreseretreatcostEffect
	dbw EFFECTCMDTYPE_AI, Low_AIEffect
	db  $00

FlailEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Flail_HPCheck
	dbw EFFECTCMDTYPE_AI, Flail_AIEffect
	db  $00

BUIZELHeadacheEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HeadacheEffect
	db  $00

FurySwipesEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FurySwipes10_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes10_AIEffect
	db  $00

FLOATZELPsyshockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

FLOATZELHyperBeamEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HyperBeam_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

SeadraWaterGunEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SeadraWaterGunEffect
	dbw EFFECTCMDTYPE_AI, SeadraWaterGunEffect
	db  $00

AgilityEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AgilityEffect
	db  $00

ShellderHideInShellEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HideInShellEffect
	db  $00

QuickAttackEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, QuickAttack_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, QuickAttack_AIEffect
	db  $00

VaporeonWaterGunEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VaporeonWaterGunEffect
	dbw EFFECTCMDTYPE_AI, VaporeonWaterGunEffect
	db  $00

DewgongIceBeamEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

StarmieRecoverEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, StarmieRecover_CheckEnergyHP
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StarmieRecover_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StarmieRecover_HealEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, StarmieRecover_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
	db  $00

StarmieStarFreezeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

FroakieBubbleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

HorseaSmokescreenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	db  $00

TentacruelJellyfishStingEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00

AmnesiaEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Amnesia_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Amnesia_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Amnesia_DisableEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Amnesia_AISelectEffect
	db  $00

PoliwhirlDoubleslapEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleKick30_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, PoliwhirlDoubleslap_AIEffect
	db  $00

PoliwagWaterGunEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WaterGunEffect
	dbw EFFECTCMDTYPE_AI, WaterGunEffect
	db  $00

SuicuneFreezeDryEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

SuicuneBlizzardEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Blizzard_BenchDamage50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Blizzard_BenchDamageEffect
	db  $00

TentacoolCowardiceEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Cowardice_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Cowardice_RemoveFromPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Cowardice_PlayerSelectEffect
	db  $00

ChewtleConfuseRayEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Confusion50PercentEffect
	db  $00

SuicuneQuickfreezeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, Quickfreeze_Paralysis50PercentEffect
	db  $00

SuicuneIceBreathEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IceBreath_ZeroDamage
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IceBreath_RandomPokemonDamageEffect
	db  $00

VaporeonFocusEnergyEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FocusEnergyEffect
	db  $00

ArcanineTakeDownEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TakeDownEffect
	db  $00

ArcanineFlamesOfRageEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FlamesOfRage_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FlamesOfRage_AISelectEffect
	dbw EFFECTCMDTYPE_AI, FlamesOfRage_AIEffect
	db  $00

NinetalesLureEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, UnableRetreatIfDEnergiesEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NinetalesLure_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

NinetalesFireBlastEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00

TepigEmberEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00

EnteiWildfireEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Wildfire_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Wildfire_DiscardDeckEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Wildfire_DiscardEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Wildfire_AISelectEffect
	db  $00

MagmarSmokescreenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	db  $00

MagmarSmogEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

CharmeleonFlamethrowerEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00

CharizardEnergyBurnEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

CharizardFireSpinEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergyx2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	db  $00

VulpixConfuseRayEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Confusion50PercentEffect
	db  $00

RageEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Rage_AIEffect
	db  $00

EnteiFiregiverEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Firegiver_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, Firegiver_AddToHandEffect
	db  $00

AbraPsyshockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

GengarCurseEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Curse_CheckDamageAndBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Curse_TransferDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Curse_PlayerSelectEffect
	db  $00

GengarDarkMindEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DarkMind_DamageBenchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DarkMind_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

GastlySleepingGasEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepingGasEffect
	db  $00

GastlyLickEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

GastlyEnergyConversionEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyAbsorption_CheckDiscardPile
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyConversion_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyConversion_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyConversion_AISelectEffect
	db  $00

ntnterDreamEaterEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DreamEaterEffect
	db  $00

HaunterTransparencyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

HypnoProphecyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Prophecy_CheckDeck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Prophecy_ReorderDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Prophecy_PlayerSelectEffect
	db  $00

RaltsProphecyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Prophecy_CheckDeck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Prophecy_ReorderDeckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Prophecy_PlayerSelectEffect
	db  $00	

DrowzeeConfuseRayEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Confusion50PercentEffect
	db  $00

MrMimeInvisibleWallEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MeditateEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Meditate_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Meditate_AIEffect
	db  $00

AlakazamDamageSwapEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DamageSwap_CheckDamage
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DamageSwap_SelectAndSwapEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DamageSwap_SwapEffect
	db  $00

AlakazamConfuseRayEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Confusion50PercentEffect
	db  $00

MewPsywaveEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsywaveEffect
	db  $00

MewDevolutionBeamEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DevolutionBeam_CheckPlayArea
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DevolutionBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionBeam_LoadAnimation
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DevolutionBeam_DevolveEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, DevolutionBeam_AISelectEffect
	db  $00

MewNeutralizingShieldEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MewPsyshockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

MewtwoPsychicEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Psychic_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Psychic_AIEffect
	db  $00

MewtwoAltLV60EnergyAbsorptionEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyAbsorption_CheckDiscardPile
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyAbsorption_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyAbsorption_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyAbsorption_AISelectEffect
	db  $00

MalamarStrangeBehaviorEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StrangeBehavior_CheckDamage
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StrangeBehavior_SelectAndSwapEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StrangeBehavior_SwapEffect
	db  $00

MalamarPsyshockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

SlowpokeSpacingOutEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SpacingOut_CheckDamage
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SpacingOut_Success50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SpacingOut_HealEffect
	db  $00

SlowpokeScavengeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Scavenge_CheckDiscardPile
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Scavenge_PlayerSelectEnergyEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Scavenge_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Scavenge_PlayerSelectTrainerEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Scavenge_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Scavenge_AISelectEffect
	db  $00

JynxDoubleslapEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, JynxDoubleslap_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, JynxDoubleslap_AIEffect
	db  $00

GeodudeStoneBarrageEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StoneBarrage_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, StoneBarrage_AIEffect
	db  $00

OnixHardenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HardenEffect
	db  $00

PrimeapeFurySwipesEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FurySwipes20_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00

PrimeapeTantrumEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TantrumEffect
	db  $00

MachampStrikesBackEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

KabutoKabutoArmorEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

KabutopsAbsorbEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

CuboneSnivelEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SnivelEffect
	db  $00

MarowakCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyFighting_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyFighting_AISelectEffect
	db  $00

MachokeKarateChopEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, KarateChop_DamageSubtractionEffect
	dbw EFFECTCMDTYPE_AI, KarateChop_AIEffect
	db  $00

MachokeSubmissionEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal10DamageToSelfEffect
	db  $00

GravelerHardenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HardenEffect
	db  $00

RhydonRamEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Ram_RecoilSwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Ram_SelectSwitchEffect
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, Ram_SelectSwitchEffect
	db  $00

RhyhornLeerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LeerEffect
	db  $00

HitmonleeStretchKickEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StretchKick_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StretchKick_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

MeowthSandAttackEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	db  $00

PerrserkerFurySwipesEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FurySwipes20_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00

SandacondaEarthquakeEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EarthquakeEffect
	db  $00

AerodactylPrehistoricPowerEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MankeyPeekEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Peek_OncePerTurnCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Peek_SelectEffect
	db  $00

MarowakBoneAttackEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BoneAttackEffect
	db  $00

MarowakWailEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Wail_BenchCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Wail_FillBenchEffect
	db  $00

ElectabuzzThundershockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

ElectabuzzThunderpunchEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Thunderpunch_ModifierEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Thunderpunch_RecoilEffect
	dbw EFFECTCMDTYPE_AI, Thunderpunch_AIEffect
	db  $00

CrystalStreamEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CrystalStreamEffect
	db  $00

DoubleShockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoubleShockEffect
	db  $00

RaikouThunderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Thunder_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Thunder_RecoilEffect
	db  $00

RaikouThunderboltEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ThunderboltEffect
	db  $00

RaikouThunderstormEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ThunderstormEffect
	db  $00

JolteonPinMissileEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PinMissile_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, PinMissile_AIEffect
	db  $00

PikachuThunderJoltEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ThunderJolt_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ThunderJolt_RecoilEffect
	db  $00

PikachuSparkEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Spark_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

GrowlEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrowlEffect
	db  $00
PikachuLv16ThundershockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00
PikachuAltLv16ThundershockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

RaichuThunderEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Thunder_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Thunder_RecoilEffect
	db  $00

RaichuGigashockEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Gigashock_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Gigashock_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Gigashock_AISelectEffect
	db  $00

MagnetonThunderWaveEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

MagnetonSonicboomEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sonicboom_UnaffectedByColorEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

RaikouPealOfThunderEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PealOfThunder_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, PealOfThunder_RandomlyDamageEffect
	db  $00

RaikouBigThunderEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BigThunderEffect
	db  $00

MagnemiteMagneticStormEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MagneticStormEffect
	db  $00

ToxtricitySonicboomEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sonicboom_UnaffectedByColorEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

EnergyBoostEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyBoost_AttachEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyBoost_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyBoost_AISelectEffect
	db  $00

JolteonStunNeedleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

EeveeTailWagEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TailWagEffect
	db  $00

LugiaStepInEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StepIn_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StepIn_SwitchEffect
	db  $00

SnorlaxThickSkinnedEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

SnorlaxBodySlamEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

KangaskhanFetchEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	db  $00

TaurosRampageEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rampage_Confusion50PercentEffect
	dbw EFFECTCMDTYPE_AI, Rampage_AIEffect
	db  $00

DoduoFuryAttackEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FuryAttack_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, FuryAttack_AIEffect
	db  $00

DodrioRetreatAidEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

MeowthPayDayEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PayDayEffect
	db  $00

ClefableMetronomeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Metronome_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ClefableMetronome_UseAttackEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Metronome_AISelectEffect
	db  $00

PidgeotHurricaneEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HurricaneEffect
	db  $00

ClefairyMetronomeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Metronome_CheckAttacks
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ClefairyMetronome_UseAttackEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Metronome_AISelectEffect
	db  $00

WigglytuffDoTheWaveEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DoTheWaveEffect
	dbw EFFECTCMDTYPE_AI, DoTheWaveEffect
	db  $00

JigglypuffDoubleEdgeEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal20DamageToSelfEffect
	db  $00

PersianPounceEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PounceEffect
	db  $00

LickitungTongueWrapEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	db  $00

ROOKIDEEWhirlwindEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Whirlwind_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Whirlwind_SelectEffect
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, Whirlwind_SelectEffect
	db  $00

PorygonConversion1EffectCommands:
	db  $00

PorygonConversion2EffectCommands:
	db  $00

RayquazaDoubleEdgeEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, RayquazaDoubleEdgeEffect
	db  $00

RaticateSuperFangEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperFang_HalfHPEffect
	dbw EFFECTCMDTYPE_AI, SuperFang_AIEffect
	db  $00

TrainerCardAsPokemonEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, TrainerCardAsPokemon_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TrainerCardAsPokemon_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TrainerCardAsPokemon_PlayerSelectSwitch
	db  $00
LugiaHealingWindEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HealingWind_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, HealingWind_PlayAreaHealEffect
	db  $00
MeowthCatPunchEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, CatPunchEffect
	db  $00
DittoMorphEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MorphEffect
	db  $00
PidgeotGaleEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Gale_SwitchEffect
	db  $00
JigglypuffFriendshipSongEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Max_BenchCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FriendshipSong_AddToBench50PercentEffect
	db  $00
JigglypuffExpandEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExpandEffect
	db  $00
DoubleColorlessEnergyEffectCommands:
	db  $00
PsychicEnergyEffectCommands:
	db  $00
FightingEnergyEffectCommands:
	db  $00
LightningEnergyEffectCommands:
	db  $00
WaterEnergyEffectCommands:
	db  $00
FireEnergyEffectCommands:
	db  $00
GrassEnergyEffectCommands:
	db  $00
DarknessEnergyEffectCommands:
	db  $00	
MetalEnergyEffectCommands:
	db  $00	

SuperPotionEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperPotion_DamageEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SuperPotion_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperPotion_HealEffect
	db  $00

ImakuniEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ImakuniEffectCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ImakuniEffect
	db  $00

EnergyRemovalEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyRemoval_EnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRemoval_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CheckIfThereis3orMorePrizeCards
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyRemoval_AISelection
	db  $00

EnergyRetrievalEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyRetrieval_HandEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyRetrieval_DiscardAndAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyRetrieval_PlayerDiscardPileSelection
	db  $00

EnergySearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergySearch_PlayerSelection
	db  $00

TrainerSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TrainerSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, TrainerSearch_AISelection
	db  $00

ProfessorOakEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ProfessorOakCheck
	db  $00

PotionEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PlayArea_DamageCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Potion_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Potion_HealEffect
	db  $00

GamblerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GamblerEffect
	db  $00

ItemFinderEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ItemFinder_HandDiscardPileCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ItemFinder_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ItemFinder_DiscardAddToHandEffect
	db  $00

DefenderEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Defender_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Defender_AttachDefenderEffect
	db  $00

MysteriousFossilEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Max_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MysteriousFossil_PlaceInPlayAreaEffect
	db  $00

FullHealEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FullHeal_StatusCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FullHeal_ClearStatusEffect
	db  $00

ImposterProfessorOakEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ImposterProfessorOakEffect2
	db  $00

ComputerSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HandDeckOnceperDuelCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ComputerSearch_PlayerDiscardHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ComputerSearch_DiscardAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ComputerSearch_PlayerDeckSelection
	db  $00

ClefairyDollEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Max_BenchCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ClefairyDoll_PlaceInPlayAreaEffect
	db  $00

MrFujiEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, MrFuji_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MrFuji_ReturnToDeckEffect
	db  $00

PlusPowerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PlusPowerEffect
	db  $00

SwitchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Switch_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Switch_SwitchEffect
	db  $00

PokemonCenterEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PlayArea_DamageCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonCenter_HealDiscardEnergyEffect
	db  $00

PokemonFluteEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokemonFlute_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PokemonFlute_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonFlute_PlaceInPlayAreaText
	dbw EFFECTCMDTYPE_AI_SELECTION, PokemonFlute_PlayerSelection
	db  $00

RareCandyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, RareCandy_HandPlayAreaCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, RareCandy_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RareCandy_EvolveEffect
	db  $00

ScoopUpEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ScoopUp_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ScoopUp_ReturnToHandEffect
	db  $00

PokemonTraderEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, HandDeckCheckfor2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PokemonTrader_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokemonTrader_TradeCardsEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokemonTrader_PlayerDeckSelection
	db  $00

PokedexEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokedex_OrderDeckCardsEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Pokedex_PlayerSelection
	db  $00

BillEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BillEffect
	db  $00

LassEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, ThreeCardHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, ComputerSearch_PlayerDiscardHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Lass2Effect
	db  $00

MaintenanceEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Maintenance_HandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Maintenance_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Maintenance_ReturnToDeckAndDrawEffect
	db  $00

PokeBallEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PokeBall_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PokeBall_PlayerSelection
	db  $00

RecycleEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recycle_DiscardPileCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Recycle_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Recycle_PlayerSelection
	db  $00

ReviveEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Revive_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Revive_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Revive_PlaceInPlayAreaEffect
	db  $00

DevolutionSprayEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DevolutionSpray_PlayAreaEvolutionCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DevolutionSpray_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionSpray_DevolutionEffect
	db  $00

SuperEnergyRemovalEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, EnergyRemoval_EnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRemoval_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CheckIfThereis3orMorePrizeCards
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyRemoval_AISelection
	db  $00

SuperEnergyRetrievalEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperEnergyRetrieval_HandEnergyCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SuperEnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperEnergyRetrieval_DiscardAndAddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SuperEnergyRetrieval_PlayerDiscardPileSelection
	db  $00

BossOrdersEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, BossOrders_PlayerSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BossOrders_Switch50PercentEffect
	db  $00

GrassKnotEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrassKnot_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, GrassKnot_AIEffect
	db  $00

LowKickEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Low_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Low_AIEffect
	db  $00

PunkRockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PunkRock_PoisonOrConfusionEffect
	dbw EFFECTCMDTYPE_AI, PunkRock_AIEffect
	db  $00	

VibrationToxicEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ToxicVibration_PoisonOrSleepEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00	

SleepingPoisonEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepingPoisonEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00	

ChatoicNoiseEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChaoticNoise_ConfusionOrSleepEffect
	dbw EFFECTCMDTYPE_AI, PunkRock_AIEffect
	db  $00	

AquaStreamEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AquaStream_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergyConversion_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyConversion_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyConversion_AISelectEffect
	dbw EFFECTCMDTYPE_AI, AquaStream_AIEffect
	db  $00

NuzzleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	db  $00

LockonEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AcidEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FetchEffect
	db  $00	

LastRespectsEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LastRespects_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, LastRespects_AIEffect
	db  $00

HexEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HexEffect
	dbw EFFECTCMDTYPE_AI, HexAIEffect ; Define damage for AI here (20+30)
	db  $00

Do30moreIfDFPStatusedEffectCommands:	; 
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CriticalStrikeEffect
	dbw EFFECTCMDTYPE_AI, CriticalStrikeEffectAIEffect ; Define damage for AI here (20+30)
	db  $00

Mills3EffectCommands:			;When this poke enters the field, mill 5 from the opponent's deck. Unused. 
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, DredgeUpEffect.discard3
	db  $00

MillAtkOppCardsEffectCommands:	; If attack is successful, mill 3 from opp's deck.
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DiscardtopCardsffect
	db  $00

NoOppTrainersEffectCommands:		; Upon entering the field, Opp can't use trainers next turn.
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, HeadacheEffect
	db  $00	

LightningHasteEffectCommands:
  dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LightningHaste_OncePerTurnCheck
  dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LightningHaste_AttachEnergyEffect
  db  $00

ShinyFeatherEffectCommands:		; Enters the field to trigger the pokepower. Gets a trainer card from discard. Modified Itemfinder effect. Ai doesn't understand this?
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, ShinyFeatherEffect
	db  $00

DriveOffEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LureAbility_AssertPokemonInBench
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DriveOff_BenchEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DriveOff_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
    db  $00

SleepLureEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00	

BattleBlastEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BattleblastEffect
	dbw EFFECTCMDTYPE_AI, BattleblastEffect
	db  $00	

PoisonLureEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Poison50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00	

PoisonHalfEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperFang_HalfHPEffect
	dbw EFFECTCMDTYPE_AI, SuperFang_AIEffect
	db  $00	
UltravisionEffectCommands:
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
    dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedCard_AddToHandFromDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Ultravision_PlayerSelectEffect
    dbw EFFECTCMDTYPE_AI_SELECTION, Ultravision_AISelectEffect
    db  $00

SleepTeleportEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SleepEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Teleport_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00

BugbuzzEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BugbuzzEffect
	dbw EFFECTCMDTYPE_AI, BugbuzzEffect
	db  $00	

BurstinginfernoEffectCommands:		; Modified Burstinginferno code. Discard any number of fire energy (min 1) then +20 per discard. 
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Burstinginferno_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Burstinginferno_DiscardDeckEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Burstinginferno_DiscardEnergyEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Burstinginferno_AISelectEffect
	dbw EFFECTCMDTYPE_AI, Burstinginferno_AIEffect
	db  $00	

PlasmaFistEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Paralysis50PercentEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	db  $00

SmogScreenAttackEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmokescreenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00	

SprintEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SprintEffect
	db  $00

Do10MorePerInjuredPokesEffectCommands:		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, adsEffect
	dbw EFFECTCMDTYPE_AI, asd_AIEffect
	db  $00

StaticOverloadEffectCommands:		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, StaticOverloadEffect
	dbw EFFECTCMDTYPE_AI, StaticOverload_AIEffect
	db  $00

HundredFuriousLashesEffectCommands:		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LashesEffect
	dbw EFFECTCMDTYPE_AI, BigEggsplosion_AIEffect
	db  $00

DigDrainEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HardenEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

DraconicEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DraconicCheckEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DraconicPlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DraconicSearchEffect
	db  $00

SharpshootingEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StretchKick_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

HazardousEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ParalysisEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	dbw EFFECTCMDTYPE_AI, MayInflictPoison_AIEffect
	db  $00

HydroDrainEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

CornerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TEsffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_AI, Toxic_AIEffect
	db  $00

IncreaseRetreatCostCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	db $00

EntrapCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EntrapEffect
	db $00

WrackdownCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OpportunistDamagedEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	db $00	

CoordinatedShurikenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AI, OmastarWaterGunEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Gigashock_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Gigashock_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Gigashock_AISelectEffect
	db  $00

DowndrawCommnads:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Teleport_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BillEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Teleport_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00

MachPunchEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MachPunch_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, MachPunch_AIEffect
	db  $00

TeraSparkEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TeraSpark_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

TreasureRushEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TreasureRush_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, TreasureRush_AIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal20DamageToSelfEffect
	db  $00

SuctionHealCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LeechLifeEffect
	db $00

SnapEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, RandomSnipeEffect
	db  $00

Snap2EffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, CatPunchEffect
	db  $00	

ShuffleHandThenDraw4EffectCommands:		;Shuffles hand into deck, then draws 7.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DataRetrievalEffect
	db  $00

HealingWindEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HealingWind_PlayAreaHealEffect
	db  $00	

DragonRageEffectCommands:
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonRage_DamageBoostEffect
    dbw EFFECTCMDTYPE_AI, DragonRage_AIEffect
    db  $00	

EnergyCrushEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Teleport_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Teleport_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Psychic_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Psychic_AIEffect
	db  $00

HuntingArrowEffectCommands:		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DamagedOp_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StretchKick_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	db  $00

ButterflyEdgeEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Whirlwind_SwitchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Whirlwind_SelectEffect
	dbw EFFECTCMDTYPE_AI_SWITCH_DEFENDING_PKMN, Whirlwind_SelectEffect
	db  $00


ShadowClawEffectCommands:		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfTEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	db  $00

TwineedleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TwineedleEffect
	dbw EFFECTCMDTYPE_AI, DoubleKick30_AIEffect
	db  $00

ApplefallEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfFEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfFEnergiesAIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FoulOdorEffect
	db  $00	

SweetImpactEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfFEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfFEnergiesAIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExeggcuteLeechSeedEffect
	db  $00	

ViseBiteEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Low_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ViseBiteEffect
	dbw EFFECTCMDTYPE_AI, GrassKnot_AIEffect
	db  $00	

DustyPillareEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GrassKnot_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DustyEffect
	dbw EFFECTCMDTYPE_AI, GrassKnot_AIEffect
	db  $00		

KabitopsEffectCommands:		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfLEnergiesEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LeechLifeEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfLEnergiesAIEffect
	db  $00	

RiotEffectCommands:		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfDEnergiesEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, RiotEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfGEnergiesAIEffect
	db  $00	

CinderCannonEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfFTEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExtraEffectIfTEnergieesEffect
	db  $00		

FlareUpEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlareUp_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, FlareUp_AIEffect
	db  $00	

MoreDamageifDFPInjuredEffectCommands:		;Does 20 less damage if the DFP already has damage counters on it. 
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LessDamageifDFPDamagedEffect
	dbw EFFECTCMDTYPE_AI, InflictPoison_AIEffect
	db  $00	

OpportunistEffectCommands:		;
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, OpportunistDamagedEffect
	db  $00		

CounterpunchEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Counterpunch_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, Counterpunch_AIEffect
	db  $00	

IcyWindEffectCommands:		; Does extra damage if a T energy is attached, also mills 3 cards from opp.
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sleep50PercentEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ExtraDamageIfTEnergiesEffect
	dbw EFFECTCMDTYPE_AI, ExtraDamageIfTEnergiesAIEffect
	db  $00	

EntrapEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EntrapDamagedEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AcidEffect
	db  $00		

GiantBloomEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GaintBloomEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbsorbEffect
	db  $00

UnableRetreatEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, UnableRetreatEffect
	db  $00	

StickandAbsorbEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, UnableRetreatEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, StickandAbsorbEffect
	db  $00	

PsyShadowEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsyShadow_AttachEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PsyShadow_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyBoost_AISelectEffect
	db  $00 

GigaMagnetEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyBoost_AttachEnergyEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, GigaMagnet_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyBoost_AISelectEffect
	db  $00 

IceShardEffectCommands:	; 
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IceShardEffect
	dbw EFFECTCMDTYPE_AI, IceShardEffectAIEffect ; Define damage for AI here (20+30)
	db  $00	

MailSeekerEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokepower_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TrainerSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, TrainerSearch_AISelection
	db  $00 

JewelseekersEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokepower_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PsychicPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, PsychicPkmnSearch_AISelection
	db  $00

GrassPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, GrassPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, GrassPkmnSearch_AISelection
	db  $00	

FirePkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FirePkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, FirePkmnSearch_AISelection
	db  $00	

WaterPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, WaterPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, WaterPkmnSearch_AISelection
	db  $00	

LightningPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, LightningPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, LightningPkmnSearch_AISelection
	db  $00	

FightingPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FightingPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, FightingPkmnSearch_AISelection
	db  $00	

PsychicPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PsychicPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, PsychicPkmnSearch_AISelection
	db  $00	

DarknessPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DarknessPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, DarknessPkmnSearch_AISelection
	db  $00	

ColorlessPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, ColorlessPkmnSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, ColorlessPkmnSearch_AISelection
	db  $00	

EvolutionPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EvolutionSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, EvolutionSearch_AISelection
	db  $00	

EvolutionPkmnSearchPokepowerEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Pokepower_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EvolutionSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, EvolutionSearch_AISelection
	db  $00	

ColorlessEvolutionPkmnSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FindColorlessEvolution_PlayerSelection
	db  $00	

PowerLariatEffectCommands:		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PowerLariatEffect
	dbw EFFECTCMDTYPE_AI, PowerLariat_AIEffect
	db  $00

EnergyBurstfectCommands:		;Does 10x per your and opponent's energy.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyBurst_MultiplierEffect
	dbw EFFECTCMDTYPE_AI, EnergyBurst_AIEffect
	db  $00

FeintEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Sonicboom_UnaffectedByColorEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE,	DrawACard_DamagedEffect
	db  $00

Exp_EvolutionEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ExplosiveEvolutionEffect2
	db  $00

StompOffEffectCommands:	; If attack is successful, mill 3 from opp's deck.
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DiscardEachtop2ffect
	db  $00

DarkDestructionEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Rage_DamageBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DarkDestructionEffect
	dbw EFFECTCMDTYPE_AI, Rage_AIEffect
	db  $00

GnawOffEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ThunderJolt_Recoil50PercentEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, GnawOffEffect
	db  $00	

DragonVortexEffectCommands:
  dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonVortex_DamageBoostEffect
  dbw EFFECTCMDTYPE_AFTER_DAMAGE, SelectedDiscardPileCards_ShuffleIntoDeckEffect
  dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Riptide_PlayerSelectEffect
  db  $00

MetalSoundEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ConfusionEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MetalSoundEffect
	db  $00 

ScoutEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ScoutEffect
	dbw EFFECTCMDTYPE_AI, ScoutFool_AIEffect
	db  $00

Bounce1EnergyEffectCommands:
  dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StarmieRecover_PlayerSelectEffect
  dbw EFFECTCMDTYPE_AFTER_DAMAGE, BounceEnergy_BounceEffect
  dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  db  $00

ShareLootEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ShareLootEffect
	db $00

SharpenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SharpenEffect
	db  $00

SuckerPunchEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuckerPunchEffect
	db  $00

LuckyFindEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LuckyFindEffectEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, TrainerSearch_PlayerSelection
	dbw EFFECTCMDTYPE_AI_SELECTION, TrainerSearch_AISelection
	db  $00

GrassCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyGrass_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyGrass_AISelectEffect
	db  $00

FireCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyFire_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyFire_AISelectEffect
	db  $00

WaterCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyWater_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyWater_AISelectEffect
	db  $00

LightningCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyLightning_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyLightning_AISelectEffect
	db  $00

PsychicCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyPsychic_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyPsychic_AISelectEffect
	db  $00

DarknessCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyDarkness_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyDarkness_AISelectEffect
	db  $00

ColorlessCallforFriendEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CallForFamilyColorless_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyColorless_AISelectEffect
	db  $00

IronTackleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IronTackleEffect
	db  $00	

PoisonSporeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonSporeEffect
	db  $00

HelpfullSlashEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileGrass_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PlayerDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

LiveCoalEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileFire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

PlasmaEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileLightning_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LightningEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyAbsorption_AISelectEffect
	db  $00

VacuumEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPilefighting_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FightingEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EnergyAbsorption_AISelectEffect
	db  $00

DreamyWishEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPilePsychic_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, PsychihcEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

DarkChargeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileDarkness_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DarknessEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AttachEnergy_FromDiscardEffect
	db  $00

EnergizeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DiscardPileLightning_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergizeEffect1
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, EnergizeEffect2
	db  $00

FirestarterEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireStarterCheck
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, FireEnergyDiscardPileSelection2
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ElectroChargeSet
	db  $00

EmberYesNoEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EmberEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, EmberB_AISelectEffect
	dbw EFFECTCMDTYPE_AI, EmberB_AIEffect 
	db  $00	

FlamethrowerYesNoEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlamethrowerEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	dbw EFFECTCMDTYPE_AI, FlamethrowerB_AIEffect 
	db  $00	

FireBlastYesNoEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FireBlastEffect
	db  $00	

XScissorEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, XScissorEffect
	dbw EFFECTCMDTYPE_AI, XScissor_AIEffect
	db  $00

CallBackEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, PokemonFlute_BenchCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, CallBackSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CallBack_PlaceInPlayAreaEffect
	db  $00	

AbraConfusionEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, AbraConfusionEffect
	db  $00

SuperPsiEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SuperPsiEffect
	db  $00

PsychicZenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsychicZenEffect
	db  $00

VinePullEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VinePullEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IncreaseRetreatCostEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

DreamMistEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Peek_OncePerTurnCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DreamMistEffect
	db  $00

JealousEyesEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, JealousEyesEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StretchKick_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

NinjaTornadoEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, NinjaTornadoCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HyperBeam_DiscardEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

TradeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TradeEffect
	db  $00

PlusPowerSearchEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NidoranFCallForFamily_PlayerSelectEffect
	db  $00	

SonicboomEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SonicBoomEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

LinearAttackEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Opp_CheckBench
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Linear_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StretchKick_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00

IrritatingBuzzEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF ; passive pokemon power
	db  $00

DredgeUpEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DredgeUpEffect
	db  $00

FlareCommandEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, LureAbility_AssertPokemonInBench
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FlareCommand_AssertPokemonInBench
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
    db  $00

DeepSleepEffectCommands:        ; Used for Gengars Deep Sleep. This command is just flavor, Deep Sleep code is found in Duel -> Core.
    dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
    db  $00

SpookifyEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, RiotEffect
    db  $00

DarkSlumberEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DarkSlumberEffect
	dbw EFFECTCMDTYPE_AI, VenomPowder_AIEffect
	db  $00	

PoltergeistEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoltergeistEffect
	db  $00	

GreenForceEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GreenForceEffect
	db  $00

AstonishEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Return1RandomCardFromOpponentsHandEffect
	db  $00

SuperRodEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SuperRodCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SelectedDiscardPileCards_ShuffleIntoDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SuperRodSelectEffect
	db  $00

AquaticRescueEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recycle_DiscardPileCheck
    dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SelectedDiscardPileCards_ShuffleIntoDeckEffect
    dbw EFFECTCMDTYPE_REQUIRE_SELECTION, RodEffect
	db  $00

FirePaybackEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FirePaybackEffect
	dbw EFFECTCMDTYPE_AI, FirePaybackEffect
	db  $00

SkyDropEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SkyDrop_DamageSubtractionEffect
	dbw EFFECTCMDTYPE_AI, SkyDropAIEffect
	db  $00

DevoFlashEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, DevoFlashSelect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionBeam_LoadAnimation
	dbw EFFECTCMDTYPE_AI_SELECTION, DevolutionBeam_AISelectEffect
	db  $00	

PsyReportEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ScoutEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PsyReportEffect
	db  $00

DarkerRingEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, DarkerRingEffect
	db  $00

MindReportEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, MindReportEffect
	db  $00

TimeStreamEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DevolutionBeam_CheckPlayArea
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, DevolutionBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DevolutionBeam_LoadAnimation
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TimeStreamEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, DevolutionBeam_AISelectEffect
	db  $00

EnergyRaidEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyRaidEffect
	db  $00

ZzzapEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ZzzapEffect
	db  $00

StrangeEvolutionPichuEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PikachuSearch_PlayerSelection
	db  $00

VoltTackleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VoltTackleEffect1
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Deal20DamageToSelfEffect
	db  $00

CircleCircuitEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CircleCircuitEffect
	db  $00

VoidTentaclesEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VoidTentaclesEffect
	db  $00

PsychicFangsEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PsychicFangsEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

SniffOutEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Recycle_DiscardPileCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Scavenge_PlayerSelectTrainerEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Scavenge_AddToHandEffect
	db  $00
Add2EnergyFromDeckEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergySearch_PlayerSelectionup2
	db  $00

SaltWaterEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SaltWaterEffect
	db  $00

GreeningCellsEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, GreeningCellsEffect	
	db  $00

FreezingGazeEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, SmokescreenEffect	
	db  $00

Add2WaterEnergyFromDeckEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FindIceEffect
	db  $00

JawLockEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, JawLockEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, UnableRetreatEffect
	db  $00

Add2FossilsFromDeckEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect2
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MysteriousFossil_PlayerSelection2
	db  $00

CrunchEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, CrunchEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, CrunchEffectCheck
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

HyperBeam50EffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, HyperBeam50Effect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HyperBeam_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

VolcanicClawEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergyx2
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, FireSpin_PlayerSelectEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, VolcanicClawEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, FireSpin_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, FireSpin_AISelectEffect
	db  $00

LightningSparkEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, LightningSparkEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Spark_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

ChatterEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChatterEffect
	db  $00	

MimicEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, GamblerEffect.shuffle_cards_into_deck
	db  $00

GutBlowEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GutBlowEffect
	db  $00
SharpSickleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SharpSickleEffect
	db  $00	

StrangeEvolutionTyrogueEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MorphEffect.successful
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, HitmonSearch_PlayerSelectEffect2
	dbw EFFECTCMDTYPE_AI_SELECTION, HitmonSearch_AISelectEffect2
	db  $00

TripleKickEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TripleKick_MultiplierEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TrippleKickEffect
	dbw EFFECTCMDTYPE_AI, FurySwipes20_AIEffect
	db  $00

SpecialPunchEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SpecialPunchEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Sonicboom_NullEffect
	dbw EFFECTCMDTYPE_AI, Sonicboom_UnaffectedByColorEffect
	db  $00

HighJumpKickEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HighJumpKickEffect
	dbw EFFECTCMDTYPE_AI, Thunderpunch_AIEffect
	db  $00
GigavoltEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, GigavoltEffect
	db  $00
Add2LightningEnergyFromDeckEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, LightningEnergy_PlayerSelection2
	db  $00
DrawChainEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Your_BenchCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DrawChainEffect
	db  $00
MagnetismEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MagnetismEffect
	db  $00
MountainClashEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TotalRetreatCost_10xDamageEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, Put1DamageCounterOnActivePKMN
	db  $00
BurnEffectEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurnEffect
	dbw EFFECTCMDTYPE_AI, InflictBurn_AIEffect
	db  $00

MayBurnEffectEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Burn50PercentEffect
	dbw EFFECTCMDTYPE_AI, InflictBurn_AIEffect
	db  $00

KindlingPanicEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, KindlingPanicEffect
	db $00

BurnLureEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, VictreebelLure_AssertPokemonInBench
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurnEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, VictreebelLure_SwitchDefendingPokemon
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_SelectSwitchPokemon
	dbw EFFECTCMDTYPE_AI_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db $00		

PunishingEmbersEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PunishingEmbersEffect
	db $00

SoulBurnerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SoulBurner_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, SoulBurner_AIEffect
	db  $00

SearingFlameEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SearingFlameEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	dbw EFFECTCMDTYPE_AI, InflictBurn_AIEffect 
	db  $00	

FirePunchEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FirePunchEffect
	db  $00	

BoltsplosionEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Boltsplosion_DamageBoostEffect
	db  $00

PoisonBoostEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonBoostEffect
	dbw EFFECTCMDTYPE_AI, PoisonBoostAIEffect
	db  $00

HauntEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PutDamageCounter_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Haunt_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

PhantomPainEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PhantomPain_BenchDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Haunt_PlayerSelectEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Spark_AISelectEffect
	db  $00

FightingFuryEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, SetCarryEF
	db  $00

ClangingEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ClangingScalesEffect
	db  $00

SunAbsorbEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, SunAbsorbEffect
	db  $00

WoodHammerEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, TakeDownEffect
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CycloneEffect
	db  $00

IgniteEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IgniteEffect
	db  $00
BurningVoiceEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BurnBoostEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IgniteEffect
	dbw EFFECTCMDTYPE_AI, BurnBoostAIEffect
	db  $00	
StrangeEvolutionMagbyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MorphEffect.successful
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, MagmarSearch_PlayerSelection
	db  $00

EvolutionaryFlameEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, EvolutionaryFlameEffect
	db  $00

DestructiveFlameEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DestructiveFlameEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, DestructiveFlameCheck
	dbw EFFECTCMDTYPE_AI_SELECTION, HyperBeam_AISelectEffect
	db  $00

WaterDripEffectCommands:
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, StarmieRecover_PlayerSelectEffect
  	dbw EFFECTCMDTYPE_AFTER_DAMAGE, WaterDripEffect
  	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  	db  $00

WaterDuplicateEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, CheckDeckAndPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PutInPlayAreaEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, SUBSTITUTE_DOLL_PlayerSelection
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, WaterDuplicateEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Teleport_AISelectEffect
	db  $00  

WaterSplashEffectCommands:
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, WaterSplashEffect
  	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  	db  $00

AquaJetEffectCommands:
  	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Water_CheckEnergyEffect
  	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, StarmieRecover_PlayerSelectEffect
  	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AquaJetEffect
  	dbw EFFECTCMDTYPE_AI_SELECTION, StarmieRecover_AISelectEffect
  	db  $00  

PillarEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, PillarEffect
	db  $00

CycloneEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, CycloneEffect
	db  $00

AquaWindEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AquaWindEffect
	db  $00

BlessedWindsEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BlessedWindsEffect
	db  $00
SwirlEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Quickfreeze_InitialEffect
	dbw EFFECTCMDTYPE_PKMN_POWER_TRIGGER, SwirlEffect
	db  $00
MudslideEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MudslideEffect
	db $00
DragonPulseEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, Deal10moreifEvolvedEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DragonPulseEffect
	db $00
EnergyDrawEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyDrawEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyDraw_PlayerHandSelection
	db  $00

MagnetPulseEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MagnetPulseEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, EnergyDraw_PlayerHandSelection
	db  $00

MagneticBombEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergyRaidEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AbraConfusionEffect
	db  $00

GatherEnergyEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, GatherEnergyEffect
	db  $00

StrangeEvolutionElekidEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, DeckCheck
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ElectabuzzSearch_PlayerSelection
	db  $00

ZapCannonEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, FireSpin_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, SelectUpto3AtachedEn_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, Upto3_DiscardEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, SelectUpto3AtachedEn_AISelectEffect
	db  $00

DischargeYesNoEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Lightning_CheckEnergy
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, PlayerYesNoEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, DischargeEffect
	db  $00	

BurningPoisonEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Fire_CheckEnergy
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Ember_PlayerSelectEffect
	dbw EFFECTCMDTYPE_DISCARD_ENERGY, DiscardSelectedEnergyEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, BurningPoisonEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, Ember_AISelectEffect
	db  $00

DerisiveRoastingEffectCommands:		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DerisiveRoastingEffect
	dbw EFFECTCMDTYPE_AI, DerisiveRoasting_AIEffect
	db  $00

MeteorMashEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MeteorMashEffect
	dbw EFFECTCMDTYPE_AI, MeteorMashEffect
	db  $00	

MountainEaterEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MountainEaterEffect
	db $00
SandCrushEffectCommands:		;Does +10 per injured pokemon on your side of the field.
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SandCrushEffect
	db  $00
AdamantinePressEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, AdamantinePressEffect
	db  $00

MaliceTentacleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MaliceTentacleEffect
	db  $00

HorrorChantEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, HorrorChantCheckandSelection
	db  $00

SmackDownEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SmackDownEffect
	db  $00	

MegatonHammerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MegatonHammerEffect
	db  $00	

DisruptiveSignalEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DisruptiveSignalEffect
	db $00

BrainShakeEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DisruptiveSignalEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ConfusionEffect
	db $00

SatelliteBeamEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SatelliteBeam_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, SatelliteBeam_AIEffect
	db  $00

MoonblastEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MoonBlastEffect
	db  $00

SleepDrainEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IfAsleepPlus20Damage
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, IfAsleepDrain
	db $00

FairyPollenEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FairyPollenEffect
	db  $00

FlockPeckEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, FlockPeckEffect
	db  $00

ResentFulWingsEffectCommands:		;
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ResentFulWingsEffect
	db  $00	

NightSyndicateEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, Sprint_Check
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, CheckPlayArea
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PutInPlayAreaAndDamageEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, NightSyndicateEffect
	dbw EFFECTCMDTYPE_AI_SELECTION, CallForFamilyDarkness_AISelectEffect
	db  $00

BlackwingVengeanceEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, BlackwingVengeance_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, BlackwingVengeance_AIEffect
	db  $00

ChemicalScaleEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ChemicalScaleEffect
	db $00

DragonsVenomEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, DragonsVenom50PercentEffect
	db  $00

SpiritBreakEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, SpiritBreakEffect
	db $00

jfEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, Sprint_Check
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, jkEffect
	db  $00

PoisonRingEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, PoisonEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, UnableRetreatEffect
	db $00

MuddyHammerEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, MuddyHammerEffect
	db $00	

DarkPulseEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TotalDarkEnergy_10xDamageEffect
	db  $00
MercilessEffectCommands:
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, MercilessEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00	
LeafArrowEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, FetchEffect
	dbw EFFECTCMDTYPE_AFTER_DAMAGE, ArrowEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, VictreebelLure_GetBenchPokemonWithLowestHP
	db  $00	
DarkVoidEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IfAsleppHalfHP
	db  $00
LunarDreamsEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, IfAsleppHealHP
	db  $00
TDCommandEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, TDCommandEffect
	dbw EFFECTCMDTYPE_AI, TDCommandAIEffect
	db  $00
ZCommandEffectCommands:
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, ZCommand_DamageBoostEffect
	dbw EFFECTCMDTYPE_AI, ZCommand_AIEffect
	db  $00
QuickBallEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandDeckCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Find0RetreatCost_PlayerSelection
	db  $00	
HeavyBallEffectCommands:
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_1, OneCardHandDeckCheck
	dbw EFFECTCMDTYPE_INITIAL_EFFECT_2, EnergyRetrieval_PlayerHandSelection
	dbw EFFECTCMDTYPE_BEFORE_DAMAGE, EnergySearch_AddToHandEffect
	dbw EFFECTCMDTYPE_REQUIRE_SELECTION, Find3orMoreRetreatCost_PlayerSelection
	db  $00		