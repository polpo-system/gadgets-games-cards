# gadgets-games-cards

The playing cards of the card games for the gadgets of [polpo](https://github.com/polpo-system/polpo):
the module `Cards` (cards, stacks of cards as gadgets, shuffling, moves and undo), the picture of
the cards and the panel `CardGames.Panel`. The games are packages of their own:
gadgets-games-solitaire, gadgets-games-spider and gadgets-games-freecell.

```
portia.Install gadgets-games-cards
```

## What is here

    src/Cards.Mod              cards and stacks
    share/Cards.Pict           the picture of the cards
    share/CardGames.Panel      a panel with the three games (Desktops.OpenDoc CardGames.Panel)
    tools/CardGames.Tool
    test/CardsTest.Mod

Cards is by Patrick Saladin, from ETH Native Oberon 2.3.6. The source was converted from an Oberon
text to plain text; the first commit has it unchanged. It compiles unchanged with all five of
polpo's compilers (x86, ARM, ARMv7, RISC-V, MIPS).

## Tests

    CardsTest.Run      4 checks: a deck made, shuffled and counted, a stack gadget made; it
                       needs the desktop's display

The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.
