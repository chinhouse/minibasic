# MiniBASIC
[BASIC](https://en.wikipedia.org/wiki/BASIC) interpreter for [Mini Micro](https:miniscript.org/MiniMicro/)


This is a little project to create an interpreter for the BASIC programming language for Mini Micro.  The interpreter itself is written in [MiniScript](https://miniscript.org).

**NOTE:** This project requires MiniScript v1.6, coming in Mini Micro v1.2 (not yet officially released).

## Current Status ##

MiniBASIC is nearly complete.  The full standard BASIC language has been implemented, plus a few nice additions like PLOT, LINE, RECT, ELLIPSE, POLY, and SOUND.

Features still planned:
  - `RENAME`
  - `RENUMBER`
  - better error trapping, e.g., using `;` between statements rather than `:`

See the **[Documentation](DOCUMENTATION.md)** for general notes as well as a complete reference of all available functions and commands.

## Sample Programs

Included in the _programs/CC_ subdirectory are about a hundred classic (old) BASIC demos and games from _Creative Computing_ magazine (via [BASIC Computer Games](https://en.wikipedia.org/wiki/BASIC_Computer_Games)).  These should all work now; please open an issue if you find any of them broken.

I'm also starting a second collection of programs written specifically for MiniBASIC, or adapted from other sources.  The programs/text subdirectory contains the first of these.  It includes some AppleSoft programs that have been updated to standard MiniBASIC.  (Except for lemonade, which is still being updated.)

## Try It Yourself!

To run this code requires at least a preview release of Mini Micro 1.2 (because it uses some of the latest features of the MiniScript language).  So:

1. grab a preview build of Mini Micro 1.2 for [Mac](https://miniscript.org/MiniMicro/preview/minimicro-mac.zip), [Windows](https://miniscript.org/MiniMicro/preview/minimicro-win.zip), or [Linux](https://miniscript.org/MiniMicro/preview/minimicro-linux.tar.gz)
2. unpack this, and run (you might need to right-click an "open" the first time, as the app is not yet code-signed)
3. download or clone this repo
4. in Mini Micro, click on the top disk slot below the screen, and choose "Mount Folder..."
5. select the folder containing this README.md and basic.ms
6. type `reboot` at the Mini Micro prompt (or quit and relaunch)

That should do it!  Now whenever Mini Micro starts up, it should go straight into MiniBASIC, which you can recognize by the `>` prompt.

If something goes wrong, MiniBASIC may crash, and drop you out into the MiniScript (recognizable by the `]` prompt).  In that case, just type `basic` to restart MiniBASIC (or, `reboot` if all else fails).

## References

Detailed references on various old BASIC dialects can be hard to find.  But here are some:

- [Applesoft BASIC](https://www.calormen.com/jsbasic/reference.html)
- [Applesoft BASIC, in more detail](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/Software/Languages/Applesoft%20BASIC/Manuals/Applesoft%20II%20BASIC%20Programming%20Reference%20Manual.pdf)
- [Microsoft BASIC-80](https://usermanual.wiki/Document/BASIC8028MBASIC29ReferenceManual.204768585/view)
- [Commodore-BASIC V2.0](https://www.c64-wiki.com/wiki/C64-Commands)
- [Classic Usborne BASIC Programming Books](https://usborne.com/us/books/computer-and-coding-books)

For discussion, consider:

- [BASIC4ALL forum](http://basic4all.epizy.com/index.php)
- [MiniScript forums](https://forums.miniscript.org/)

