# Pokémon TCG Generations

Modified disassembly of [Pokémon TCG Extended](https://github.com/ElectroDeoxys/Pokemon-TCG-Extended), a modified engine that supports up to 510 cards, (instead of 254 from the base game) and it also supports card graphics with up to 3 palettes, just like the sequel.

This repository also expand the avaible Pokémon card types, adding Darkness and Metal type to the game with an expanded main deck menu and a new energy card sorting system (Thanks [Oats](https://github.com/oatspear)!), adds a new Status Condition, Burn and a modified Weakness/Resistance System more akin to the Gen 4 formats ([2007-2010](https://pkmncards.com/format/dx-on-modified-2007/)).



## Technical details

The engine has gone through an overhaul based on the features in the sequel, which also supports card IDs up to `0x1ff`. This is not a true 16-bit engine since many of the systems in-game rely on card IDs fitting inside a 9-bit integer. This corresponds to how the game stores which cards are in the collection and how it compresses saved decks in SRAM.

As for the card graphics with 3 palettes, much of the engine has been modified to show more colours when rendering card art. This meant reordering the default palettes (for the text and text frame), such that BG palettes 5, 6 and 7 are reserved for these colours (plus 2, 3 and 4 when 2 card graphics are rendered at the same time such as in the main Duel scene). In some screens this means having little room for extra colours (such as the In Play Area screen), which follows more or less how scenes are rendered in the sequel. Cards need not have 3 palettes at all, so card art with the "classic look" are still fully supported.



## Instructions to build

To assemble, first download RGBDS (https://github.com/gbdev/rgbds/releases) and extract it to /usr/local/bin.
Run `make` in your shell.

This will output a file named "poketcg\_ext.gbc".



## Credits and Special Thanks

• All the People Who Worked/Contributed to the [PokeTCG Disassembly Project](https://github.com/pret/poketcg)

• [Otato](https://www.pokecommunity.com/members/1153748) for creating the "[Ducklett.Patch](https://gist.github.com/ButteredPotato/8835c96c791f2c47ad96f212dd5510fb)" that allowed me to add Cards to the Game more easily when i started.

• [DeltaSeeker](https://www.youtube.com/@DeltaSeeker) literally if it wasn't for your Video I wouldn't have done this nor would I have been interested in making Sprites/Pixel Art as much as I do today

• [Cataclyptic](https://www.pokecommunity.com/members/519697) for Being a Great Example Not Only to Make a Hack, but also to Make Pixel Art

• [Guzeinbuick](https://www.pokecommunity.com/members/977556) for Motivating me to Do this hack, I wouldn't have decided to do this without him Presenting the Idea to me xd

• [Oats](https://www.pokecommunity.com/members/prof_oatfield.956094/) for helping me implement several interesting effects for Attacks/Pokepower and the Dark Type.

• [Shaoden](https://github.com/Sha0den/poketcg_v2) for the Optional Tutorial Code and many optimizations.

• [Electro](https://github.com/pret/poketcg/wiki/Add-female-player-character#2-create-a-new-portrait) for creating the possibility of adding more playable characters to the game and Creating the Expanded Base.​

