ScriptCommand_PickRareFireCard:
	ld a, (FindRandomCards.end - FindRandomCards) / 4 - 2
	call Random
	call Random
	add 2
	ld hl, FindRandomCards
	farcall ScriptCommand_PickChallengeCupPrizeCard.get_card_from_list
	ret
FindRandomCards:
	dw BUIZEL                     ; $44
	dw GRUBBIN                ; $2d
	dw KILOWATTREL                     ; $be
	dw TYNAMO                      ; $e6
	dw SYLVEON                     ; $2e
	dw GRIMMSNARL
	dw ABOMASNOW                   ; $29
	dw SPIRITOMB                     ; $9b
	dw HOUNDOOM              ; $34
	dw NUMEL                ; $3d
	dw KINGDRA                      ; $52
	dw MAGNEMITE              ; $69
	dw TYMPOLE                     ; $46
	dw CHATOT                  ; $b9
	dw PIGNITE                  ; $31
	dw FROSLASS
	dw GOURGEIST
	dw PIKACHU
	dw ESPEON                        ; $9c
	dw FLOATZEL                     ; $45
	dw CLAUNCHER                      ; $4f
	dw PINCURCHIN            ; $63
	dw REGIELEKI
	dw PYROAR
	dw DEWPIDER                      ; $55
	dw VOLCARONA
	dw EMBOAR                   ; $32
	dw CROAGUNK                      ; $7b
	dw SKRELP                   ; $49
	dw SANDILE                      ; $7d
	dw PORYGON2                     ; $bd
	dw SEEDOT
	dw SWELLOW                      ; $aa
	dw CLODSIRE
	dw FUECOCO                ; $3e
	dw LINOONE                    ; $a8
	dw THWACKEY
	dw SLIGGOO                   ; $c0
	dw CARBINK
	dw SWAMPERT
	dw BELDUM
	dw LITLEO
	dw ELECTRIKE             ; $70
	dw ZUBAT                       ; $1a
	dw HELIOPTILE                ; $61
	dw FROGADIER                   ; $42
	dw IMPIDIMP
	dw SIZZLIPEDE                   ; $36
	dw ELEKID
	dw WATTREL
	dw REGISTEEL
	dw CHARMELEON
	dw BLITZLE                ; $60
	dw DITTO                       ; $bb
	dw PICHU
	dw DECIDUEYE                    ; $11
	dw ELECTABUZZ             ; $71
	dw FERROTHORN                     ; $2b
	dw MAREEP
	dw UMBREON
	dw KABUTO                      ; $8b
	dw LITWICK
	dw YANMEGA                    ; $22
	dw BRUXISH                ; $91
	dw SHELGON                ; $3f
	dw MAGIKARP
	dw DREEPY
	dw MEWTWO_LV60                 ; $9e
	dw RELLOR
	dw NYMBLE
	dw SWINUB
	dw HYDREIGON                    ; $90
	dw MUNCHLAX
	dw ROOKIDEE                      ; $a3
	dw MALAMAR                     ; $93
	dw MAGBY
	dw STUFFUL             ; $af
	dw GRAPPLOCT
	dw RELICANTH               ; $5e
	dw TOGETIC                    ; $ac
	dw SHINX              ; $64
	dw GOLURK
	dw GROOKEY
	dw BASCULIN                     ; $53
	dw MUDKIP
	dw METAGROSS
	dw LARVESTA
	dw GLALIE
	dw CHARMANDER
	dw BUDEW
	dw ZIGZAGOON                     ; $a7
	dw PORYGON                     ; $bd
	dw TSAREENA                  ; $25
	dw CHANDELURE
	dw HONCHKROW                       ; $9a
	dw BEAUTIFLY                  ; $0e
	dw TANGROWTH                ; $2d
	dw HORSEA                      ; $51
	dw HAWLUCHA                        ; $83
	dw KROKOROK                     ; $7e
	dw SKARMORY
	dw LUCARIO
	dw NACLI                      ; $84
	dw KABUTOPS                    ; $8c
	dw SNEASEL                    ; $57
	dw MAGNETON               ; $6b
	dw CYCLIZAR             ; $ae
	dw PERRSERKER                   ; $78
	dw GOODRA              ; $c2
	dw CROBAT                     ;
	dw DARMANITAN                    ; $3a
	dw SKORUPI
	dw PUMPKABOO
	dw EMOLGA                ; $62
	dw HONEDGE
	dw SNOVER                   ; $28
	dw BRONZONG
	dw TANGELA                 ; $2c
	dw APPLETUN                   ; $1e
	dw WEAVILE                    ; $58
	dw MEGANIUM               ; $0b
	dw ABRA
	dw ZOROARK
	dw CROCALOR                ; $3f
	dw CAMERUPT               ; $37
	dw LYCANROC                    ; $8c
	dw DUNSPARCE
	dw FLYGON                       ; $82
	dw TALONFLAME
	dw NIHILEGO
	dw ESCAVALIER                    ; $18
	dw HOUNDOUR                      ; $33
	dw ARON
	dw PALPITOAD                   ; $47
	dw GOLISOPOD
	dw TRAPINCH                     ; $80
	dw LOKIX
	dw GRENINJA                   ; $43
	dw PILOSWINE
	dw MELTAN
	dw PORYGONZ                     ; $bd
	dw PHANTUMP                      ; $26
	dw MUSHARNA
	dw TOGEPI                    ; $ab
	dw CORVIKNIGHT                ; $a5
	dw GOLBAT                      ; $1b
	dw KIRLIA
	dw OMASTAR                     ; $5d
	dw BOUNSWEET                  ; $23
	dw SHELMET                    ; $14
	dw MAGMORTAR                 ; $3c
	dw PELIPPER                    ; $4e
	dw GOTHITELLE
	dw PAWNIARD
	dw SEADRA                      ; $52
	dw DRAMPA                   ; $b7
	dw GASTLY
	dw WOOPER
	dw STEENEE                  ; $24
	dw REGICE
	dw JANGMO_O
	dw CLOBBOPUS
	dw BAYLEEF                     ; $09
	dw SILCOON                     ; $0d
	dw STEELIX
	dw GOTHORITA
	dw CUTIEFLY
	dw VIBRAVA                    ; $81
	dw ROSERADE
	dw ZORUA
	dw BIDOOF                 ; $b2
	dw NUZLEAF
	dw ALAKAZAM
	dw RABSCA
	dw MEOWTH                   ; $77
	dw SNORLAX
	dw SCIZOR                      ; $2f
	dw NACLSTACK                ; $86
	dw KROOKODILE                     ; $7f
	dw ARAQUANID                     ; $56
	dw TOXTRICITY              ; $6e
	dw ONIX
	dw EELEKTROSS                 ; $e7
	dw TOXEL                     ; $6d
	dw DRAKLOAK
	dw GARDEVOIR
	dw CUFANT                     ; $89
	dw HAUNTER
	dw MARSHTOMP
	dw VAPOREON               ; $5b
	dw ZERAORA                 ; $75
	dw SALAMENCE                ; $40
	dw SALAZZLE              ; $35
	dw SKELEDIRGE                ; $40
	dw RIOLU
	dw DRAGALGE                  ; $4a
	dw ZWEILOUS                     ; $8f
	dw ORBEETLE
	dw MAMOSWINE
	dw AEGISLASH_SHIELD
	dw ROCKRUFF                      ; $8b
	dw KARRABLAST                    ; $17
	dw MURKROW                     ; $99
	dw TYRANITAR                ; $85
	dw CHIKORITA                   ; $08
	dw GOOMY                     ; $bf
	dw ZEBSTRIKA                 ; $67
	dw CLAWITZER                     ; $50
	dw DEWGONG                     ; $4c
	dw KLINKLANG
	dw SEEL                        ; $4b
	dw DEINO                        ; $8e
	dw METANG
	dw GARGANACL                ; $85
	dw KLINK
	dw DARTRIX                      ; $10
	dw SNORUNT
	dw MAGNEZONE               ; $6c
	dw TREVENANT                         ; $27
	dw TOGEKISS             ; $ad
	dw DUSKULL                  ; $94
	dw REGIROCK
	dw MISDREAVUS                 ; $95
	dw SHROOMISH                       ; $1f
	;Metal
	dw LARVITAR                      ; $84
	dw LAIRON
	dw ANNIHILAPE
	dw GOTHITA
	dw SEISMITOAD                   ; $48
	dw BISHARP
	dw WHIRLIPEDE
	dw CENTISKORCH               ; $38
	dw NATU
	dw ACCELGOR                    ; $15
	dw SCYTHER                     ; $2e
	dw PRIMEAPE
	dw GALVANTULA
	dw DOUBLADE
	dw VIKAVOLT                 ; $74
	dw MIMIKYU                     ; $a0
	dw TINKATON
	dw CHEWTLE                      ; $59
	dw LEAFEON                     ; $2e
	dw GENGAR
	dw GHOLDENGO
	dw RUFFLET                       ; $b5
	dw SILICOBRA                     ; $79
	dw HITMONCHAN                  ; $88
	dw GOLETT
	dw FLETCHINDER
	dw MAGMAR                 ; $3b
	dw JOLTIK
	dw VOLBEAT                    ; $19
	dw FROAKIE                    ; $41
	dw YANMA                     ; $21
	dw SANDACONDA                     ; $7a
	dw BAGON                ; $3e
	dw MORGREM
	dw AEGISLASH
	dw FLAAFFY
	dw FLETCHLING
	dw SCOLIPEDE
	dw ROSELIA
	dw MELMETAL
	dw XATU
	dw MISMAGIUS                ; $97
	dw MANECTRIC                ; $72
	dw GIMMIGHOUL
	dw ROWLET                      ; $0f
	dw KADABRA
	dw TYROGUE
	dw RAICHU
	dw DUSTOX                       ; $13
	dw PUPITAR                ; $86
	dw TYRUNT
	dw TYRANTRUM                  ; $8d
	dw FLAPPLE                       ; $1d
	dw TORTUNATOR                ; $3f
	dw TOXICROAK                    ; $7c
	dw AGGRON
	dw LUXRAY    ; $66
	dw SANDSLASH
	dw RIBOMBEE
	dw RILLABOOM
	dw APPLIN                      ; $1c
	dw EEVEE                       ; $bc
	dw BEWEAR                  ; $b0
	dw HAKAMO_O
	dw SANDSHREW
	dw KLANG
	dw REGIDRAGO
	dw WURMPLE                    ; $0c
	dw CASCOON                       ; $12
	dw BRELOOM                    ; $20
	dw DOTTLER
	dw KOMMO_O
	dw HITMONTOP
	dw LYCANROCM                  ; $8d
	dw CORVISQUIRE                   ; $a4
	dw VENIPEDE
	dw STANTLER                      ; $ba
	dw ELECTIVIRE             ; $71
	dw HITMONLEE                   ; $87
	dw JOLTEON_LV29                ; $73
	dw CHARJABUG              ; $6a
	dw DUSCLOPS                ; $96
	dw BRAVIARY                      ; $b6
	dw FLAREON                ; $3e
	dw BIBAREL                     ; $b3
	dw INKAY               ; $92
	dw GYARADOS
	dw TINKATUFF
	dw OMANYTE                     ; $5c
	dw CHARIZARD
	dw BRONZOR
	dw WINGULL                    ; $4d
	dw EELEKTRIK                      ; $e8
	dw AMPHAROS
	dw DRUDDIGON
	dw DREDNAW               ; $5a
	dw SHIFTRY
	dw TAILOW                     ; $a9
	dw LUXIO        ; $65
	dw SALANDIT
	dw DARUMAKA                      ; $39
	dw BLIPBUG
	dw DRAPION
	dw TEPIG                  ; $30
	dw MANKEY
	dw ILLUMISE                   ; $16
	dw GALLADE
	dw BASCULEGION                     ; $54
	dw COPPERAJAH                      ; $8a
	dw TINKATINK
	dw DRAGAPULT
	dw WIMPOD
	dw FERROSEED                     ; $2a
	dw MUNNA
	dw LAMPENT
	dw RALTS
	dw HELIOLISK                 ; $68
	dw DUSKNOIR                      ; $98
	dw GLACEON                     ; $2e
.end