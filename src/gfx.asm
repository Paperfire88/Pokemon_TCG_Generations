INCLUDE "macros.asm"
INCLUDE "constants.asm"

SECTION "Gfx 1", ROMX

Fonts::

FullWidthFonts::
INCBIN "gfx/fonts/full_width/0_0_katakana.1bpp"
INCBIN "gfx/fonts/full_width/0_1_hiragana.1bpp"
INCBIN "gfx/fonts/full_width/0_2_digits_kanji1.1bpp"
INCBIN "gfx/fonts/full_width/1_kanji2.1bpp"
INCBIN "gfx/fonts/full_width/2_kanji3.1bpp"
INCBIN "gfx/fonts/full_width/3.1bpp"
INCBIN "gfx/fonts/full_width/4.1bpp"

HalfWidthFont::
INCBIN "gfx/fonts/half_width.1bpp"

SymbolsFont::
INCBIN "gfx/fonts/symbols.2bpp"

DuelGraphics::

DuelCardHeaderGraphics::
INCBIN "gfx/duel/card_headers.2bpp"

DuelCgbSymbolGraphics::
INCBIN "gfx/duel/cgb_symbols.2bpp"

SECTION "Gfx 2", ROMX

INCBIN "gfx/duel/cgb_symbols.2bpp"

DuelOtherGraphics::
INCBIN "gfx/duel/other.2bpp"

DuelBoxMessages::
INCBIN "gfx/duel/box_messages.2bpp"

SECTION "Gfx 3", ROMX

WaterClubTilemap::
	INCBIN "data/maps/tiles/dimensions/water_club.dimensions"
	dw WaterClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/water_club.bgmap.lz"
WaterClubCGBPermissions:
	INCBIN "data/maps/permissions/water_club.bin.lz"

LightningClubTilemap::
	INCBIN "data/maps/tiles/dimensions/lightning_club.dimensions"
	dw LightningClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/lightning_club.bgmap.lz"
LightningClubCGBPermissions:
	INCBIN "data/maps/permissions/lightning_club.bin.lz"

GrassClubTilemap::
	INCBIN "data/maps/tiles/dimensions/grass_club.dimensions"
	dw GrassClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/grass_club.bgmap.lz"
GrassClubCGBPermissions:
	INCBIN "data/maps/permissions/grass_club.bin.lz"

PsychicClubTilemap::
	INCBIN "data/maps/tiles/dimensions/psychic_club.dimensions"
	dw PsychicClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/psychic_club.bgmap.lz"
PsychicClubCGBPermissions:
	INCBIN "data/maps/permissions/psychic_club.bin.lz"

ScienceClubTilemap::
	INCBIN "data/maps/tiles/dimensions/science_club.dimensions"
	dw ScienceClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/science_club.bgmap.lz"
ScienceClubCGBPermissions:
	INCBIN "data/maps/permissions/science_club.bin.lz"

FireClubTilemap::
	INCBIN "data/maps/tiles/dimensions/fire_club.dimensions"
	dw FireClubCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/fire_club.bgmap.lz"
FireClubCGBPermissions:
	INCBIN "data/maps/permissions/fire_club.bin.lz"

ChallengeHallTilemap::
	INCBIN "data/maps/tiles/dimensions/challenge_hall.dimensions"
	dw ChallengeHallCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/challenge_hall.bgmap.lz"
ChallengeHallCGBPermissions:
	INCBIN "data/maps/permissions/challenge_hall.bin.lz"

PokemonDomeEntranceTilemap::
	INCBIN "data/maps/tiles/dimensions/pokemon_dome_entrance.dimensions"
	dw PokemonDomeEntranceCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/pokemon_dome_entrance.bgmap.lz"
PokemonDomeEntranceCGBPermissions:
	INCBIN "data/maps/permissions/pokemon_dome_entrance.bin.lz"

PokemonDomeTilemap::
	INCBIN "data/maps/tiles/dimensions/pokemon_dome.dimensions"
	dw PokemonDomeCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/pokemon_dome.bgmap.lz"
PokemonDomeCGBPermissions:
	INCBIN "data/maps/permissions/pokemon_dome.bin.lz"

HallOfHonorTilemap::
	INCBIN "data/maps/tiles/dimensions/hall_of_honor.dimensions"
	dw HallOfHonorCGBPermissions
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/hall_of_honor.bgmap.lz"
HallOfHonorCGBPermissions:
	INCBIN "data/maps/permissions/hall_of_honor.bin.lz"

ScienceMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/science_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/science_medal.bgmap.lz"

FireMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/fire_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/fire_medal.bgmap.lz"

WaterMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/water_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/water_medal.bgmap.lz"

LightningMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/lightning_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/lightning_medal.bgmap.lz"

FightingMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/fighting_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/fighting_medal.bgmap.lz"

RockMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/rock_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/rock_medal.bgmap.lz"

PsychicMedalTilemap::
	INCBIN "data/maps/tiles/dimensions/psychic_medal.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/psychic_medal.bgmap.lz"

ColosseumTilemap::
	INCBIN "data/maps/tiles/dimensions/colosseum.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/colosseum.bgmap.lz"

EvolutionTilemap::
	INCBIN "data/maps/tiles/dimensions/evolution.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/evolution.bgmap.lz"

MysteryTilemap::
	INCBIN "data/maps/tiles/dimensions/mystery.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/mystery.bgmap.lz"

LaboratoryTilemap::
	INCBIN "data/maps/tiles/dimensions/laboratory.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/laboratory.bgmap.lz"

CharizardIntroTilemap::
	INCBIN "data/maps/tiles/dimensions/charizard_intro.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/charizard_intro.bgmap.lz"

ScytherIntroTilemap::
	INCBIN "data/maps/tiles/dimensions/scyther_intro.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/scyther_intro.bgmap.lz"

AerodactylIntroTilemap::
	INCBIN "data/maps/tiles/dimensions/aerodactyl_intro.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/aerodactyl_intro.bgmap.lz"

SolidTiles1Tilemap::
	INCBIN "data/maps/tiles/dimensions/solid_tiles_1.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/solid_tiles_1.bgmap.lz"

SolidTiles2Tilemap::
	INCBIN "data/maps/tiles/dimensions/solid_tiles_2.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/solid_tiles_2.bgmap.lz"

SolidTiles3Tilemap::
	INCBIN "data/maps/tiles/dimensions/solid_tiles_3.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/solid_tiles_3.bgmap.lz"

SolidTiles4Tilemap::
	INCBIN "data/maps/tiles/dimensions/solid_tiles_4.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/solid_tiles_4.bgmap.lz"

PlayerTilemap::
	INCBIN "data/maps/tiles/dimensions/player.dimensions"
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/cgb/player.bin.lz"

OpponentTilemap::
	INCBIN "data/maps/tiles/dimensions/opponent.dimensions"
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/cgb/opponent.bin.lz"

TitleScreenTilemap::
	INCBIN "data/maps/tiles/dimensions/title_screen.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/title_screen.bgmap.lz"

CopyrightTilemap::
	INCBIN "data/maps/tiles/dimensions/copyright.dimensions"
	dw NULL
	db TRUE ; cgb mode
	INCBIN "data/maps/tiles/cgb/copyright.bgmap.lz"

NintendoTilemap::
	INCBIN "data/maps/tiles/dimensions/nintendo.dimensions"
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/cgb/nintendo.bin.lz"

CompaniesTilemap::
	INCBIN "data/maps/tiles/dimensions/companies.dimensions"
	dw NULL
	db FALSE ; cgb mode
	INCBIN "data/maps/tiles/cgb/companies.bin.lz"

IshiharaTilesetGfx::
	dw 77
	INCBIN "gfx/tilesets/ishihara.2bpp"

SolidTiles1::
	dw 4
	INCBIN "gfx/solid_tiles.2bpp"

SolidTiles2::
	dw 4
	INCBIN "gfx/solid_tiles.2bpp"

OverworldMapTiles::
	dw 193
	INCBIN "gfx/overworld_map.2bpp"

MasonLaboratoryTilesetGfx::
	dw 151
	INCBIN "gfx/tilesets/masonlaboratory.2bpp"
SECTION "Gfx 4", ROMX
ClubEntranceTilesetGfx::
	dw 129
	INCBIN "gfx/tilesets/clubentrance.2bpp"

ClubLobbyTilesetGfx::
	dw 120
	INCBIN "gfx/tilesets/clublobby.2bpp"

FightingClubTilesetGfx::
	dw 99
	INCBIN "gfx/tilesets/fightingclub.2bpp"

RockClubTilesetGfx::
	dw 60
	INCBIN "gfx/tilesets/rockclub.2bpp"

WaterClubTilesetGfx::
	dw 161
	INCBIN "gfx/tilesets/waterclub.2bpp"

GrassClubTilesetGfx::
	dw 87
	INCBIN "gfx/tilesets/grassclub.2bpp"
LightningClubTilesetGfx::
	dw 131
	INCBIN "gfx/tilesets/lightningclub.2bpp"

PsychicClubTilesetGfx::
	dw 58
	INCBIN "gfx/tilesets/psychicclub.2bpp"

ScienceClubTilesetGfx::
	dw 82
	INCBIN "gfx/tilesets/scienceclub.2bpp"

OWPlayerGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/player.2bpp"
AnimData2::
	frame_table AnimFrameTable0
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

Palette109::
	db 1, %11100100
	db 0

SECTION "Gfx 5", ROMX

FireClubTilesetGfx::
	dw 87
	INCBIN "gfx/tilesets/fireclub.2bpp"

ChallengeHallTilesetGfx::
	dw 157
	INCBIN "gfx/tilesets/challengehall.2bpp"

PokemonDomeEntranceTilesetGfx::
	dw 78
	INCBIN "gfx/tilesets/pokemondomeentrance.2bpp"

PokemonDomeTilesetGfx::
	dw 207
	INCBIN "gfx/tilesets/pokemondome.2bpp"

HallOfHonorTilesetGfx::
	dw 121
	INCBIN "gfx/tilesets/hallofhonor.2bpp"

MedalGfx::
	dw 72
	INCBIN "gfx/medals.2bpp",   $0, $c0
	INCBIN "gfx/medals.2bpp", $240, $30
	INCBIN "gfx/medals.2bpp", $340, $10
	INCBIN "gfx/medals.2bpp",  $c0, $c0
	INCBIN "gfx/medals.2bpp", $300, $30
	INCBIN "gfx/medals.2bpp", $350, $10
	INCBIN "gfx/medals.2bpp", $180, $c0
	INCBIN "gfx/medals.2bpp", $3c0, $30
	INCBIN "gfx/medals.2bpp", $410, $10
	INCBIN "gfx/medals.2bpp", $2d0, $30
	INCBIN "gfx/medals.2bpp", $2a0, $30
	INCBIN "gfx/medals.2bpp", $270, $30
	INCBIN "gfx/medals.2bpp", $390, $30
	INCBIN "gfx/medals.2bpp", $360, $30
	INCBIN "gfx/medals.2bpp", $330, $10
	INCBIN "gfx/medals.2bpp", $450, $30
	INCBIN "gfx/medals.2bpp", $420, $30
	INCBIN "gfx/medals.2bpp", $3f0, $20

NintendoGfx::
	dw 24
	INCBIN "gfx/nintendo.2bpp"
ColosseumGfx::
	dw 86
	INCBIN "gfx/booster_packs/colosseum.2bpp"

EvolutionGfx::
	dw 86
	INCBIN "gfx/booster_packs/evolution.2bpp"

MysteryGfx::
	dw 86
	INCBIN "gfx/booster_packs/mystery.2bpp"

AnimData3::
	frame_table AnimFrameTable0
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 6", ROMX
CopyrightGfx::
	dw 36
	INCBIN "gfx/copyright.2bpp"

OWClerkGfx::
	dw $8
	INCBIN "gfx/overworld_sprites/clerk.2bpp"

OWLegendaryCardGfx::
	dw $a
	INCBIN "gfx/overworld_sprites/legendary_card.2bpp"

LaboratoryGfx::
	dw 86
	INCBIN "gfx/booster_packs/laboratory.2bpp"

CharizardIntroGfx::
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/charizardintro.2bpp"

ScytherIntroGfx::
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/scytherintro.2bpp"

AerodactylIntroGfx::
	dw 96
	INCBIN "gfx/titlescreen/booster_packs/aerodactylintro.2bpp"

CompaniesGfx::
	dw 49
	INCBIN "gfx/companies.2bpp"

OWRonaldGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/ronald.2bpp"

AnimData5::
	frame_table AnimFrameTable1
	frame_data 3, 16, 0, 0
	frame_data 4, 16, 0, 0
	frame_data 0, 0, 0, 0

TitleScreenGfx::
	dw 212
	INCBIN "gfx/titlescreen/title_screen.2bpp"

OWDrMasonGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/doctormason.2bpp"

OverworldMapOAMGfx::
	dw $8
	INCBIN "gfx/overworld_map_oam.2bpp"
OWIshiharaGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/ishihara.2bpp"

OWImakuniGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/imakuni.2bpp"

OWNikkiGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/nikki.2bpp"

OWRickGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/rick.2bpp"

OWKenGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/ken.2bpp"

OWAmyGfx::
	dw $1b
	INCBIN "gfx/overworld_sprites/amy.2bpp"

OWIsaacGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/isaac.2bpp"

OWMitchGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/mitch.2bpp"

OWGeneGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/gene.2bpp"

OWMurrayGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/murray.2bpp"

OWCourtneyGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/courtney.2bpp"

OWSteveGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/steve.2bpp"

OWJackGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/jack.2bpp"
SECTION "Gfx 7", ROMX
OWRodGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/rod.2bpp"

OWBoyGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/youngster.2bpp"

OWLadGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/lad.2bpp"

OWSpecsGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/specs.2bpp"

OWButchGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/butch.2bpp"

OWManiaGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/mania.2bpp"

OWJoshuaGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/joshua.2bpp"

OWHoodGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/hood.2bpp"

OWTechGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/tech.2bpp"

OWChapGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/chap.2bpp"

OWManGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/man.2bpp"

OWPappyGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/pappy.2bpp"

OWGirlGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/girl.2bpp"

OWLass1Gfx::
	dw $14
	INCBIN "gfx/overworld_sprites/lass1.2bpp"

OWLass2Gfx::
	dw $14
	INCBIN "gfx/overworld_sprites/lass2.2bpp"

OWLass3Gfx::
	dw $14
	INCBIN "gfx/overworld_sprites/lass3.2bpp"

OWSwimmerGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/swimmer.2bpp"
OWGalGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/gal.2bpp"

OWWomanGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/woman.2bpp"

OWGrannyGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/granny.2bpp"

OWTorchGfx::
	dw $16
	INCBIN "gfx/overworld_sprites/torch.2bpp"
Palette117::
	db 0
	db 1

	rgb 27, 27, 24
	rgb 31, 31,  0
	rgb 31,  0,  0
	rgb  0,  8, 19

SECTION "Gfx 8", ROMX

DuelWaterDropGfx::
	dw $3
	INCBIN "gfx/duel/anims/water_drop.2bpp"

DuelSnowGfx::
	dw $1
	INCBIN "gfx/duel/anims/snow.2bpp"
	
DuelPetalGfx::
	dw $1
	INCBIN "gfx/duel/anims/petal.2bpp"

DuelPoisonGfx::
	dw $4
	INCBIN "gfx/duel/anims/poison.2bpp"

DuelSparkGfx::
	dw $3
	INCBIN "gfx/duel/anims/spark.2bpp"

DuelHealGfx::
	dw $2
	INCBIN "gfx/duel/anims/heal.2bpp"

DuelDrainGfx::
	dw $2
	INCBIN "gfx/duel/anims/drain.2bpp"

DuelStarGfx::
	dw $2
	INCBIN "gfx/duel/anims/star.2bpp"

DuelPowderGfx::
	dw $1
	INCBIN "gfx/duel/anims/powder.2bpp"

DuelGlowGfx::
	dw $b
	INCBIN "gfx/duel/anims/glow.2bpp"

DuelSmallStarGfx::
	dw $4
	INCBIN "gfx/duel/anims/small_star.2bpp"
DuelParalysisGfx::
	dw $06
	INCBIN "gfx/duel/anims/paralysis.2bpp"

DuelSleepGfx::
	dw $08
	INCBIN "gfx/duel/anims/sleep.2bpp"

DuelHitGfx::
	dw $09
	INCBIN "gfx/duel/anims/hit.2bpp"

DuelDamageGfx::
	dw $12
	INCBIN "gfx/duel/anims/damage.2bpp"

DuelThunderGfx::
	dw $09
	INCBIN "gfx/duel/anims/thunder.2bpp"

DuelLightningGfx::
	dw $11
	INCBIN "gfx/duel/anims/lightning.2bpp"

DuelBigLightningGfx::
	dw $2d
	INCBIN "gfx/duel/anims/big_lightning.2bpp"

DuelFlameGfx::
	dw $0d
	INCBIN "gfx/duel/anims/flame.2bpp"

DuelFireSpinGfx::
	dw $1c
	INCBIN "gfx/duel/anims/fire_spin.2bpp"

DuelFireBirdGfx::
	dw $4c
	INCBIN "gfx/duel/anims/fire_bird.2bpp"

DuelWaterGunGfx::
	dw $1b
	INCBIN "gfx/duel/anims/water_gun.2bpp"

DuelWhirlpoolGfx::
	dw $07
	INCBIN "gfx/duel/anims/whirlpool.2bpp"

DuelHydroPumpGfx::
	dw $0c
	INCBIN "gfx/duel/anims/hydro_pump.2bpp"

DuelPsychicGfx::
	dw $22
	INCBIN "gfx/duel/anims/psychic.2bpp"

DuelLeerGfx::
	dw $20
	INCBIN "gfx/duel/anims/leer.2bpp"

DuelBeamGfx::
	dw $0a
	INCBIN "gfx/duel/anims/beam.2bpp"

DuelHyperBeamGfx::
	dw $25
	INCBIN "gfx/duel/anims/hyper_beam.2bpp"

DuelRockThrowGfx::
	dw $18
	INCBIN "gfx/duel/anims/rock_throw.2bpp"

DuelPunchGfx::
	dw $1b
	INCBIN "gfx/duel/anims/punch.2bpp"

DuelStretchKickGfx::
	dw $08
	INCBIN "gfx/duel/anims/stretch_kick.2bpp"

DuelSlashGfx::
	dw $0d
	INCBIN "gfx/duel/anims/slash.2bpp"

DuelWhipGfx::
	dw $22
	INCBIN "gfx/duel/anims/whip.2bpp"

DuelSonicboomGfx::
	dw $0c
	INCBIN "gfx/duel/anims/sonicboom.2bpp"

DuelDrillGfx::
	dw $25
	INCBIN "gfx/duel/anims/drill.2bpp"

DuelPotGfx::
	dw $22
	INCBIN "gfx/duel/anims/pot.2bpp"

DuelBoneGfx::
	dw $0c
	INCBIN "gfx/duel/anims/bone.2bpp"

DuelPlanetGfx::
	dw $4c
	INCBIN "gfx/duel/anims/planet.2bpp"

DuelNeedlesGfx::
	dw $08
	INCBIN "gfx/duel/anims/needles.2bpp"

DuelGasGfx::
	dw $07
	INCBIN "gfx/duel/anims/gas.2bpp"

DuelGooGfx::
	dw $1a
	INCBIN "gfx/duel/anims/goo.2bpp"

DuelBubbleGfx::
	dw $0a
	INCBIN "gfx/duel/anims/bubble.2bpp"

DuelStringGfx::
	dw $2e
	INCBIN "gfx/duel/anims/string.2bpp"

DuelHeartGfx::
	dw $08
	INCBIN "gfx/duel/anims/heart.2bpp"

DuelLureGfx::
	dw $07
	INCBIN "gfx/duel/anims/lure.2bpp"

DuelSkullGfx::
	dw $1c
	INCBIN "gfx/duel/anims/skull.2bpp"

DuelNoteGfx::
	dw $08
	INCBIN "gfx/duel/anims/note.2bpp"

DuelSoundGfx::
	dw $0b
	INCBIN "gfx/duel/anims/sound.2bpp"

DuelProtectGfx::
	dw $1c
	INCBIN "gfx/duel/anims/protect.2bpp"

DuelBarrierGfx::
	dw $16
	INCBIN "gfx/duel/anims/barrier.2bpp"

DuelSpeedGfx::
	dw $10
	INCBIN "gfx/duel/anims/speed.2bpp"

DuelWhirlwindGfx::
	dw $0f
	INCBIN "gfx/duel/anims/whirlwind.2bpp"

DuelCryGfx::
	dw $07
	INCBIN "gfx/duel/anims/cry.2bpp"

DuelQuestionMarkGfx::
	dw $0a
	INCBIN "gfx/duel/anims/question_mark.2bpp"

DuelExplosionGfx::
	dw $09
	INCBIN "gfx/duel/anims/explosion.2bpp"

DuelSmallGlowGfx::
	dw $03
	INCBIN "gfx/duel/anims/small_glow.2bpp"

AnimData6::
	frame_table AnimFrameTable1
	frame_data 5, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 7, 16, 0, 0
	frame_data 6, 16, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 9", ROMX

DuelBallGfx::
	dw $08
	INCBIN "gfx/duel/anims/ball.2bpp"

DuelCatPawGfx::
	dw $0f
	INCBIN "gfx/duel/anims/cat_paw.2bpp"

DuelWaveGfx::
	dw $03
	INCBIN "gfx/duel/anims/wave.2bpp"

DuelCardGfx::
	dw $05
	INCBIN "gfx/duel/anims/card.2bpp"

DuelCoinGfx::
	dw $17
	INCBIN "gfx/duel/anims/coin.2bpp"

DuelResultGfx::
	dw $36
	INCBIN "gfx/duel/anims/result.2bpp"

BoosterPackOAMGfx::
	dw $20
	INCBIN "gfx/booster_packs/oam.2bpp"

PressStartGfx::
	dw $14
	INCBIN "gfx/titlescreen/press_start.2bpp"

GrassGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/grass.2bpp"

FireGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/fire.2bpp"

WaterGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/water.2bpp"

ColorlessGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/colorless.2bpp"

LightningGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/lightning.2bpp"

PsychicGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/psychic.2bpp"

FightingGfx::
	dw $04
	INCBIN "gfx/titlescreen/energies/fighting.2bpp"

SECTION "Anims 1", ROMX
	INCLUDE "data/duel/animations/anims1.asm"

SECTION "Anims 2", ROMX
	INCLUDE "data/duel/animations/anims2.asm"

SECTION "Anims 3", ROMX
	INCLUDE "data/duel/animations/anims3.asm"

Palette31::
	db 1, %11010010
	db 1

	rgb  0,  0,  0
	rgb 31, 31,  7
	rgb 31, 24,  6
	rgb 11,  3,  0

SECTION "Anims 4", ROMX
	INCLUDE "data/duel/animations/anims4.asm"

SECTION "Palettes1", ROMX
	INCLUDE "data/palettes1.asm"

SECTION "Palettes2", ROMX
	INCLUDE "data/palettes2.asm"
SECTION "Portraits 1", ROMX

PlayerPortrait::
	INCBIN "gfx/duelists/player.2bpp"
	INCBIN "gfx/duelists/player.attrmap.lz"
PalettePlayerPortrait::
	INCBIN "gfx/duelists/player.pal"

RonaldPortrait::
	INCBIN "gfx/duelists/ronald.2bpp"
	INCBIN "gfx/duelists/ronald.attrmap.lz"
PaletteRonaldPortrait::
	INCBIN "gfx/duelists/ronald.pal"

SamPortrait::
	INCBIN "gfx/duelists/sam.2bpp"
	INCBIN "gfx/duelists/sam.attrmap.lz"
PaletteSamPortrait::
	INCBIN "gfx/duelists/sam.pal"

ImakuniPortrait::
	INCBIN "gfx/duelists/imakuni.2bpp"
	INCBIN "gfx/duelists/imakuni.attrmap.lz"
PaletteImakuniPortrait::
	INCBIN "gfx/duelists/imakuni.pal"

NikkiPortrait::
	INCBIN "gfx/duelists/nikki.2bpp"
	INCBIN "gfx/duelists/nikki.attrmap.lz"
PaletteNikkiPortrait::
	INCBIN "gfx/duelists/nikki.pal"

RickPortrait::
	INCBIN "gfx/duelists/rick.2bpp"
	INCBIN "gfx/duelists/rick.attrmap.lz"
PaletteRickPortrait::
	INCBIN "gfx/duelists/rick.pal"

KenPortrait::
	INCBIN "gfx/duelists/ken.2bpp"
	INCBIN "gfx/duelists/ken.attrmap.lz"
PaletteKenPortrait::
	INCBIN "gfx/duelists/ken.pal"

AmyPortrait::
	INCBIN "gfx/duelists/amy.2bpp"
	INCBIN "gfx/duelists/amy.attrmap.lz"
PaletteAmyPortrait::
	INCBIN "gfx/duelists/amy.pal"

IsaacPortrait::
	INCBIN "gfx/duelists/isaac.2bpp"
	INCBIN "gfx/duelists/isaac.attrmap.lz"
PaletteIsaacPortrait::
	INCBIN "gfx/duelists/isaac.pal"

SECTION "Portraits 2", ROMX

MitchPortrait::
	INCBIN "gfx/duelists/mitch.2bpp"
	INCBIN "gfx/duelists/mitch.attrmap.lz"
PaletteMitchPortrait::
	INCBIN "gfx/duelists/mitch.pal"

GenePortrait::
	INCBIN "gfx/duelists/gene.2bpp"
	INCBIN "gfx/duelists/gene.attrmap.lz"
PaletteGenePortrait::
	INCBIN "gfx/duelists/gene.pal"

MurrayPortrait::
	INCBIN "gfx/duelists/murray.2bpp"
	INCBIN "gfx/duelists/murray.attrmap.lz"
PaletteMurrayPortrait::
	INCBIN "gfx/duelists/murray.pal"

CourtneyPortrait::
	INCBIN "gfx/duelists/courtney.2bpp"
	INCBIN "gfx/duelists/courtney.attrmap.lz"
PaletteCourtneyPortrait::
	INCBIN "gfx/duelists/courtney.pal"

StevePortrait::
	INCBIN "gfx/duelists/steve.2bpp"
	INCBIN "gfx/duelists/steve.attrmap.lz"
PaletteStevePortrait::
	INCBIN "gfx/duelists/steve.pal"

JackPortrait::
	INCBIN "gfx/duelists/jack.2bpp"
	INCBIN "gfx/duelists/jack.attrmap.lz"
PaletteJackPortrait::
	INCBIN "gfx/duelists/jack.pal"

RodPortrait::
	INCBIN "gfx/duelists/rod.2bpp"
	INCBIN "gfx/duelists/rod.attrmap.lz"
PaletteRodPortrait::
	INCBIN "gfx/duelists/rod.pal"

JosephPortrait::
	INCBIN "gfx/duelists/joseph.2bpp"
	INCBIN "gfx/duelists/joseph.attrmap.lz"
PaletteJosephPortrait::
	INCBIN "gfx/duelists/joseph.pal"

DavidPortrait::
	INCBIN "gfx/duelists/david.2bpp"
	INCBIN "gfx/duelists/david.attrmap.lz"
PaletteDavidPortrait::
	INCBIN "gfx/duelists/david.pal"

SECTION "Portraits 3", ROMX

ErikPortrait::
	INCBIN "gfx/duelists/erik.2bpp"
	INCBIN "gfx/duelists/erik.attrmap.lz"
PaletteErikPortrait::
	INCBIN "gfx/duelists/erik.pal"

JohnPortrait::
	INCBIN "gfx/duelists/john.2bpp"
	INCBIN "gfx/duelists/john.attrmap.lz"
PaletteJohnPortrait::
	INCBIN "gfx/duelists/john.pal"

AdamPortrait::
	INCBIN "gfx/duelists/adam.2bpp"
	INCBIN "gfx/duelists/adam.attrmap.lz"
PaletteAdamPortrait::
	INCBIN "gfx/duelists/adam.pal"

JonathanPortrait::
	INCBIN "gfx/duelists/jonathan.2bpp"
	INCBIN "gfx/duelists/jonathan.attrmap.lz"
PaletteJonathanPortrait::
	INCBIN "gfx/duelists/jonathan.pal"

JoshuaPortrait::
	INCBIN "gfx/duelists/joshua.2bpp"
	INCBIN "gfx/duelists/joshua.attrmap.lz"
PaletteJoshuaPortrait::
	INCBIN "gfx/duelists/joshua.pal"

NicholasPortrait::
	INCBIN "gfx/duelists/nicholas.2bpp"
	INCBIN "gfx/duelists/nicholas.attrmap.lz"
PaletteNicholasPortrait::
	INCBIN "gfx/duelists/nicholas.pal"

BrandonPortrait::
	INCBIN "gfx/duelists/brandon.2bpp"
	INCBIN "gfx/duelists/brandon.attrmap.lz"
PaletteBrandonPortrait::
	INCBIN "gfx/duelists/brandon.pal"

MatthewPortrait::
	INCBIN "gfx/duelists/matthew.2bpp"
	INCBIN "gfx/duelists/matthew.attrmap.lz"
PaletteMatthewPortrait::
	INCBIN "gfx/duelists/matthew.pal"

RyanPortrait::
	INCBIN "gfx/duelists/ryan.2bpp"
	INCBIN "gfx/duelists/ryan.attrmap.lz"
PaletteRyanPortrait::
	INCBIN "gfx/duelists/ryan.pal"

SECTION "Portraits 4", ROMX

AndrewPortrait::
	INCBIN "gfx/duelists/andrew.2bpp"
	INCBIN "gfx/duelists/andrew.attrmap.lz"
PaletteAndrewPortrait::
	INCBIN "gfx/duelists/andrew.pal"

ChrisPortrait::
	INCBIN "gfx/duelists/chris.2bpp"
	INCBIN "gfx/duelists/chris.attrmap.lz"
PaletteChrisPortrait::
	INCBIN "gfx/duelists/chris.pal"

MichaelPortrait::
	INCBIN "gfx/duelists/michael.2bpp"
	INCBIN "gfx/duelists/michael.attrmap.lz"
PaletteMichaelPortrait::
	INCBIN "gfx/duelists/michael.pal"

DanielPortrait::
	INCBIN "gfx/duelists/daniel.2bpp"
	INCBIN "gfx/duelists/daniel.attrmap.lz"
PaletteDanielPortrait::
	INCBIN "gfx/duelists/daniel.pal"

RobertPortrait::
	INCBIN "gfx/duelists/robert.2bpp"
	INCBIN "gfx/duelists/robert.attrmap.lz"
PaletteRobertPortrait::
	INCBIN "gfx/duelists/robert.pal"

BrittanyPortrait::
	INCBIN "gfx/duelists/brittany.2bpp"
	INCBIN "gfx/duelists/brittany.attrmap.lz"
PaletteBrittanyPortrait::
	INCBIN "gfx/duelists/brittany.pal"

KristinPortrait::
	INCBIN "gfx/duelists/kristin.2bpp"
	INCBIN "gfx/duelists/kristin.attrmap.lz"
PaletteKristinPortrait::
	INCBIN "gfx/duelists/kristin.pal"

HeatherPortrait::
	INCBIN "gfx/duelists/heather.2bpp"
	INCBIN "gfx/duelists/heather.attrmap.lz"
PaletteHeatherPortrait::
	INCBIN "gfx/duelists/heather.pal"

SaraPortrait::
	INCBIN "gfx/duelists/sara.2bpp"
	INCBIN "gfx/duelists/sara.attrmap.lz"
PaletteSaraPortrait::
	INCBIN "gfx/duelists/sara.pal"

SECTION "Portraits 5", ROMX

AmandaPortrait::
	INCBIN "gfx/duelists/amanda.2bpp"
	INCBIN "gfx/duelists/amanda.attrmap.lz"
PaletteAmandaPortrait::
	INCBIN "gfx/duelists/amanda.pal"

JenniferPortrait::
	INCBIN "gfx/duelists/jennifer.2bpp"
	INCBIN "gfx/duelists/jennifer.attrmap.lz"
PaletteJenniferPortrait::
	INCBIN "gfx/duelists/jennifer.pal"

JessicaPortrait::
	INCBIN "gfx/duelists/jessica.2bpp"
	INCBIN "gfx/duelists/jessica.attrmap.lz"
PaletteJessicaPortrait::
	INCBIN "gfx/duelists/jessica.pal"

StephaniePortrait::
	INCBIN "gfx/duelists/stephanie.2bpp"
	INCBIN "gfx/duelists/stephanie.attrmap.lz"
PaletteStephaniePortrait::
	INCBIN "gfx/duelists/stephanie.pal"

AaronPortrait::
	INCBIN "gfx/duelists/aaron.2bpp"
	INCBIN "gfx/duelists/aaron.attrmap.lz"
PaletteAaronPortrait::
	INCBIN "gfx/duelists/aaron.pal"
BernardPortrait::	
	INCBIN "gfx/duelists/bernard.2bpp"
	INCBIN "gfx/duelists/bernard.attrmap.lz"
PaletteBernardPortrait::
	INCBIN "gfx/duelists/bernard.pal"
MelissaPortrait::	
	INCBIN "gfx/duelists/melissa.2bpp"
	INCBIN "gfx/duelists/melissa.attrmap.lz"
PaletteMelissaPortrait::
	INCBIN "gfx/duelists/melissa.pal"
YutaPortrait::	
	INCBIN "gfx/duelists/yuta.2bpp"
	INCBIN "gfx/duelists/yuta.attrmap.lz"
PaletteYutaPortrait::
	INCBIN "gfx/duelists/yuta.pal"
LizPortrait::	
	INCBIN "gfx/duelists/liz.2bpp"
	INCBIN "gfx/duelists/liz.attrmap.lz"
PaletteLizPortrait::
	INCBIN "gfx/duelists/liz.pal"		
SECTION "Card Gfx 1", ROMX

CardGraphics::
GrassEnergyCardGfx::
	INCBIN "gfx/cards/grassenergy.pal"
	INCBIN "gfx/cards/grassenergy.attrmap"
	INCBIN "gfx/cards/grassenergy.2bpp"
FireEnergyCardGfx::
	INCBIN "gfx/cards/fireenergy.pal"
	INCBIN "gfx/cards/fireenergy.attrmap"
	INCBIN "gfx/cards/fireenergy.2bpp"
WaterEnergyCardGfx::
	INCBIN "gfx/cards/waterenergy.pal"
	INCBIN "gfx/cards/waterenergy.attrmap"
	INCBIN "gfx/cards/waterenergy.2bpp"
LightningEnergyCardGfx::
	INCBIN "gfx/cards/lightningenergy.pal"
	INCBIN "gfx/cards/lightningenergy.attrmap"
	INCBIN "gfx/cards/lightningenergy.2bpp"
FightingEnergyCardGfx::
	INCBIN "gfx/cards/fightingenergy.pal"
	INCBIN "gfx/cards/fightingenergy.attrmap"
	INCBIN "gfx/cards/fightingenergy.2bpp"
PsychicEnergyCardGfx::
	INCBIN "gfx/cards/psychicenergy.pal"
	INCBIN "gfx/cards/psychicenergy.attrmap"
	INCBIN "gfx/cards/psychicenergy.2bpp"
DoubleColorlessEnergyCardGfx::
	INCBIN "gfx/cards/doublecolorlessenergy.pal"
	INCBIN "gfx/cards/doublecolorlessenergy.attrmap"
	INCBIN "gfx/cards/doublecolorlessenergy.2bpp"
ChikoritaCardGfx::
	INCBIN "gfx/cards/chikorita.pal"
	INCBIN "gfx/cards/chikorita.attrmap"
	INCBIN "gfx/cards/chikorita.2bpp"
BayleefCardGfx::
	INCBIN "gfx/cards/bayleef.pal"
	INCBIN "gfx/cards/bayleef.attrmap"
	INCBIN "gfx/cards/bayleef.2bpp"
CelebiCardGfx::
	INCBIN "gfx/cards/celebi.pal"
	INCBIN "gfx/cards/celebi.attrmap"
	INCBIN "gfx/cards/celebi.2bpp"
MeganiumCardGfx::
	INCBIN "gfx/cards/meganium.pal"
	INCBIN "gfx/cards/meganium.attrmap"
	INCBIN "gfx/cards/meganium.2bpp"
WurmpleCardGfx::	
	INCBIN "gfx/cards/wurmple.pal"
	INCBIN "gfx/cards/wurmple.attrmap"
	INCBIN "gfx/cards/wurmple.2bpp"
SilcoonCardGfx::
	INCBIN "gfx/cards/metapod.pal"
	INCBIN "gfx/cards/metapod.attrmap"
	INCBIN "gfx/cards/metapod.2bpp"
BeautiflyCardGfx::
	INCBIN "gfx/cards/beautifly.pal"
	INCBIN "gfx/cards/beautifly.attrmap"
	INCBIN "gfx/cards/beautifly.2bpp"
RowletCardGfx::
	INCBIN "gfx/cards/rowlet.pal"
	INCBIN "gfx/cards/rowlet.attrmap"
	INCBIN "gfx/cards/rowlet.2bpp"
DartrixCardGfx::
	INCBIN "gfx/cards/kakuna.pal"
	INCBIN "gfx/cards/kakuna.attrmap"
	INCBIN "gfx/cards/kakuna.2bpp"
IllumiseCardGfx::
	INCBIN "gfx/cards/illumise.pal"
	INCBIN "gfx/cards/illumise.attrmap"
	INCBIN "gfx/cards/illumise.2bpp"
KarrablastCardGfx::
	INCBIN "gfx/cards/karrablast.pal"
	INCBIN "gfx/cards/karrablast.attrmap"
	INCBIN "gfx/cards/karrablast.2bpp"
EscavalierCardGfx::
	INCBIN "gfx/cards/nidorino.pal"
	INCBIN "gfx/cards/nidorino.attrmap"
	INCBIN "gfx/cards/nidorino.2bpp"
	ds $58
SECTION "Card Gfx 2", ROMX
ZubatCardGfx::
	INCBIN "gfx/cards/zubat.pal"
	INCBIN "gfx/cards/zubat.attrmap"
	INCBIN "gfx/cards/zubat.2bpp"
GolbatCardGfx::
	INCBIN "gfx/cards/golbat.pal"
	INCBIN "gfx/cards/golbat.attrmap"
	INCBIN "gfx/cards/golbat.2bpp"
ApplinCardGfx::
	INCBIN "gfx/cards/applin.pal"
	INCBIN "gfx/cards/applin.attrmap"
	INCBIN "gfx/cards/applin.2bpp"
FlappleCardGfx::
	INCBIN "gfx/cards/flapple.pal"
	INCBIN "gfx/cards/flapple.attrmap"
	INCBIN "gfx/cards/flapple.2bpp"
AppletunCardGfx::
	INCBIN "gfx/cards/appletun.pal"
	INCBIN "gfx/cards/appletun.attrmap"
	INCBIN "gfx/cards/appletun.2bpp"
ShroomishCardGfx::
	INCBIN "gfx/cards/shroomish.pal"
	INCBIN "gfx/cards/shroomish.attrmap"
	INCBIN "gfx/cards/shroomish.2bpp"
BreloomCardGfx::
	INCBIN "gfx/cards/breloom.pal"
	INCBIN "gfx/cards/breloom.attrmap"
	INCBIN "gfx/cards/breloom.2bpp"
YanmaCardGfx::
	INCBIN "gfx/cards/yanma.pal"
	INCBIN "gfx/cards/yanma.attrmap"
	INCBIN "gfx/cards/yanma.2bpp"
YanmegaCardGfx::
	INCBIN "gfx/cards/yanmega.pal"
	INCBIN "gfx/cards/yanmega.attrmap"
	INCBIN "gfx/cards/yanmega.2bpp"
BounsweetCardGfx::
	INCBIN "gfx/cards/bounsweet.pal"
	INCBIN "gfx/cards/bounsweet.attrmap"
	INCBIN "gfx/cards/bounsweet.2bpp"
SteeneeCardGfx::
	INCBIN "gfx/cards/weepinbell.pal"
	INCBIN "gfx/cards/weepinbell.attrmap"
	INCBIN "gfx/cards/weepinbell.2bpp"
TsareenaCardGfx::
	INCBIN "gfx/cards/tsareena.pal"
	INCBIN "gfx/cards/tsareena.attrmap"
	INCBIN "gfx/cards/tsareena.2bpp"
PhantumpCardGfx::
	INCBIN "gfx/cards/phantump.pal"
	INCBIN "gfx/cards/phantump.attrmap"
	INCBIN "gfx/cards/phantump.2bpp"
FerrothornCardGfx::
	INCBIN "gfx/cards/ferrothorn.pal"
	INCBIN "gfx/cards/ferrothorn.attrmap"
	INCBIN "gfx/cards/ferrothorn.2bpp"
TangelaLv8CardGfx::
	INCBIN "gfx/cards/tangela1.pal"
	INCBIN "gfx/cards/tangela1.attrmap"
	INCBIN "gfx/cards/tangela1.2bpp"
GrubbinCardGfx::
	INCBIN "gfx/cards/grubbin.pal"
	INCBIN "gfx/cards/grubbin.attrmap"
	INCBIN "gfx/cards/grubbin.2bpp"
ScytherCardGfx::
	INCBIN "gfx/cards/scyther.pal"
	INCBIN "gfx/cards/scyther.attrmap"
	INCBIN "gfx/cards/scyther.2bpp"	
ScizorCardGfx::
	INCBIN "gfx/cards/scizor.pal"
	INCBIN "gfx/cards/scizor.attrmap"
	INCBIN "gfx/cards/scizor.2bpp"	
TepigCardGfx::
	INCBIN "gfx/cards/tepig.pal"
	INCBIN "gfx/cards/tepig.attrmap"
	INCBIN "gfx/cards/tepig.2bpp"	
	ds $58
SECTION "Card Gfx 3", ROMX
PigniteCardGfx::
	INCBIN "gfx/cards/pignite.pal"
	INCBIN "gfx/cards/pignite.attrmap"
	INCBIN "gfx/cards/pignite.2bpp"
EmboarCardGfx::
	INCBIN "gfx/cards/emboar.pal"
	INCBIN "gfx/cards/emboar.attrmap"
	INCBIN "gfx/cards/emboar.2bpp"
HoundourCardGfx::
	INCBIN "gfx/cards/vulpix.pal"
	INCBIN "gfx/cards/vulpix.attrmap"
	INCBIN "gfx/cards/vulpix.2bpp"
HoundoomCardGfx::
	INCBIN "gfx/cards/houndoom.pal"
	INCBIN "gfx/cards/houndoom.attrmap"
	INCBIN "gfx/cards/houndoom.2bpp"
SalazzleGfx::
	INCBIN "gfx/cards/salazzle.pal"
	INCBIN "gfx/cards/salazzle.attrmap"
	INCBIN "gfx/cards/salazzle.2bpp"
SizzlipedeCardGfx::
	INCBIN "gfx/cards/sizzlipede.pal"
	INCBIN "gfx/cards/sizzlipede.attrmap"
	INCBIN "gfx/cards/sizzlipede.2bpp"
CameruptCardGfx::
	INCBIN "gfx/cards/camerupt.pal"
	INCBIN "gfx/cards/camerupt.attrmap"
	INCBIN "gfx/cards/camerupt.2bpp"
CentiskorchCardGfx::
	INCBIN "gfx/cards/centiskorch.pal"
	INCBIN "gfx/cards/centiskorch.attrmap"
	INCBIN "gfx/cards/centiskorch.2bpp"
DarumakaCardGfx::
	INCBIN "gfx/cards/darumaka.pal"
	INCBIN "gfx/cards/darumaka.attrmap"
	INCBIN "gfx/cards/darumaka.2bpp"
DarmanitanCardGfx::
	INCBIN "gfx/cards/rapidash.pal"
	INCBIN "gfx/cards/rapidash.attrmap"
	INCBIN "gfx/cards/rapidash.2bpp"
MagmarLv24CardGfx::
	INCBIN "gfx/cards/magmar1.pal"
	INCBIN "gfx/cards/magmar1.attrmap"
	INCBIN "gfx/cards/magmar1.2bpp"
MagmortarCardGfx::
	INCBIN "gfx/cards/magmortar.pal"
	INCBIN "gfx/cards/magmortar.attrmap"
	INCBIN "gfx/cards/magmortar.2bpp"
FroakieCardGfx::
	INCBIN "gfx/cards/froakie.pal"
	INCBIN "gfx/cards/froakie.attrmap"
	INCBIN "gfx/cards/froakie.2bpp"
FrogadierCardGfx::
	INCBIN "gfx/cards/frogadier.pal"
	INCBIN "gfx/cards/frogadier.attrmap"
	INCBIN "gfx/cards/frogadier.2bpp"
GreninjaCardGfx::
	INCBIN "gfx/cards/greninja.pal"
	INCBIN "gfx/cards/greninja.attrmap"
	INCBIN "gfx/cards/greninja.2bpp"
BuizelCardGfx::
	INCBIN "gfx/cards/buizel.pal"
	INCBIN "gfx/cards/buizel.attrmap"
	INCBIN "gfx/cards/buizel.2bpp"
FloatzelCardGfx::
	INCBIN "gfx/cards/floatzel.pal"
	INCBIN "gfx/cards/floatzel.attrmap"
	INCBIN "gfx/cards/floatzel.2bpp"
TympoleCardGfx::
	INCBIN "gfx/cards/poliwag.pal"
	INCBIN "gfx/cards/poliwag.attrmap"
	INCBIN "gfx/cards/poliwag.2bpp"
PalpitoadCardGfx::
	INCBIN "gfx/cards/poliwhirl.pal"
	INCBIN "gfx/cards/poliwhirl.attrmap"
	INCBIN "gfx/cards/poliwhirl.2bpp"	
	ds $58
SECTION "Card Gfx 4", ROMX
SeismitoadCardGfx::
	INCBIN "gfx/cards/seismitoad.pal"
	INCBIN "gfx/cards/seismitoad.attrmap"
	INCBIN "gfx/cards/seismitoad.2bpp"
SkrelpCardGfx::
	INCBIN "gfx/cards/skrelp.pal"
	INCBIN "gfx/cards/skrelp.attrmap"
	INCBIN "gfx/cards/skrelp.2bpp"
DragalgeCardGfx::
	INCBIN "gfx/cards/dragalge.pal"
	INCBIN "gfx/cards/dragalge.attrmap"
	INCBIN "gfx/cards/dragalge.2bpp"
SeelCardGfx::
	INCBIN "gfx/cards/seel.pal"
	INCBIN "gfx/cards/seel.attrmap"
	INCBIN "gfx/cards/seel.2bpp"
DewgongCardGfx::
	INCBIN "gfx/cards/dewgong.pal"
	INCBIN "gfx/cards/dewgong.attrmap"
	INCBIN "gfx/cards/dewgong.2bpp"
WingullCardGfx::
	INCBIN "gfx/cards/wingull.pal"
	INCBIN "gfx/cards/wingull.attrmap"
	INCBIN "gfx/cards/wingull.2bpp"
PelipperCardGfx::
	INCBIN "gfx/cards/pelipper.pal"
	INCBIN "gfx/cards/pelipper.attrmap"
	INCBIN "gfx/cards/pelipper.2bpp"
ClauncherCardGfx::
	INCBIN "gfx/cards/clauncher.pal"
	INCBIN "gfx/cards/clauncher.attrmap"
	INCBIN "gfx/cards/clauncher.2bpp"
ClawitzerCardGfx::
	INCBIN "gfx/cards/clawitzer.pal"
	INCBIN "gfx/cards/clawitzer.attrmap"
	INCBIN "gfx/cards/clawitzer.2bpp"
HorseaCardGfx::
	INCBIN "gfx/cards/horsea.pal"
	INCBIN "gfx/cards/horsea.attrmap"
	INCBIN "gfx/cards/horsea.2bpp"
SeadraCardGfx::
	INCBIN "gfx/cards/seadra.pal"
	INCBIN "gfx/cards/seadra.attrmap"
	INCBIN "gfx/cards/seadra.2bpp"
DewpiderCardGfx::
	INCBIN "gfx/cards/dewpider.pal"
	INCBIN "gfx/cards/dewpider.attrmap"
	INCBIN "gfx/cards/dewpider.2bpp"
AraquanidCardGfx::
	INCBIN "gfx/cards/araquanid.pal"
	INCBIN "gfx/cards/araquanid.attrmap"
	INCBIN "gfx/cards/araquanid.2bpp"
ChewtleCardGfx::
	INCBIN "gfx/cards/chewtle.pal"
	INCBIN "gfx/cards/chewtle.attrmap"
	INCBIN "gfx/cards/chewtle.2bpp"
DrednawCardGfx::
	INCBIN "gfx/cards/drednaw.pal"
	INCBIN "gfx/cards/drednaw.attrmap"
	INCBIN "gfx/cards/drednaw.2bpp"
VaporeonLv42CardGfx::
	INCBIN "gfx/cards/vaporeon2.pal"
	INCBIN "gfx/cards/vaporeon2.attrmap"
	INCBIN "gfx/cards/vaporeon2.2bpp"
OmanyteCardGfx::
	INCBIN "gfx/cards/omanyte.pal"
	INCBIN "gfx/cards/omanyte.attrmap"
	INCBIN "gfx/cards/omanyte.2bpp"
OmastarCardGfx::
	INCBIN "gfx/cards/omastar.pal"
	INCBIN "gfx/cards/omastar.attrmap"
	INCBIN "gfx/cards/omastar.2bpp"
RelicanthCardGfx::
	INCBIN "gfx/cards/relicanth.pal"
	INCBIN "gfx/cards/relicanth.attrmap"
	INCBIN "gfx/cards/relicanth.2bpp"
	ds $58
SECTION "Card Gfx 5", ROMX
SuicuneCardGfx::
	INCBIN "gfx/cards/suicune.pal"
	INCBIN "gfx/cards/suicune.attrmap"
	INCBIN "gfx/cards/suicune.2bpp"
BlitzleCardGfx::
	INCBIN "gfx/cards/blitzle.pal"
	INCBIN "gfx/cards/blitzle.attrmap"
	INCBIN "gfx/cards/blitzle.2bpp"
HelioptileCardGfx::
	INCBIN "gfx/cards/pikachu3.pal"
	INCBIN "gfx/cards/pikachu3.attrmap"
	INCBIN "gfx/cards/pikachu3.2bpp"
EmolgaCardGfx::
	INCBIN "gfx/cards/pikachu2.pal"
	INCBIN "gfx/cards/pikachu2.attrmap"
	INCBIN "gfx/cards/pikachu2.2bpp"
PincurchinCardGfx::
	INCBIN "gfx/cards/pincurchin.pal"
	INCBIN "gfx/cards/pincurchin.attrmap"
	INCBIN "gfx/cards/pincurchin.2bpp"
ShinxCardGfx::
	INCBIN "gfx/cards/shinx.pal"
	INCBIN "gfx/cards/shinx.attrmap"
	INCBIN "gfx/cards/shinx.2bpp"
LuxioCardGfx::
	INCBIN "gfx/cards/luxio.pal"
	INCBIN "gfx/cards/luxio.attrmap"
	INCBIN "gfx/cards/luxio.2bpp"
LuxrayCardGfx::
	INCBIN "gfx/cards/surfingpikachu2.pal"
	INCBIN "gfx/cards/surfingpikachu2.attrmap"
	INCBIN "gfx/cards/surfingpikachu2.2bpp"
ZebstrikaCardGfx::
	INCBIN "gfx/cards/zebstrika.pal"
	INCBIN "gfx/cards/zebstrika.attrmap"
	INCBIN "gfx/cards/zebstrika.2bpp"
HelioliskCardGfx::
	INCBIN "gfx/cards/heliolisk.pal"
	INCBIN "gfx/cards/heliolisk.attrmap"
	INCBIN "gfx/cards/heliolisk.2bpp"
MagnemiteLv13CardGfx::
	INCBIN "gfx/cards/magnemite.pal"
	INCBIN "gfx/cards/magnemite.attrmap"
	INCBIN "gfx/cards/magnemite.2bpp"
CharjabugCardGfx::
	INCBIN "gfx/cards/charjabug.pal"
	INCBIN "gfx/cards/charjabug.attrmap"
	INCBIN "gfx/cards/charjabug.2bpp"
MagnetonLv28CardGfx::
	INCBIN "gfx/cards/magneton1.pal"
	INCBIN "gfx/cards/magneton1.attrmap"
	INCBIN "gfx/cards/magneton1.2bpp"
MagnezoneCardGfx::
	INCBIN "gfx/cards/magnezone.pal"
	INCBIN "gfx/cards/magnezone.attrmap"
	INCBIN "gfx/cards/magnezone.2bpp"
ToxelCardGfx::
	INCBIN "gfx/cards/toxel.pal"
	INCBIN "gfx/cards/toxel.attrmap"
	INCBIN "gfx/cards/toxel.2bpp"
ToxtricityLv35CardGfx::
	INCBIN "gfx/cards/electrode1.pal"
	INCBIN "gfx/cards/electrode1.attrmap"
	INCBIN "gfx/cards/electrode1.2bpp"
ElectrikeCardGfx::
	INCBIN "gfx/cards/electabuzz1.pal"
	INCBIN "gfx/cards/electabuzz1.attrmap"
	INCBIN "gfx/cards/electabuzz1.2bpp"
ElectabuzzLv35CardGfx::
	INCBIN "gfx/cards/electabuzz2.pal"
	INCBIN "gfx/cards/electabuzz2.attrmap"
	INCBIN "gfx/cards/electabuzz2.2bpp"
	ds $58
SECTION "Card Gfx 6", ROMX
ManectricCardGfx::
	INCBIN "gfx/cards/manectric.pal"
	INCBIN "gfx/cards/manectric.attrmap"
	INCBIN "gfx/cards/manectric.2bpp"
JolteonLv29CardGfx::
	INCBIN "gfx/cards/jolteon2.pal"
	INCBIN "gfx/cards/jolteon2.attrmap"
	INCBIN "gfx/cards/jolteon2.2bpp"
VikavoltCardGfx::
	INCBIN "gfx/cards/vikavolt.pal"
	INCBIN "gfx/cards/vikavolt.attrmap"
	INCBIN "gfx/cards/vikavolt.2bpp"
ZeraoraCardGfx::
	INCBIN "gfx/cards/zeraora.pal"
	INCBIN "gfx/cards/zeraora.attrmap"
	INCBIN "gfx/cards/zeraora.2bpp"
RaikouCardGfx::
	INCBIN "gfx/cards/raikou.pal"
	INCBIN "gfx/cards/raikou.attrmap"
	INCBIN "gfx/cards/raikou.2bpp"
MeowthCardGfx::
	INCBIN "gfx/cards/meowth.pal"
	INCBIN "gfx/cards/meowth.attrmap"
	INCBIN "gfx/cards/meowth.2bpp"
PerrserkerCardGfx::
	INCBIN "gfx/cards/perrserker.pal"
	INCBIN "gfx/cards/perrserker.attrmap"
	INCBIN "gfx/cards/perrserker.2bpp"
SilicobraCardGfx::
	INCBIN "gfx/cards/silicobra.pal"
	INCBIN "gfx/cards/silicobra.attrmap"
	INCBIN "gfx/cards/silicobra.2bpp"
SandacondaCardGfx::
	INCBIN "gfx/cards/dugtrio.pal"
	INCBIN "gfx/cards/dugtrio.attrmap"
	INCBIN "gfx/cards/dugtrio.2bpp"
CroagunkCardGfx::
	INCBIN "gfx/cards/croagunk.pal"
	INCBIN "gfx/cards/croagunk.attrmap"
	INCBIN "gfx/cards/croagunk.2bpp"
ToxicroakCardGfx::
	INCBIN "gfx/cards/toxicroak.pal"
	INCBIN "gfx/cards/toxicroak.attrmap"
	INCBIN "gfx/cards/toxicroak.2bpp"
KrookodileCardGfx::
	INCBIN "gfx/cards/krookodile.pal"
	INCBIN "gfx/cards/krookodile.attrmap"
	INCBIN "gfx/cards/krookodile.2bpp"
TrapinchCardGfx::
	INCBIN "gfx/cards/trapinch.pal"
	INCBIN "gfx/cards/trapinch.attrmap"
	INCBIN "gfx/cards/trapinch.2bpp"
VibravaCardGfx::
	INCBIN "gfx/cards/vibrava.pal"
	INCBIN "gfx/cards/vibrava.attrmap"
	INCBIN "gfx/cards/vibrava.2bpp"
FlygonCardGfx::
	INCBIN "gfx/cards/flygon.pal"
	INCBIN "gfx/cards/flygon.attrmap"
	INCBIN "gfx/cards/flygon.2bpp"
HawluchaCardGfx::
	INCBIN "gfx/cards/hawlucha.pal"
	INCBIN "gfx/cards/hawlucha.attrmap"
	INCBIN "gfx/cards/hawlucha.2bpp"
LarvitarCardGfx::
	INCBIN "gfx/cards/larvitar.pal"
	INCBIN "gfx/cards/larvitar.attrmap"
	INCBIN "gfx/cards/larvitar.2bpp"
TyranitarCardGfx::
	INCBIN "gfx/cards/tyranitar.pal"
	INCBIN "gfx/cards/tyranitar.attrmap"
	INCBIN "gfx/cards/tyranitar.2bpp"
PupitarCardGfx::
	INCBIN "gfx/cards/pupitar.pal"
	INCBIN "gfx/cards/pupitar.attrmap"
	INCBIN "gfx/cards/pupitar.2bpp"
	ds $58
SECTION "Card Gfx 7", ROMX
HitmonleeCardGfx::
	INCBIN "gfx/cards/hitmonlee.pal"
	INCBIN "gfx/cards/hitmonlee.attrmap"
	INCBIN "gfx/cards/hitmonlee.2bpp"
HitmonchanCardGfx::
	INCBIN "gfx/cards/hitmonchan.pal"
	INCBIN "gfx/cards/hitmonchan.attrmap"
	INCBIN "gfx/cards/hitmonchan.2bpp"
CufantCardGfx::
	INCBIN "gfx/cards/cufant.pal"
	INCBIN "gfx/cards/cufant.attrmap"
	INCBIN "gfx/cards/cufant.2bpp"
CopperajahCardGfx::
	INCBIN "gfx/cards/copperajah.pal"
	INCBIN "gfx/cards/copperajah.attrmap"
	INCBIN "gfx/cards/copperajah.2bpp"
KabutoCardGfx::
	INCBIN "gfx/cards/kabuto.pal"
	INCBIN "gfx/cards/kabuto.attrmap"
	INCBIN "gfx/cards/kabuto.2bpp"
KabutopsCardGfx::
	INCBIN "gfx/cards/kabutops.pal"
	INCBIN "gfx/cards/kabutops.attrmap"
	INCBIN "gfx/cards/kabutops.2bpp"
TyrantrumCardGfx::
	INCBIN "gfx/cards/tyrantrum.pal"
	INCBIN "gfx/cards/tyrantrum.attrmap"
	INCBIN "gfx/cards/tyrantrum.2bpp"
DeinoCardGfx::
	INCBIN "gfx/cards/deino.pal"
	INCBIN "gfx/cards/deino.attrmap"
	INCBIN "gfx/cards/deino.2bpp"
ZweilousCardGfx::
	INCBIN "gfx/cards/zweilous.pal"
	INCBIN "gfx/cards/zweilous.attrmap"
	INCBIN "gfx/cards/zweilous.2bpp"
HydreigonCardGfx::
	INCBIN "gfx/cards/hydreigon.pal"
	INCBIN "gfx/cards/hydreigon.attrmap"
	INCBIN "gfx/cards/hydreigon.2bpp"
BruxishCardGfx::
	INCBIN "gfx/cards/bruxish.pal"
	INCBIN "gfx/cards/bruxish.attrmap"
	INCBIN "gfx/cards/bruxish.2bpp"
DuskullCardGfx::
	INCBIN "gfx/cards/duskull.pal"
	INCBIN "gfx/cards/duskull.attrmap"	
	INCBIN "gfx/cards/duskull.2bpp"
MisdreavusCardGfx::
	INCBIN "gfx/cards/misdreavus.pal"
	INCBIN "gfx/cards/misdreavus.attrmap"
	INCBIN "gfx/cards/misdreavus.2bpp"	
DusclopsCardGfx::
	INCBIN "gfx/cards/dusclops.pal"
	INCBIN "gfx/cards/dusclops.attrmap"	
	INCBIN "gfx/cards/dusclops.2bpp"
MismagiusCardGfx::
	INCBIN "gfx/cards/mismagius.pal"
	INCBIN "gfx/cards/mismagius.attrmap"
	INCBIN "gfx/cards/mismagius.2bpp"	
DusknoirCardGfx::
	INCBIN "gfx/cards/dusknoir.pal"
	INCBIN "gfx/cards/dusknoir.attrmap"	
	INCBIN "gfx/cards/dusknoir.2bpp"
MurkrowCardGfx::
	INCBIN "gfx/cards/murkrow.pal"
	INCBIN "gfx/cards/murkrow.attrmap"	
	INCBIN "gfx/cards/murkrow.2bpp"
HonchkrowCardGfx::
	INCBIN "gfx/cards/honchkrow.pal"
	INCBIN "gfx/cards/honchkrow.attrmap"
	INCBIN "gfx/cards/honchkrow.2bpp"	
SpiritombCardGfx::
	INCBIN "gfx/cards/mrmime.pal"
	INCBIN "gfx/cards/mrmime.attrmap"	
	INCBIN "gfx/cards/mrmime.2bpp"
	ds $58
SECTION "Card Gfx 8", ROMX
MewtwoCardGfx::
	INCBIN "gfx/cards/mewtwo.pal"
	INCBIN "gfx/cards/mewtwo.attrmap"	
	INCBIN "gfx/cards/mewtwo.2bpp"
CresseliaCardGfx::
	INCBIN "gfx/cards/cresselia.pal"
	INCBIN "gfx/cards/cresselia.attrmap"	
	INCBIN "gfx/cards/cresselia.2bpp"
MimikyuCardGfx::
	INCBIN "gfx/cards/mimikyu.pal"
	INCBIN "gfx/cards/mimikyu.attrmap"	
	INCBIN "gfx/cards/mimikyu.2bpp"
MewLv23CardGfx::
	INCBIN "gfx/cards/mew3.pal"
	INCBIN "gfx/cards/mew3.attrmap"	
	INCBIN "gfx/cards/mew3.2bpp"
RookideeCardGfx::
	INCBIN "gfx/cards/rookidee.pal"
	INCBIN "gfx/cards/rookidee.attrmap"	
	INCBIN "gfx/cards/rookidee.2bpp"
CorvisquireCardGfx::
	INCBIN "gfx/cards/corvisquire.pal"
	INCBIN "gfx/cards/corvisquire.attrmap"	
	INCBIN "gfx/cards/corvisquire.2bpp"
CorviknightCardGfx::
	INCBIN "gfx/cards/corviknight.pal"
	INCBIN "gfx/cards/corviknight.attrmap"	
	INCBIN "gfx/cards/corviknight.2bpp"
ZigzagoonCardGfx::
	INCBIN "gfx/cards/rattata.pal"
	INCBIN "gfx/cards/rattata.attrmap"	
	INCBIN "gfx/cards/rattata.2bpp"
LinooneCardGfx::
	INCBIN "gfx/cards/raticate.pal"
	INCBIN "gfx/cards/raticate.attrmap"	
	INCBIN "gfx/cards/raticate.2bpp"
TailowCardGfx::
	INCBIN "gfx/cards/tailow.pal"
	INCBIN "gfx/cards/tailow.attrmap"	
	INCBIN "gfx/cards/tailow.2bpp"
SwellowCardGfx::
	INCBIN "gfx/cards/swellow.pal"
	INCBIN "gfx/cards/swellow.attrmap"	
	INCBIN "gfx/cards/swellow.2bpp"	
TogepiCardGfx::
	INCBIN "gfx/cards/togepi.pal"
	INCBIN "gfx/cards/togepi.attrmap"
	INCBIN "gfx/cards/togepi.2bpp"	
TogeticCardGfx::
	INCBIN "gfx/cards/togetic.pal"
	INCBIN "gfx/cards/togetic.attrmap"	
	INCBIN "gfx/cards/togetic.2bpp"
TogekissCardGfx::
	INCBIN "gfx/cards/togekiss.pal"
	INCBIN "gfx/cards/togekiss.attrmap"	
	INCBIN "gfx/cards/togekiss.2bpp"
CyclizarCardGfx::
	INCBIN "gfx/cards/cyclizar.pal"
	INCBIN "gfx/cards/cyclizar.attrmap"	
	INCBIN "gfx/cards/cyclizar.2bpp"
StuffulNameGfx::
	INCBIN "gfx/cards/jigglypuff3.pal"
	INCBIN "gfx/cards/jigglypuff3.attrmap"
	INCBIN "gfx/cards/jigglypuff3.2bpp"	
BewearCardGfx::
	INCBIN "gfx/cards/bewear.pal"
	INCBIN "gfx/cards/bewear.attrmap"	
	INCBIN "gfx/cards/bewear.2bpp"
BidoofCardGfx::
	INCBIN "gfx/cards/bidoof.pal"
	INCBIN "gfx/cards/bidoof.attrmap"
	INCBIN "gfx/cards/bidoof.2bpp"	
BibarelCardGfx::
	INCBIN "gfx/cards/bibarel.pal"
	INCBIN "gfx/cards/bibarel.attrmap"
	INCBIN "gfx/cards/bibarel.2bpp"	
	ds $58	
SECTION "Card Gfx 9", ROMX
RayquazaCardGfx::
	INCBIN "gfx/cards/rayquaza.pal"
	INCBIN "gfx/cards/rayquaza.attrmap"	
	INCBIN "gfx/cards/rayquaza.2bpp"
RuffletCardGfx::
	INCBIN "gfx/cards/doduo.pal"
	INCBIN "gfx/cards/doduo.attrmap"	
	INCBIN "gfx/cards/doduo.2bpp"
BraviaryCardGfx::
	INCBIN "gfx/cards/braviary.pal"
	INCBIN "gfx/cards/braviary.attrmap"	
	INCBIN "gfx/cards/braviary.2bpp"
DrampaCardGfx::
	INCBIN "gfx/cards/drampa.pal"
	INCBIN "gfx/cards/drampa.attrmap"	
	INCBIN "gfx/cards/drampa.2bpp"
ChatotCardGfx::
	INCBIN "gfx/cards/kangaskhan.pal"
	INCBIN "gfx/cards/kangaskhan.attrmap"
	INCBIN "gfx/cards/kangaskhan.2bpp"	
StantlerCardGfx::
	INCBIN "gfx/cards/stantler.pal"
	INCBIN "gfx/cards/stantler.attrmap"
	INCBIN "gfx/cards/stantler.2bpp"	
VenipedeCardGfx::
	INCBIN "gfx/cards/venipede.pal"	
	INCBIN "gfx/cards/venipede.attrmap"
	INCBIN "gfx/cards/venipede.2bpp"
WhirlipedeCardGfx::
	INCBIN "gfx/cards/whirlipede.pal"	
	INCBIN "gfx/cards/whirlipede.attrmap"
	INCBIN "gfx/cards/whirlipede.2bpp"
ScolipedeCardGfx::
	INCBIN "gfx/cards/scolipede.pal"	
	INCBIN "gfx/cards/scolipede.attrmap"
	INCBIN "gfx/cards/scolipede.2bpp"
DittoCardGfx::
	INCBIN "gfx/cards/ditto.pal"
	INCBIN "gfx/cards/ditto.attrmap"
	INCBIN "gfx/cards/ditto.2bpp"	
GoomyCardGfx::
	INCBIN "gfx/cards/goomy.pal"
	INCBIN "gfx/cards/goomy.attrmap"
	INCBIN "gfx/cards/goomy.2bpp"	
SliggooCardGfx::
	INCBIN "gfx/cards/dragonair.pal"
	INCBIN "gfx/cards/dragonair.attrmap"	
	INCBIN "gfx/cards/dragonair.2bpp"
LugiaCardGfx::
	INCBIN "gfx/cards/lugia.pal"
	INCBIN "gfx/cards/lugia.attrmap"	
	INCBIN "gfx/cards/lugia.2bpp"
GoodraCardGfx::
	INCBIN "gfx/cards/dragonite2.pal"
	INCBIN "gfx/cards/dragonite2.attrmap"	
	INCBIN "gfx/cards/dragonite2.2bpp"
ProfessorOakCardGfx::
	INCBIN "gfx/cards/professoroak.pal"
	INCBIN "gfx/cards/professoroak.attrmap"	
	INCBIN "gfx/cards/professoroak.2bpp"
ImposterProfessorOakCardGfx::
	INCBIN "gfx/cards/imposterprofessoroak.pal"
	INCBIN "gfx/cards/imposterprofessoroak.attrmap"	
	INCBIN "gfx/cards/imposterprofessoroak.2bpp"
BillCardGfx::
	INCBIN "gfx/cards/bill.pal"
	INCBIN "gfx/cards/bill.attrmap"	
	INCBIN "gfx/cards/bill.2bpp"
MrFujiCardGfx::
	INCBIN "gfx/cards/mrfuji.pal"
	INCBIN "gfx/cards/mrfuji.attrmap"
	INCBIN "gfx/cards/mrfuji.2bpp"	
	ds $58
SECTION "Card Gfx 10", ROMX
LassCardGfx::
	INCBIN "gfx/cards/marnie.pal"
	INCBIN "gfx/cards/marnie.attrmap"	
	INCBIN "gfx/cards/marnie.2bpp"
ImakuniCardGfx::
	INCBIN "gfx/cards/imakuni.pal"
	INCBIN "gfx/cards/imakuni.attrmap"	
	INCBIN "gfx/cards/imakuni.2bpp"
PokemonTraderCardGfx::
	INCBIN "gfx/cards/pokemontrader.pal"
	INCBIN "gfx/cards/pokemontrader.attrmap"
	INCBIN "gfx/cards/pokemontrader.2bpp"	
RareCandyCardGfx::
	INCBIN "gfx/cards/pokemonbreeder.pal"
	INCBIN "gfx/cards/pokemonbreeder.attrmap"
	INCBIN "gfx/cards/pokemonbreeder.2bpp"	
SubstituteDollCardGfx::
	INCBIN "gfx/cards/substitute.pal"
	INCBIN "gfx/cards/substitute.attrmap"	
	INCBIN "gfx/cards/substitute.2bpp"
MysteriousFossilCardGfx::
	INCBIN "gfx/cards/mysteriousfossil.pal"
	INCBIN "gfx/cards/mysteriousfossil.attrmap"	
	INCBIN "gfx/cards/mysteriousfossil.2bpp"
EnergyRetrievalCardGfx::
	INCBIN "gfx/cards/energyretrieval.pal"
	INCBIN "gfx/cards/energyretrieval.attrmap"	
	INCBIN "gfx/cards/energyretrieval.2bpp"
SuperEnergyRetrievalCardGfx::
	INCBIN "gfx/cards/superenergyretrieval.pal"
	INCBIN "gfx/cards/superenergyretrieval.attrmap"	
	INCBIN "gfx/cards/superenergyretrieval.2bpp"
EnergySearchCardGfx::
	INCBIN "gfx/cards/energysearch.pal"
	INCBIN "gfx/cards/energysearch.attrmap"	
	INCBIN "gfx/cards/energysearch.2bpp"
EnergyRemovalCardGfx::
	INCBIN "gfx/cards/energyremoval.pal"
	INCBIN "gfx/cards/energyremoval.attrmap"
	INCBIN "gfx/cards/energyremoval.2bpp"	
PokemonCenterCardGfx::
	INCBIN "gfx/cards/pokemoncenter.pal"
	INCBIN "gfx/cards/pokemoncenter.attrmap"
	INCBIN "gfx/cards/pokemoncenter.2bpp"	
PokeBallCardGfx::
	INCBIN "gfx/cards/pokeball.pal"
	INCBIN "gfx/cards/pokeball.attrmap"	
	INCBIN "gfx/cards/pokeball.2bpp"
ScoopUpCardGfx::
	INCBIN "gfx/cards/scoopup.pal"
	INCBIN "gfx/cards/scoopup.attrmap"	
	INCBIN "gfx/cards/scoopup.2bpp"
ComputerSearchCardGfx::
	INCBIN "gfx/cards/computersearch.pal"
	INCBIN "gfx/cards/computersearch.attrmap"	
	INCBIN "gfx/cards/computersearch.2bpp"
PokedexCardGfx::
	INCBIN "gfx/cards/rotomdex.pal"
	INCBIN "gfx/cards/rotomdex.attrmap"	
	INCBIN "gfx/cards/rotomdex.2bpp"
PlusPowerCardGfx::
	INCBIN "gfx/cards/pluspower.pal"
	INCBIN "gfx/cards/pluspower.attrmap"	
	INCBIN "gfx/cards/pluspower.2bpp"
DefenderCardGfx::
	INCBIN "gfx/cards/defender.pal"
	INCBIN "gfx/cards/defender.attrmap"	
	INCBIN "gfx/cards/defender.2bpp"
ItemFinderCardGfx::
	INCBIN "gfx/cards/itemfinder.pal"
	INCBIN "gfx/cards/itemfinder.attrmap"
	INCBIN "gfx/cards/itemfinder.2bpp"
BossOrdersCardGfx::
	INCBIN "gfx/cards/bossorders.pal"
	INCBIN "gfx/cards/bossorders.attrmap"
	INCBIN "gfx/cards/bossorders.2bpp"	
	ds $58

SECTION "Card Gfx 11", ROMX
DevolutionSprayCardGfx::
	INCBIN "gfx/cards/devolutionspray.pal"
	INCBIN "gfx/cards/devolutionspray.attrmap"	
	INCBIN "gfx/cards/devolutionspray.2bpp"
PotionCardGfx::
	INCBIN "gfx/cards/potion.pal"
	INCBIN "gfx/cards/potion.attrmap"	
	INCBIN "gfx/cards/potion.2bpp"
SuperPotionCardGfx::
	INCBIN "gfx/cards/superpotion.pal"
	INCBIN "gfx/cards/superpotion.attrmap"	
	INCBIN "gfx/cards/superpotion.2bpp"
FullHealCardGfx::
	INCBIN "gfx/cards/fullheal.pal"
	INCBIN "gfx/cards/fullheal.attrmap"	
	INCBIN "gfx/cards/fullheal.2bpp"
ReviveCardGfx::
	INCBIN "gfx/cards/revive.pal"
	INCBIN "gfx/cards/revive.attrmap"	
	INCBIN "gfx/cards/revive.2bpp"
HeavyBallCardGfx::
	INCBIN "gfx/cards/heavyball.pal"
	INCBIN "gfx/cards/heavyball.attrmap"	
	INCBIN "gfx/cards/heavyball.2bpp"
PokemonFluteCardGfx::
	INCBIN "gfx/cards/pokemonflute.pal"
	INCBIN "gfx/cards/pokemonflute.attrmap"	
	INCBIN "gfx/cards/pokemonflute.2bpp"
CopycatCardGfx::
	INCBIN "gfx/cards/copycat.pal"
	INCBIN "gfx/cards/copycat.attrmap"	
	INCBIN "gfx/cards/copycat.2bpp"
RecycleCardGfx::
	INCBIN "gfx/cards/recycle.pal"
	INCBIN "gfx/cards/recycle.attrmap"
	INCBIN "gfx/cards/recycle.2bpp"		
EnteiCardGfx::
	INCBIN "gfx/cards/entei.pal"
	INCBIN "gfx/cards/entei.attrmap"	
	INCBIN "gfx/cards/entei.2bpp"
EspeonCardGfx::
	INCBIN "gfx/cards/espeon.pal"
	INCBIN "gfx/cards/espeon.attrmap"	
	INCBIN "gfx/cards/espeon.2bpp"
VolbeatCardGfx::
	INCBIN "gfx/cards/volbeat.pal"	
	INCBIN "gfx/cards/volbeat.attrmap"
	INCBIN "gfx/cards/volbeat.2bpp"	
KilowattrelCardGfx::
	INCBIN "gfx/cards/kilowattrel.pal"	
	INCBIN "gfx/cards/kilowattrel.attrmap"
	INCBIN "gfx/cards/kilowattrel.2bpp"	
DunsparceCardGfx::
	INCBIN "gfx/cards/dunsparce.pal"	
	INCBIN "gfx/cards/dunsparce.attrmap"	
	INCBIN "gfx/cards/dunsparce.2bpp"		
Porygon2CardGfx::
	INCBIN "gfx/cards/porygon2.pal"		
	INCBIN "gfx/cards/porygon2.attrmap"	
	INCBIN "gfx/cards/porygon2.2bpp"
PorygonZCardGfx::
	INCBIN "gfx/cards/porygonz.pal"		
	INCBIN "gfx/cards/porygonz.attrmap"	
	INCBIN "gfx/cards/porygonz.2bpp"
CarbinkCardGfx::
	INCBIN "gfx/cards/carbink.pal"			
	INCBIN "gfx/cards/carbink.attrmap"	
	INCBIN "gfx/cards/carbink.2bpp"
SkorupiCardGfx::
	INCBIN "gfx/cards/skorupi.pal"	
	INCBIN "gfx/cards/skorupi.attrmap"
	INCBIN "gfx/cards/skorupi.2bpp"	
DrapionCardGfx::
	INCBIN "gfx/cards/drapion.pal"		
	INCBIN "gfx/cards/drapion.attrmap"	
	INCBIN "gfx/cards/drapion.2bpp"	
SECTION "Gfx 13", ROMX
MintGfx::
	INCBIN "gfx/duelists/mint.2bpp"
	INCBIN "gfx/duelists/mint.attrmap.lz"
PaletteMintPortrait::
    INCBIN "gfx/duelists/mint.pal"	
OWMintGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/mint.2bpp"	
Palette161::
	db 0
	db 1

	rgb 28, 28, 24
	rgb 28, 16, 12
	rgb  4,  8, 28
	rgb  0,  0,  8

Palette162::
	db 0
	db 1

	rgb 28, 28, 24
	rgb 28, 28, 24
	rgb  14, 11, 24
	rgb  1,  0,  5
DarknessGfx::
	dw $a2
	INCBIN "gfx/titlescreen/energies/darkness.2bpp"	
