INCLUDE "constants.asm"
INCLUDE "macros.asm"
INCLUDE "wram.asm"

INCLUDE "engine/home.asm"

SECTION "bank1",ROMX,BANK[$1]
INCLUDE "engine/bank1.asm"

SECTION "bank2",ROMX,BANK[$2]
INCLUDE "engine/bank2.asm"

SECTION "bank3",ROMX,BANK[$3]
INCLUDE "engine/bank3.asm"

SECTION "bank4",ROMX,BANK[$4]
INCLUDE "engine/bank4.asm"

SECTION "bank5",ROMX,BANK[$5]
INCBIN "baserom.gbc",$14000,$4000

SECTION "bank6",ROMX,BANK[$6]
INCLUDE "engine/bank6.asm"

SECTION "bank7",ROMX,BANK[$7]
INCLUDE "engine/bank7.asm"

SECTION "bank8",ROMX,BANK[$8]
INCBIN "baserom.gbc",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
	emptybank

SECTION "bankA",ROMX,BANK[$A]
	emptybank

SECTION "bankB",ROMX,BANK[$B]
INCBIN "baserom.gbc",$2C000,$4000

SECTION "bankC",ROMX,BANK[$C]
INCLUDE "data/decks.asm"
INCLUDE "data/cards.asm"

SECTION "bankD",ROMX,BANK[$D]
INCLUDE "text/text_offsets.asm"
INCLUDE "text/text1.asm"

SECTION "bankE",ROMX,BANK[$E]
INCLUDE "text/text2.asm"

SECTION "bankF",ROMX,BANK[$F]
INCLUDE "text/text3.asm"

SECTION "bank10",ROMX,BANK[$10]
INCLUDE "text/text4.asm"

SECTION "bank11",ROMX,BANK[$11]
INCLUDE "text/text5.asm"

SECTION "bank12",ROMX,BANK[$12]
INCLUDE "text/text6.asm"

SECTION "bank13",ROMX,BANK[$13]
INCLUDE "text/text7.asm"

SECTION "bank14",ROMX,BANK[$14]
INCLUDE "text/text8.asm"

SECTION "bank15",ROMX,BANK[$15]
INCLUDE "text/text9.asm"

SECTION "bank16",ROMX,BANK[$16]
INCLUDE "text/texta.asm"

SECTION "bank17",ROMX,BANK[$17]
INCLUDE "text/textb.asm"

SECTION "bank18",ROMX,BANK[$18]
INCLUDE "text/textc.asm"

SECTION "bank19",ROMX,BANK[$19]
INCLUDE "text/textd.asm"

SECTION "bank1A",ROMX,BANK[$1A]
	emptybank

SECTION "bank1B",ROMX,BANK[$1B]
	emptybank

SECTION "bank1C",ROMX,BANK[$1C]
INCLUDE "engine/bank1c.asm"

SECTION "bank1D",ROMX,BANK[$1D]
INCBIN "gfx/fonts.t3.1bpp"

VWF: ; 76668 (1d:6668)
INCBIN "gfx/vwf.1bpp"

DuelGraphics: ; 76968 (1d:6968)
INCBIN "gfx/duel1.t5.2bpp",$0,$1698

SECTION "bank1E",ROMX,BANK[$1E]
INCBIN "gfx/duel1.t5.2bpp",$1698,$318
INCBIN "gfx/duel2.2bpp"

rept $2b68
db $ff
endr

SECTION "bank1F",ROMX,BANK[$1F]
	emptybank

SECTION "bank20",ROMX,BANK[$20]
INCLUDE "engine/bank20.asm"

SECTION "bank21",ROMX,BANK[$21]
INCBIN "baserom.gbc",$84000,$87828 - $84000

IshiharaTilesetGfx: ; 87828 (21:7828)
	dw $4d
	INCBIN "gfx/tilesets/ishihara.t3.2bpp"

SolidTiles1: ; 87cfa (21:7cfa)
	dw $4
	INCBIN "gfx/solid_tiles.2bpp"

SolidTiles2: ; 87d3c (21:7d3c)
	dw $4
	INCBIN "gfx/solid_tiles.2bpp"

PlayerGfx: ; 87d7e (21:7d7e)
	dw $24
	INCBIN "gfx/trainers/player.2bpp"

INCBIN "baserom.gbc",$87fc0,$88000 - $87fc0

SECTION "bank22",ROMX,BANK[$22]
OverworldMapTiles: ; 88000 (22:4000)
	dw $c1
	INCBIN "gfx/overworld_map.t15.2bpp"

MasonLaboratoryTilesetGfx: ; 88c12 (22:4c12)
	dw $97
	INCBIN "gfx/tilesets/masonlaboratory.t9.2bpp"

ClubEntranceTilesetGfx: ; 89584 (22:5584)
	dw $81
	INCBIN "gfx/tilesets/clubentrance.t15.2bpp"

ClubLobbyTilesetGfx: ; 89d96 (22:5d96)
	dw $78
	INCBIN "gfx/tilesets/clublobby.t8.2bpp"

FightingClubTilesetGfx: ; 8a518 (22:6518)
	dw $63
	INCBIN "gfx/tilesets/fightingclub.t13.2bpp"

RockClubTilesetGfx: ; 8ab4a (22:6b4a)
	dw $3c
	INCBIN "gfx/tilesets/rockclub.t4.2bpp"

WaterClubTilesetGfx: ; 8af0c (22:6f0c)
	dw $a1
	INCBIN "gfx/tilesets/waterclub.t15.2bpp"

GrassClubTilesetGfx: ; 8b91e (22:791e)
	dw $57
	INCBIN "gfx/tilesets/grassclub.t9.2bpp"

OWSpritePlayer: ; 8be90 (22:7e90)
	dw $14
	INCBIN "gfx/ow/player.2bpp"

INCBIN "baserom.gbc",$8bfd2,$8C000 - $8bfd2

SECTION "bank23",ROMX,BANK[$23]
LightningClubTilesetGfx: ; 8c000 (23:4000)
	dw $83
	INCBIN "gfx/tilesets/lightningclub.t13.2bpp"

PsychicClubTilesetGfx: ; 8c832 (23:4832)
	dw $3a
	INCBIN "gfx/tilesets/psychicclub.t6.2bpp"

ScienceClubTilesetGfx: ; 8cbd4 (23:4bd4)
	dw $52
	INCBIN "gfx/tilesets/scienceclub.t14.2bpp"

FireClubTilesetGfx: ; 8d0f6 (23:50f6)
	dw $57
	INCBIN "gfx/tilesets/fireclub.t9.2bpp"

ChallengeHallTilesetGfx: ; 8d668 (23:5668)
	dw $9d
	INCBIN "gfx/tilesets/challengehall.t3.2bpp"

PokemonDomeEntranceTilesetGfx: ; 8e03a (23:603a)
	dw $4e
	INCBIN "gfx/tilesets/pokemondomeentrance.t2.2bpp"

PokemonDomeTilesetGfx: ; 8e51c (23:651c)
	dw $cf
	INCBIN "gfx/tilesets/pokemondome.t1.2bpp"

HallOfHonorTilesetGfx: ; 8f20e (23:720e)
	dw $79
	INCBIN "gfx/tilesets/hallofhonor.t7.2bpp"

MedalGfx: ; 8f9a0 (23:79a0)
	dw $48
	INCBIN "gfx/medals.2bpp",$0,$c0
	INCBIN "gfx/medals.2bpp",$240,$30
	INCBIN "gfx/medals.2bpp",$340,$10
	INCBIN "gfx/medals.2bpp",$c0,$c0
	INCBIN "gfx/medals.2bpp",$300,$30
	INCBIN "gfx/medals.2bpp",$350,$10
	INCBIN "gfx/medals.2bpp",$180,$c0
	INCBIN "gfx/medals.2bpp",$3c0,$30
	INCBIN "gfx/medals.2bpp",$410,$10
	INCBIN "gfx/medals.2bpp",$2d0,$30
	INCBIN "gfx/medals.2bpp",$2a0,$30
	INCBIN "gfx/medals.2bpp",$270,$30
	INCBIN "gfx/medals.2bpp",$390,$30
	INCBIN "gfx/medals.2bpp",$360,$30
	INCBIN "gfx/medals.2bpp",$330,$10
	INCBIN "gfx/medals.2bpp",$450,$30
	INCBIN "gfx/medals.2bpp",$420,$30
	INCBIN "gfx/medals.2bpp",$3f0,$20

INCBIN "baserom.gbc",$8fe22,$90000 - $8fe22

SECTION "bank24",ROMX,BANK[$24]
INCBIN "baserom.gbc",$90000,$93aa2 - $90000

RonaldGfx: ; 93aa2 (24:7aa2)
	dw $24
	INCBIN "gfx/trainers/ronald.2bpp"

INCBIN "baserom.gbc",$93ce4,$94000 - $93ce4

SECTION "bank25",ROMX,BANK[$25]
INCBIN "baserom.gbc",$94000,$4000

SECTION "bank26",ROMX,BANK[$26]
INCBIN "baserom.gbc",$98000,$4000

INCLUDE "data/trainergfx.asm"

INCLUDE "data/overworld_sprites.asm"

SECTION "bank2A",ROMX,BANK[$2A]
INCBIN "baserom.gbc",$A8000,$4000

SECTION "bank2B",ROMX,BANK[$2B]
INCBIN "baserom.gbc",$AC000,$4000

SECTION "bank2C",ROMX,BANK[$2C]
INCBIN "baserom.gbc",$B0000,$4000

SECTION "bank2D",ROMX,BANK[$2D]
INCBIN "baserom.gbc",$B4000,$4000

SECTION "bank2E",ROMX,BANK[$2E]
INCBIN "baserom.gbc",$B8000,$4000

SECTION "bank2F",ROMX,BANK[$2F]
	emptybank

SECTION "bank30",ROMX,BANK[$30]
	emptybank

INCLUDE "data/cardgfx.asm"

SECTION "bank3C",ROMX,BANK[$3C]
	emptybank

SECTION "bank3D",ROMX,BANK[$3D]
INCLUDE "engine/music1.asm"

SECTION "bank3E",ROMX,BANK[$3E]
INCLUDE "engine/music2.asm"

SECTION "bank3F",ROMX,BANK[$3F]
INCLUDE "engine/sfx.asm"
