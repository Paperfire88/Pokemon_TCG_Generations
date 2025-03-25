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
INCBIN "gfx/duel/cgb_symbols.2bpp", $0, $808

SECTION "Gfx 2", ROMX

INCBIN "gfx/duel/cgb_symbols.2bpp", $808, $8

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

PlayerGfx::
	dw 36
	INCBIN "gfx/duelists/player.2bpp"

DuelStarGfx::
	dw $2
	INCBIN "gfx/duel/anims/star.2bpp"

DuelPowderGfx::
	dw $1
	INCBIN "gfx/duel/anims/powder.2bpp"

SECTION "Gfx 4", ROMX

OverworldMapTiles::
	dw 193
	INCBIN "gfx/overworld_map.2bpp"

MasonLaboratoryTilesetGfx::
	dw 151
	INCBIN "gfx/tilesets/masonlaboratory.2bpp"

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

OWPlayerGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/player.2bpp"

DuelPetalGfx::
	dw $1
	INCBIN "gfx/duel/anims/petal.2bpp"

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

LightningClubTilesetGfx::
	dw 131
	INCBIN "gfx/tilesets/lightningclub.2bpp"

PsychicClubTilesetGfx::
	dw 58
	INCBIN "gfx/tilesets/psychicclub.2bpp"

ScienceClubTilesetGfx::
	dw 82
	INCBIN "gfx/tilesets/scienceclub.2bpp"

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

DuelPoisonGfx::
	dw $4
	INCBIN "gfx/duel/anims/poison.2bpp"

AnimData3::
	frame_table AnimFrameTable0
	frame_data 8, 16, 0, 0
	frame_data 9, 16, 0, 0
	frame_data 0, 0, 0, 0

SECTION "Gfx 6", ROMX

ColosseumGfx::
	dw 86
	INCBIN "gfx/booster_packs/colosseum.2bpp"

EvolutionGfx::
	dw 86
	INCBIN "gfx/booster_packs/evolution.2bpp"

MysteryGfx::
	dw 86
	INCBIN "gfx/booster_packs/mystery.2bpp"

RonaldGfx::
	dw 36
	INCBIN "gfx/duelists/ronald.2bpp"

CopyrightGfx::
	dw 36
	INCBIN "gfx/copyright.2bpp"

OWClerkGfx::
	dw $8
	INCBIN "gfx/overworld_sprites/clerk.2bpp"

DuelSparkGfx::
	dw $3
	INCBIN "gfx/duel/anims/spark.2bpp"

DuelHealGfx::
	dw $2
	INCBIN "gfx/duel/anims/heal.2bpp"

SECTION "Gfx 7", ROMX

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

SECTION "Gfx 8", ROMX

TitleScreenGfx::
	dw 212
	INCBIN "gfx/titlescreen/title_screen.2bpp"

OWDrMasonGfx::
	dw $14
	INCBIN "gfx/overworld_sprites/doctormason.2bpp"

OverworldMapOAMGfx::
	dw $8
	INCBIN "gfx/overworld_map_oam.2bpp"

DuelWaterDropGfx::
	dw $3
	INCBIN "gfx/duel/anims/water_drop.2bpp"

DuelSnowGfx::
	dw $1
	INCBIN "gfx/duel/anims/snow.2bpp"

SECTION "Gfx 9", ROMX

SamGfx::
	dw 36
	INCBIN "gfx/duelists/sam.2bpp"

ImakuniGfx::
	dw 36
	INCBIN "gfx/duelists/imakuni.2bpp"

NikkiGfx::
	dw 36
	INCBIN "gfx/duelists/nikki.2bpp"

RickGfx::
	dw 36
	INCBIN "gfx/duelists/rick.2bpp"

KenGfx::
	dw 36
	INCBIN "gfx/duelists/ken.2bpp"

AmyGfx::
	dw 36
	INCBIN "gfx/duelists/amy.2bpp"

IsaacGfx::
	dw 36
	INCBIN "gfx/duelists/isaac.2bpp"

MitchGfx::
	dw 36
	INCBIN "gfx/duelists/mitch.2bpp"

GeneGfx::
	dw 36
	INCBIN "gfx/duelists/gene.2bpp"

MurrayGfx::
	dw 36
	INCBIN "gfx/duelists/murray.2bpp"

CourtneyGfx::
	dw 36
	INCBIN "gfx/duelists/courtney.2bpp"

SteveGfx::
	dw 36
	INCBIN "gfx/duelists/steve.2bpp"

JackGfx::
	dw 36
	INCBIN "gfx/duelists/jack.2bpp"

RodGfx::
	dw 36
	INCBIN "gfx/duelists/rod.2bpp"

JosephGfx::
	dw 36
	INCBIN "gfx/duelists/joseph.2bpp"

DavidGfx::
	dw 36
	INCBIN "gfx/duelists/david.2bpp"

ErikGfx::
	dw 36
	INCBIN "gfx/duelists/erik.2bpp"

JohnGfx::
	dw 36
	INCBIN "gfx/duelists/john.2bpp"

AdamGfx::
	dw 36
	INCBIN "gfx/duelists/adam.2bpp"

JonathanGfx::
	dw 36
	INCBIN "gfx/duelists/jonathan.2bpp"

JoshuaGfx::
	dw 36
	INCBIN "gfx/duelists/joshua.2bpp"

NicholasGfx::
	dw 36
	INCBIN "gfx/duelists/nicholas.2bpp"

BrandonGfx::
	dw 36
	INCBIN "gfx/duelists/brandon.2bpp"

MatthewGfx::
	dw 36
	INCBIN "gfx/duelists/matthew.2bpp"

RyanGfx::
	dw 36
	INCBIN "gfx/duelists/ryan.2bpp"

AndrewGfx::
	dw 36
	INCBIN "gfx/duelists/andrew.2bpp"

ChrisGfx::
	dw 36
	INCBIN "gfx/duelists/chris.2bpp"

MichaelGfx::
	dw 36
	INCBIN "gfx/duelists/michael.2bpp"

OWLegendaryCardGfx::
	dw $a
	INCBIN "gfx/overworld_sprites/legendary_card.2bpp"

DuelDrainGfx::
	dw $2
	INCBIN "gfx/duel/anims/drain.2bpp"

SECTION "Gfx 10", ROMX

DanielGfx::
	dw 36
	INCBIN "gfx/duelists/daniel.2bpp"

RobertGfx::
	dw 36
	INCBIN "gfx/duelists/robert.2bpp"

BrittanyGfx::
	dw 36
	INCBIN "gfx/duelists/brittany.2bpp"

KristinGfx::
	dw 36
	INCBIN "gfx/duelists/kristin.2bpp"

HeatherGfx::
	dw 36
	INCBIN "gfx/duelists/heather.2bpp"

SaraGfx::
	dw 36
	INCBIN "gfx/duelists/sara.2bpp"

AmandaGfx::
	dw 36
	INCBIN "gfx/duelists/amanda.2bpp"

JenniferGfx::
	dw 36
	INCBIN "gfx/duelists/jennifer.2bpp"

JessicaGfx::
	dw 36
	INCBIN "gfx/duelists/jessica.2bpp"

StephanieGfx::
	dw 36
	INCBIN "gfx/duelists/stephanie.2bpp"

AaronGfx::
	dw 36
	INCBIN "gfx/duelists/aaron.2bpp"

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

DuelGlowGfx::
	dw $b
	INCBIN "gfx/duel/anims/glow.2bpp"

DuelSmallStarGfx::
	dw $4
	INCBIN "gfx/duel/anims/small_star.2bpp"

Palette117::
	db 0
	db 1

	rgb 27, 27, 24
	rgb 31, 31,  0
	rgb 31,  0,  0
	rgb  0,  8, 19

SECTION "Gfx 11", ROMX

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

SECTION "Gfx 12", ROMX

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

Palette119::
	db 0
	db 1

	rgb 28, 28, 24
	rgb 28, 16, 12
	rgb 28,  4,  8
	rgb  0,  0,  8

SECTION "Anims 4", ROMX
	INCLUDE "data/duel/animations/anims4.asm"

SECTION "Palettes1", ROMX
	INCLUDE "data/palettes1.asm"

SECTION "Palettes2", ROMX
	INCLUDE "data/palettes2.asm"

SECTION "Card Gfx 1", ROMX

CardGraphics::

GrassEnergyCardGfx::
	INCBIN "gfx/cards/grassenergy.2bpp"
	INCBIN "gfx/cards/grassenergy.pal"

FireEnergyCardGfx::
	INCBIN "gfx/cards/fireenergy.2bpp"
	INCBIN "gfx/cards/fireenergy.pal"

WaterEnergyCardGfx::
	INCBIN "gfx/cards/waterenergy.2bpp"
	INCBIN "gfx/cards/waterenergy.pal"

LightningEnergyCardGfx::
	INCBIN "gfx/cards/lightningenergy.2bpp"
	INCBIN "gfx/cards/lightningenergy.pal"

FightingEnergyCardGfx::
	INCBIN "gfx/cards/fightingenergy.2bpp"
	INCBIN "gfx/cards/fightingenergy.pal"

PsychicEnergyCardGfx::
	INCBIN "gfx/cards/psychicenergy.2bpp"
	INCBIN "gfx/cards/psychicenergy.pal"

DoubleColorlessEnergyCardGfx::
	INCBIN "gfx/cards/doublecolorlessenergy.2bpp"
	INCBIN "gfx/cards/doublecolorlessenergy.pal"

ChikoritaCardGfx::
	INCBIN "gfx/cards/chikorita.2bpp"
	INCBIN "gfx/cards/chikorita.pal"

BayleefCardGfx::
	INCBIN "gfx/cards/bayleef.2bpp"
	INCBIN "gfx/cards/bayleef.pal"

CelebiCardGfx::
	INCBIN "gfx/cards/venusaur1.2bpp"
	INCBIN "gfx/cards/venusaur1.pal"

MeganiumCardGfx::
	INCBIN "gfx/cards/meganium.2bpp"
	INCBIN "gfx/cards/meganium.pal"

WurmpleCardGfx::
	INCBIN "gfx/cards/wurmple.2bpp"
	INCBIN "gfx/cards/wurmple.pal"

SilcoonCardGfx::
	INCBIN "gfx/cards/metapod.2bpp"
	INCBIN "gfx/cards/metapod.pal"

BeautiflyCardGfx::
	INCBIN "gfx/cards/beautifly.2bpp"
	INCBIN "gfx/cards/beautifly.pal"

RowletCardGfx::
	INCBIN "gfx/cards/rowlet.2bpp"
	INCBIN "gfx/cards/rowlet.pal"

DartrixCardGfx::
	INCBIN "gfx/cards/kakuna.2bpp"
	INCBIN "gfx/cards/kakuna.pal"

BeedrillCardGfx::
	INCBIN "gfx/cards/beedrill.2bpp"
	INCBIN "gfx/cards/beedrill.pal"

CascoonCardGfx::
	INCBIN "gfx/cards/ekans.2bpp"
	INCBIN "gfx/cards/ekans.pal"

DustoxCardGfx::
	INCBIN "gfx/cards/arbok.2bpp"
	INCBIN "gfx/cards/arbok.pal"

ShelmetCardGfx::
	INCBIN "gfx/cards/shelmet.2bpp"
	INCBIN "gfx/cards/shelmet.pal"

AccelgorCardGfx::
	INCBIN "gfx/cards/accelgor.2bpp"
	INCBIN "gfx/cards/accelgor.pal"

	ds $58

SECTION "Card Gfx 2", ROMX

IllumiseCardGfx::
	INCBIN "gfx/cards/illumise.2bpp"
	INCBIN "gfx/cards/illumise.pal"

KarrablastCardGfx::
	INCBIN "gfx/cards/nidoranm.2bpp"
	INCBIN "gfx/cards/nidoranm.pal"

EscavalierCardGfx::
	INCBIN "gfx/cards/nidorino.2bpp"
	INCBIN "gfx/cards/nidorino.pal"

ZubatCardGfx::
	INCBIN "gfx/cards/zubat.2bpp"
	INCBIN "gfx/cards/zubat.pal"

GolbatCardGfx::
	INCBIN "gfx/cards/golbat.2bpp"
	INCBIN "gfx/cards/golbat.pal"

ApplinCardGfx::
	INCBIN "gfx/cards/applin.2bpp"
	INCBIN "gfx/cards/applin.pal"

GloomCardGfx::
	INCBIN "gfx/cards/flapple.2bpp"
	INCBIN "gfx/cards/flapple.pal"

VileplumeCardGfx::
	INCBIN "gfx/cards/appletun.2bpp"
	INCBIN "gfx/cards/appletun.pal"

ShroomishCardGfx::
	INCBIN "gfx/cards/shroomish.2bpp"
	INCBIN "gfx/cards/shroomish.pal"

BreloomCardGfx::
	INCBIN "gfx/cards/parasect.2bpp"
	INCBIN "gfx/cards/parasect.pal"

YanmaCardGfx::
	INCBIN "gfx/cards/venonat.2bpp"
	INCBIN "gfx/cards/venonat.pal"

YanmegaCardGfx::
	INCBIN "gfx/cards/yanmega.2bpp"
	INCBIN "gfx/cards/yanmega.pal"

BounsweetCardGfx::
	INCBIN "gfx/cards/bounsweet.2bpp"
	INCBIN "gfx/cards/bounsweet.pal"

SteeneeCardGfx::
	INCBIN "gfx/cards/weepinbell.2bpp"
	INCBIN "gfx/cards/weepinbell.pal"

TsareenaCardGfx::
	INCBIN "gfx/cards/tsareena.2bpp"
	INCBIN "gfx/cards/tsareena.pal"

PhantumpCardGfx::
	INCBIN "gfx/cards/phantump.2bpp"
	INCBIN "gfx/cards/phantump.pal"

TrevenantCardGfx::
	INCBIN "gfx/cards/trevenant.2bpp"
	INCBIN "gfx/cards/trevenant.pal"

SnoverCardGfx::
	INCBIN "gfx/cards/exeggcute.2bpp"
	INCBIN "gfx/cards/exeggcute.pal"

AbomasnowCardGfx::
	INCBIN "gfx/cards/abomasnow.2bpp"
	INCBIN "gfx/cards/abomasnow.pal"

FerroseedCardGfx::
	INCBIN "gfx/cards/ferroseed.2bpp"
	INCBIN "gfx/cards/ferroseed.pal"

	ds $58

SECTION "Card Gfx 3", ROMX

FerrothornCardGfx::
	INCBIN "gfx/cards/ferrothorn.2bpp"
	INCBIN "gfx/cards/ferrothorn.pal"

TangelaLv8CardGfx::
	INCBIN "gfx/cards/tangela1.2bpp"
	INCBIN "gfx/cards/tangela1.pal"

GrubbinCardGfx::
	INCBIN "gfx/cards/tangela2.2bpp"
	INCBIN "gfx/cards/tangela2.pal"

ScytherCardGfx::
	INCBIN "gfx/cards/scyther.2bpp"
	INCBIN "gfx/cards/scyther.pal"

ScizorCardGfx::
	INCBIN "gfx/cards/scizor.2bpp"
	INCBIN "gfx/cards/scizor.pal"

TepigCardGfx::
	INCBIN "gfx/cards/charmander.2bpp"
	INCBIN "gfx/cards/charmander.pal"

CharmeleonCardGfx::
	INCBIN "gfx/cards/charmeleon.2bpp"
	INCBIN "gfx/cards/charmeleon.pal"

CharizardCardGfx::
	INCBIN "gfx/cards/charizard.2bpp"
	INCBIN "gfx/cards/charizard.pal"

HoundourCardGfx::
	INCBIN "gfx/cards/vulpix.2bpp"
	INCBIN "gfx/cards/vulpix.pal"

HoundoomCardGfx::
	INCBIN "gfx/cards/houndoom.2bpp"
	INCBIN "gfx/cards/houndoom.pal"

SalazzleGfx::
	INCBIN "gfx/cards/salazzle.2bpp"
	INCBIN "gfx/cards/salazzle.pal"

SizzlipedeCardGfx::
	INCBIN "gfx/cards/sizzlipede.2bpp"
	INCBIN "gfx/cards/sizzlipede.pal"

CameruptCardGfx::
	INCBIN "gfx/cards/camerupt.2bpp"
	INCBIN "gfx/cards/camerupt.pal"

CentiskorchCardGfx::
	INCBIN "gfx/cards/centiskorch.2bpp"
	INCBIN "gfx/cards/centiskorch.pal"

DarumakaCardGfx::
	INCBIN "gfx/cards/darumaka.2bpp"
	INCBIN "gfx/cards/darumaka.pal"

DarmanitanCardGfx::
	INCBIN "gfx/cards/rapidash.2bpp"
	INCBIN "gfx/cards/rapidash.pal"

MagmarLv24CardGfx::
	INCBIN "gfx/cards/magmar1.2bpp"
	INCBIN "gfx/cards/magmar1.pal"

MagmortarCardGfx::
	INCBIN "gfx/cards/magmortar.2bpp"
	INCBIN "gfx/cards/magmortar.pal"

NumelCardGfx::
	INCBIN "gfx/cards/numel.2bpp"
	INCBIN "gfx/cards/numel.pal"

FlareonLv28CardGfx::
	INCBIN "gfx/cards/flareon2.2bpp"
	INCBIN "gfx/cards/flareon2.pal"

TortunatorCardGfx::
	INCBIN "gfx/cards/turtonator.2bpp"
	INCBIN "gfx/cards/turtonator.pal"

	ds $58

SECTION "Card Gfx 4", ROMX

FroakieCardGfx::
	INCBIN "gfx/cards/squirtle.2bpp"
	INCBIN "gfx/cards/squirtle.pal"

WartortleCardGfx::
	INCBIN "gfx/cards/frogadier.2bpp"
	INCBIN "gfx/cards/frogadier.pal"

GreninjaCardGfx::
	INCBIN "gfx/cards/greninja.2bpp"
	INCBIN "gfx/cards/greninja.pal"

BuizelCardGfx::
	INCBIN "gfx/cards/buizel.2bpp"
	INCBIN "gfx/cards/buizel.pal"

FloatzelCardGfx::
	INCBIN "gfx/cards/floatzel.2bpp"
	INCBIN "gfx/cards/floatzel.pal"

TympoleCardGfx::
	INCBIN "gfx/cards/poliwag.2bpp"
	INCBIN "gfx/cards/poliwag.pal"

PalpitoadCardGfx::
	INCBIN "gfx/cards/poliwhirl.2bpp"
	INCBIN "gfx/cards/poliwhirl.pal"

SeismitoadCardGfx::
	INCBIN "gfx/cards/seismitoad.2bpp"
	INCBIN "gfx/cards/seismitoad.pal"

SkrelpCardGfx::
	INCBIN "gfx/cards/tentacool.2bpp"
	INCBIN "gfx/cards/tentacool.pal"

DragalgeCardGfx::
	INCBIN "gfx/cards/dragalge.2bpp"
	INCBIN "gfx/cards/dragalge.pal"

SeelCardGfx::
	INCBIN "gfx/cards/seel.2bpp"
	INCBIN "gfx/cards/seel.pal"

DewgongCardGfx::
	INCBIN "gfx/cards/dewgong.2bpp"
	INCBIN "gfx/cards/dewgong.pal"

WingullCardGfx::
	INCBIN "gfx/cards/wingull.2bpp"
	INCBIN "gfx/cards/wingull.pal"

PelipperCardGfx::
	INCBIN "gfx/cards/pelipper.2bpp"
	INCBIN "gfx/cards/pelipper.pal"

ClauncherCardGfx::
	INCBIN "gfx/cards/clauncher.2bpp"
	INCBIN "gfx/cards/clauncher.pal"

ClawitzerCardGfx::
	INCBIN "gfx/cards/clawitzer.2bpp"
	INCBIN "gfx/cards/clawitzer.pal"

HorseaCardGfx::
	INCBIN "gfx/cards/horsea.2bpp"
	INCBIN "gfx/cards/horsea.pal"

SeadraCardGfx::
	INCBIN "gfx/cards/seadra.2bpp"
	INCBIN "gfx/cards/seadra.pal"

GoldeenCardGfx::
	INCBIN "gfx/cards/goldeen.2bpp"
	INCBIN "gfx/cards/goldeen.pal"

SeakingCardGfx::
	INCBIN "gfx/cards/seaking.2bpp"
	INCBIN "gfx/cards/seaking.pal"

	ds $58

SECTION "Card Gfx 5", ROMX

DewpiderCardGfx::
	INCBIN "gfx/cards/dewpider.2bpp"
	INCBIN "gfx/cards/dewpider.pal"

AraquanidCardGfx::
	INCBIN "gfx/cards/araquanid.2bpp"
	INCBIN "gfx/cards/araquanid.pal"

ChewtleCardGfx::
	INCBIN "gfx/cards/chewtle.2bpp"
	INCBIN "gfx/cards/chewtle.pal"

DrednawCardGfx::
	INCBIN "gfx/cards/drednaw.2bpp"
	INCBIN "gfx/cards/drednaw.pal"

VaporeonLv42CardGfx::
	INCBIN "gfx/cards/vaporeon2.2bpp"
	INCBIN "gfx/cards/vaporeon2.pal"

OmanyteCardGfx::
	INCBIN "gfx/cards/omanyte.2bpp"
	INCBIN "gfx/cards/omanyte.pal"

OmastarCardGfx::
	INCBIN "gfx/cards/omastar.2bpp"
	INCBIN "gfx/cards/omastar.pal"

RelicanthCardGfx::
	INCBIN "gfx/cards/relicanth.2bpp"
	INCBIN "gfx/cards/relicanth.pal"

SuicuneCardGfx::
	INCBIN "gfx/cards/suicune.2bpp"
	INCBIN "gfx/cards/suicune.pal"

BlitzleCardGfx::
	INCBIN "gfx/cards/blitzle.2bpp"
	INCBIN "gfx/cards/blitzle.pal"

HelioptileCardGfx::
	INCBIN "gfx/cards/pikachu3.2bpp"
	INCBIN "gfx/cards/pikachu3.pal"

EmolgaCardGfx::
	INCBIN "gfx/cards/pikachu2.2bpp"
	INCBIN "gfx/cards/pikachu2.pal"

PincurchinCardGfx::
	INCBIN "gfx/cards/pincurchin.2bpp"
	INCBIN "gfx/cards/pincurchin.pal"

ShinxCardGfx::
	INCBIN "gfx/cards/flyingpikachu.2bpp"
	INCBIN "gfx/cards/flyingpikachu.pal"

LuxioCardGfx::
	INCBIN "gfx/cards/luxio.2bpp"
	INCBIN "gfx/cards/luxio.pal"

LuxrayCardGfx::
	INCBIN "gfx/cards/surfingpikachu2.2bpp"
	INCBIN "gfx/cards/surfingpikachu2.pal"

ZebstrikaCardGfx::
	INCBIN "gfx/cards/zebstrika.2bpp"
	INCBIN "gfx/cards/zebstrika.pal"

HelioliskCardGfx::
	INCBIN "gfx/cards/heliolisk.2bpp"
	INCBIN "gfx/cards/heliolisk.pal"

MagnemiteLv13CardGfx::
	INCBIN "gfx/cards/magnemite.2bpp"
	INCBIN "gfx/cards/magnemite.pal"

	ds $58

SECTION "Card Gfx 6", ROMX

CharjabugCardGfx::
	INCBIN "gfx/cards/charjabug.2bpp"
	INCBIN "gfx/cards/charjabug.pal"

MagnetonLv28CardGfx::
	INCBIN "gfx/cards/magneton1.2bpp"
	INCBIN "gfx/cards/magneton1.pal"

MagnezoneCardGfx::
	INCBIN "gfx/cards/magnezone.2bpp"
	INCBIN "gfx/cards/magnezone.pal"

ToxelCardGfx::
	INCBIN "gfx/cards/toxel.2bpp"
	INCBIN "gfx/cards/toxel.pal"

ToxtricityLv35CardGfx::
	INCBIN "gfx/cards/electrode1.2bpp"
	INCBIN "gfx/cards/electrode1.pal"

ToxtricityLv42CardGfx::
	INCBIN "gfx/cards/electrode2.2bpp"
	INCBIN "gfx/cards/electrode2.pal"

ElectrikeCardGfx::
	INCBIN "gfx/cards/electabuzz1.2bpp"
	INCBIN "gfx/cards/electabuzz1.pal"

ElectabuzzLv35CardGfx::
	INCBIN "gfx/cards/electabuzz2.2bpp"
	INCBIN "gfx/cards/electabuzz2.pal"

ManectricCardGfx::
	INCBIN "gfx/cards/manectric.2bpp"
	INCBIN "gfx/cards/manectric.pal"

JolteonLv29CardGfx::
	INCBIN "gfx/cards/jolteon2.2bpp"
	INCBIN "gfx/cards/jolteon2.pal"

VikavoltCardGfx::
	INCBIN "gfx/cards/vikavolt.2bpp"
	INCBIN "gfx/cards/vikavolt.pal"

ZeraoraCardGfx::
	INCBIN "gfx/cards/zeraora.2bpp"
	INCBIN "gfx/cards/zeraora.pal"

RaikouCardGfx::
	INCBIN "gfx/cards/raikou.2bpp"
	INCBIN "gfx/cards/raikou.pal"

SandshrewCardGfx::
	INCBIN "gfx/cards/sandshrew.2bpp"
	INCBIN "gfx/cards/sandshrew.pal"

SandslashCardGfx::
	INCBIN "gfx/cards/sandslash.2bpp"
	INCBIN "gfx/cards/sandslash.pal"

SilicobraCardGfx::
	INCBIN "gfx/cards/diglett.2bpp"
	INCBIN "gfx/cards/diglett.pal"

SandacondaCardGfx::
	INCBIN "gfx/cards/dugtrio.2bpp"
	INCBIN "gfx/cards/dugtrio.pal"

CroagunkCardGfx::
	INCBIN "gfx/cards/mankey.2bpp"
	INCBIN "gfx/cards/mankey.pal"

ToxicroakCardGfx::
	INCBIN "gfx/cards/primeape.2bpp"
	INCBIN "gfx/cards/primeape.pal"

SandileCardGfx::
	INCBIN "gfx/cards/sandile.2bpp"
	INCBIN "gfx/cards/sandile.pal"

KrokorokCardGfx::
	INCBIN "gfx/cards/machoke.2bpp"
	INCBIN "gfx/cards/machoke.pal"

	ds $58

SECTION "Card Gfx 7", ROMX

KrookodileCardGfx::
	INCBIN "gfx/cards/krookodile.2bpp"
	INCBIN "gfx/cards/krookodile.pal"

TrapinchCardGfx::
	INCBIN "gfx/cards/geodude.2bpp"
	INCBIN "gfx/cards/geodude.pal"

VibravaCardGfx::
	INCBIN "gfx/cards/vibrava.2bpp"
	INCBIN "gfx/cards/vibrava.pal"

FlygonCardGfx::
	INCBIN "gfx/cards/flygon.2bpp"
	INCBIN "gfx/cards/flygon.pal"

HawluchaCardGfx::
	INCBIN "gfx/cards/hawlucha.2bpp"
	INCBIN "gfx/cards/hawlucha.pal"

LarvitarCardGfx::
	INCBIN "gfx/cards/larvitar.2bpp"
	INCBIN "gfx/cards/larvitar.pal"

TyranitarCardGfx::
	INCBIN "gfx/cards/marowak1.2bpp"
	INCBIN "gfx/cards/marowak1.pal"

PupitarCardGfx::
	INCBIN "gfx/cards/pupitar.2bpp"
	INCBIN "gfx/cards/pupitar.pal"

HitmonleeCardGfx::
	INCBIN "gfx/cards/hitmonlee.2bpp"
	INCBIN "gfx/cards/hitmonlee.pal"

HitmonchanCardGfx::
	INCBIN "gfx/cards/hitmonchan.2bpp"
	INCBIN "gfx/cards/hitmonchan.pal"

CufantCardGfx::
	INCBIN "gfx/cards/cufant.2bpp"
	INCBIN "gfx/cards/cufant.pal"

CopperajahCardGfx::
	INCBIN "gfx/cards/copperajah.2bpp"
	INCBIN "gfx/cards/copperajah.pal"

KabutoCardGfx::
	INCBIN "gfx/cards/kabuto.2bpp"
	INCBIN "gfx/cards/kabuto.pal"

KabutopsCardGfx::
	INCBIN "gfx/cards/kabutops.2bpp"
	INCBIN "gfx/cards/kabutops.pal"

TyrantrumCardGfx::
	INCBIN "gfx/cards/tyrantrum.2bpp"
	INCBIN "gfx/cards/tyrantrum.pal"

DeinoCardGfx::
	INCBIN "gfx/cards/deino.2bpp"
	INCBIN "gfx/cards/deino.pal"

ZweilousCardGfx::
	INCBIN "gfx/cards/zweilous.2bpp"
	INCBIN "gfx/cards/zweilous.pal"

HydreigonCardGfx::
	INCBIN "gfx/cards/hydreigon.2bpp"
	INCBIN "gfx/cards/hydreigon.pal"

BruxishCardGfx::
	INCBIN "gfx/cards/bruxish.2bpp"
	INCBIN "gfx/cards/bruxish.pal"

SlowpokeLv18CardGfx::
	INCBIN "gfx/cards/slowpoke2.2bpp"
	INCBIN "gfx/cards/slowpoke2.pal"

SlowbroCardGfx::
	INCBIN "gfx/cards/slowbro.2bpp"
	INCBIN "gfx/cards/slowbro.pal"

	ds $58

SECTION "Card Gfx 8", ROMX

DuskullCardGfx::
	INCBIN "gfx/cards/duskull.2bpp"
	INCBIN "gfx/cards/duskull.pal"

MisdreavusCardGfx::
	INCBIN "gfx/cards/misdreavus.2bpp"
	INCBIN "gfx/cards/misdreavus.pal"

DusclopsCardGfx::
	INCBIN "gfx/cards/dusclops.2bpp"
	INCBIN "gfx/cards/dusclops.pal"

MismagiusCardGfx::
	INCBIN "gfx/cards/mismagius.2bpp"
	INCBIN "gfx/cards/mismagius.pal"

DusknoirCardGfx::
	INCBIN "gfx/cards/dusknoir.2bpp"
	INCBIN "gfx/cards/dusknoir.pal"

MurkrowCardGfx::
	INCBIN "gfx/cards/murkrow.2bpp"
	INCBIN "gfx/cards/murkrow.pal"

HonchkrowCardGfx::
	INCBIN "gfx/cards/honchkrow.2bpp"
	INCBIN "gfx/cards/honchkrow.pal"

SpiritombCardGfx::
	INCBIN "gfx/cards/mrmime.2bpp"
	INCBIN "gfx/cards/mrmime.pal"

MewtwoCardGfx::
	INCBIN "gfx/cards/mewtwo.2bpp"
	INCBIN "gfx/cards/mewtwo.pal"

MewtwoAltLV60CardGfx::
	INCBIN "gfx/cards/mewtwo3.2bpp"
	INCBIN "gfx/cards/mewtwo3.pal"

MimikyuCardGfx::
	INCBIN "gfx/cards/mew1.2bpp"
	INCBIN "gfx/cards/mew1.pal"

MewLv23CardGfx::
	INCBIN "gfx/cards/mew3.2bpp"
	INCBIN "gfx/cards/mew3.pal"

PidgeyCardGfx::
	INCBIN "gfx/cards/pidgey.2bpp"
	INCBIN "gfx/cards/pidgey.pal"

PidgeottoCardGfx::
	INCBIN "gfx/cards/pidgeotto.2bpp"
	INCBIN "gfx/cards/pidgeotto.pal"

PidgeotLv38CardGfx::
	INCBIN "gfx/cards/pidgeot1.2bpp"
	INCBIN "gfx/cards/pidgeot1.pal"

ZigzagoonCardGfx::
	INCBIN "gfx/cards/rattata.2bpp"
	INCBIN "gfx/cards/rattata.pal"

LinooneCardGfx::
	INCBIN "gfx/cards/raticate.2bpp"
	INCBIN "gfx/cards/raticate.pal"

	ds $58

SECTION "Card Gfx 9", ROMX

TailowCardGfx::
	INCBIN "gfx/cards/tailow.2bpp"
	INCBIN "gfx/cards/tailow.pal"

SwellowCardGfx::
	INCBIN "gfx/cards/fearow.2bpp"
	INCBIN "gfx/cards/fearow.pal"

TogepiCardGfx::
	INCBIN "gfx/cards/togepi.2bpp"
	INCBIN "gfx/cards/togepi.pal"

TogeticCardGfx::
	INCBIN "gfx/cards/clefable.2bpp"
	INCBIN "gfx/cards/clefable.pal"

TogekissCardGfx::
	INCBIN "gfx/cards/togekiss.2bpp"
	INCBIN "gfx/cards/togekiss.pal"

CyclizarCardGfx::
	INCBIN "gfx/cards/jigglypuff2.2bpp"
	INCBIN "gfx/cards/jigglypuff2.pal"

StuffulNameGfx::
	INCBIN "gfx/cards/jigglypuff3.2bpp"
	INCBIN "gfx/cards/jigglypuff3.pal"

BewearCardGfx::
	INCBIN "gfx/cards/wigglytuff.2bpp"
	INCBIN "gfx/cards/wigglytuff.pal"

BidoofCardGfx::
	INCBIN "gfx/cards/bidoof.2bpp"
	INCBIN "gfx/cards/bidoof.pal"

BibarelCardGfx::
	INCBIN "gfx/cards/bibarel.2bpp"
	INCBIN "gfx/cards/bibarel.pal"

RayquazaCardGfx::
	INCBIN "gfx/cards/rayquaza.2bpp"
	INCBIN "gfx/cards/rayquaza.pal"

RuffletCardGfx::
	INCBIN "gfx/cards/doduo.2bpp"
	INCBIN "gfx/cards/doduo.pal"

BraviaryCardGfx::
	INCBIN "gfx/cards/braviary.2bpp"
	INCBIN "gfx/cards/braviary.pal"

DrampaCardGfx::
	INCBIN "gfx/cards/drampa.2bpp"
	INCBIN "gfx/cards/drampa.pal"

AudinoCardGfx::
	INCBIN "gfx/cards/farfetchd.2bpp"
	INCBIN "gfx/cards/farfetchd.pal"

ChatotCardGfx::
	INCBIN "gfx/cards/kangaskhan.2bpp"
	INCBIN "gfx/cards/kangaskhan.pal"

StantlerCardGfx::
	INCBIN "gfx/cards/tauros.2bpp"
	INCBIN "gfx/cards/tauros.pal"

DittoCardGfx::
	INCBIN "gfx/cards/ditto.2bpp"
	INCBIN "gfx/cards/ditto.pal"

EeveeCardGfx::
	INCBIN "gfx/cards/eevee.2bpp"
	INCBIN "gfx/cards/eevee.pal"

PorygonCardGfx::
	INCBIN "gfx/cards/porygon.2bpp"
	INCBIN "gfx/cards/porygon.pal"

	ds $58

SECTION "Card Gfx 10", ROMX

GoomyCardGfx::
	INCBIN "gfx/cards/dratini.2bpp"
	INCBIN "gfx/cards/dratini.pal"

SliggooCardGfx::
	INCBIN "gfx/cards/dragonair.2bpp"
	INCBIN "gfx/cards/dragonair.pal"

LugiaCardGfx::
	INCBIN "gfx/cards/dragonite1.2bpp"
	INCBIN "gfx/cards/dragonite1.pal"

GoodraCardGfx::
	INCBIN "gfx/cards/dragonite2.2bpp"
	INCBIN "gfx/cards/dragonite2.pal"

ProfessorOakCardGfx::
	INCBIN "gfx/cards/professoroak.2bpp"
	INCBIN "gfx/cards/professoroak.pal"

ImposterProfessorOakCardGfx::
	INCBIN "gfx/cards/imposterprofessoroak.2bpp"
	INCBIN "gfx/cards/imposterprofessoroak.pal"

BillCardGfx::
	INCBIN "gfx/cards/bill.2bpp"
	INCBIN "gfx/cards/bill.pal"

MrFujiCardGfx::
	INCBIN "gfx/cards/mrfuji.2bpp"
	INCBIN "gfx/cards/mrfuji.pal"

LassCardGfx::
	INCBIN "gfx/cards/marnie.2bpp"
	INCBIN "gfx/cards/marnie.pal"

ImakuniCardGfx::
	INCBIN "gfx/cards/imakuni.2bpp"
	INCBIN "gfx/cards/imakuni.pal"

PokemonTraderCardGfx::
	INCBIN "gfx/cards/pokemontrader.2bpp"
	INCBIN "gfx/cards/pokemontrader.pal"

PokemonBreederCardGfx::
	INCBIN "gfx/cards/pokemonbreeder.2bpp"
	INCBIN "gfx/cards/pokemonbreeder.pal"

SubstituteDollCardGfx::
	INCBIN "gfx/cards/substitute.2bpp"
	INCBIN "gfx/cards/substitute.pal"

MysteriousFossilCardGfx::
	INCBIN "gfx/cards/mysteriousfossil.2bpp"
	INCBIN "gfx/cards/mysteriousfossil.pal"

EnergyRetrievalCardGfx::
	INCBIN "gfx/cards/energyretrieval.2bpp"
	INCBIN "gfx/cards/energyretrieval.pal"

SuperEnergyRetrievalCardGfx::
	INCBIN "gfx/cards/superenergyretrieval.2bpp"
	INCBIN "gfx/cards/superenergyretrieval.pal"

EnergySearchCardGfx::
	INCBIN "gfx/cards/energysearch.2bpp"
	INCBIN "gfx/cards/energysearch.pal"

EnergyRemovalCardGfx::
	INCBIN "gfx/cards/energyremoval.2bpp"
	INCBIN "gfx/cards/energyremoval.pal"

SuperEnergyRemovalCardGfx::
	INCBIN "gfx/cards/superenergyremoval.2bpp"
	INCBIN "gfx/cards/superenergyremoval.pal"

SwitchCardGfx::
	INCBIN "gfx/cards/switch.2bpp"
	INCBIN "gfx/cards/switch.pal"

	ds $58

SECTION "Card Gfx 11", ROMX

PokemonCenterCardGfx::
	INCBIN "gfx/cards/pokemoncenter.2bpp"
	INCBIN "gfx/cards/pokemoncenter.pal"

PokeBallCardGfx::
	INCBIN "gfx/cards/pokeball.2bpp"
	INCBIN "gfx/cards/pokeball.pal"

ScoopUpCardGfx::
	INCBIN "gfx/cards/scoopup.2bpp"
	INCBIN "gfx/cards/scoopup.pal"

ComputerSearchCardGfx::
	INCBIN "gfx/cards/computersearch.2bpp"
	INCBIN "gfx/cards/computersearch.pal"

PokedexCardGfx::
	INCBIN "gfx/cards/rotomdex.2bpp"
	INCBIN "gfx/cards/rotomdex.pal"

PlusPowerCardGfx::
	INCBIN "gfx/cards/pluspower.2bpp"
	INCBIN "gfx/cards/pluspower.pal"

DefenderCardGfx::
	INCBIN "gfx/cards/defender.2bpp"
	INCBIN "gfx/cards/defender.pal"

ItemFinderCardGfx::
	INCBIN "gfx/cards/itemfinder.2bpp"
	INCBIN "gfx/cards/itemfinder.pal"

GustOfWindCardGfx::
	INCBIN "gfx/cards/bossorders.2bpp"
	INCBIN "gfx/cards/bossorders.pal"

DevolutionSprayCardGfx::
	INCBIN "gfx/cards/devolutionspray.2bpp"
	INCBIN "gfx/cards/devolutionspray.pal"

PotionCardGfx::
	INCBIN "gfx/cards/potion.2bpp"
	INCBIN "gfx/cards/potion.pal"

SuperPotionCardGfx::
	INCBIN "gfx/cards/superpotion.2bpp"
	INCBIN "gfx/cards/superpotion.pal"

FullHealCardGfx::
	INCBIN "gfx/cards/fullheal.2bpp"
	INCBIN "gfx/cards/fullheal.pal"

ReviveCardGfx::
	INCBIN "gfx/cards/revive.2bpp"
	INCBIN "gfx/cards/revive.pal"

MaintenanceCardGfx::
	INCBIN "gfx/cards/maintenance.2bpp"
	INCBIN "gfx/cards/maintenance.pal"

PokemonFluteCardGfx::
	INCBIN "gfx/cards/pokemonflute.2bpp"
	INCBIN "gfx/cards/pokemonflute.pal"

CopycatCardGfx::
	INCBIN "gfx/cards/copycat.2bpp"
	INCBIN "gfx/cards/copycat.pal"

RecycleCardGfx::
	INCBIN "gfx/cards/recycle.2bpp"
	INCBIN "gfx/cards/recycle.pal"
	
EnteiCardGfx::
	INCBIN "gfx/cards/entei.2bpp"
	INCBIN "gfx/cards/entei.pal"

SneaselCardGfx::
	INCBIN "gfx/cards/magikarp.2bpp"
	INCBIN "gfx/cards/magikarp.pal"

WeavileCardGfx::
	INCBIN "gfx/cards/gyarados.2bpp"
	INCBIN "gfx/cards/gyarados.pal"
 
SECTION "Gfx 13", ROMX

MintGfx::
	dw 36
	INCBIN "gfx/duelists/mint.2bpp"

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
