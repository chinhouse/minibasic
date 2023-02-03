# minibasic
[BASIC](https://en.wikipedia.org/wiki/BASIC) interpreter for [Mini Micro](https:miniscript.org/MiniMicro/)


This is a little project to create an interpreter for the BASIC programming language for Mini Micro.  The interpreter itself is written in [MiniScript](https://miniscript.org).

## Features Implemented ##

- immediate-mode commands like `PRINT 6*7` (or equivalent shorthand, `?6*7`)
- program editing by entering a line number with code to insert/replace that line, or a line number alone to delete that line
- expression parsing including all standard operators
- program management:
  - `NEW`
  - `LIST` (note: not yet with range of line numbers)
  - `LISTREM` (lists only lines that start with `REM`)
  - `RUN`
  - `CAT` (lists files on disk)
  - `LOAD` _program name_ (e.g. `LOAD dice`)
- standard BASIC commands:
  - `PRINT` (or `?` for short), with `,` and `;`
  - `GOTO`
  - `IF` _condition_ `THEN` (with a line number)
  - `LET` (optional; `X = 42` also works without `LET`)
  - `FOR` _var_ `=` _start_ `TO` _end_ (with optional `STEP`)
  - `NEXT` (note: not yet supporting a variable name)
  - `END`
  - `REM`
- nonstandard BASIC commands:
  - `CLEAR` (resets all variables)
  - `HOME` (clears the screen and resets the cursor)

## Features Still To Come ##

- program management:
  - `SAVE`
  - `RENAME`
  - `RENUMBER`
- support for multiple statements on one line, separated by `:`
- support for functions of any type (inc. RND, TAB, etc.)
- support for arrays
- distinction between string and numeric variables
- standard BASIC commands:
  - `DATA` and `READ`
  - `GOSUB` and `RETURN`
  - `INPUT`

## Sample Programs

Include in the _programs_ subdirectory are about a hundred classic (old) BASIC demos and games from _Creative Computing_ magazine.  None of these work yet, because they all use at least the `TAB` function, which is not yet supported.

So the first goal is to get these programs working.  Then we'll add some more extensions to support graphics and sound, and we'll really have a cool BASIC environment!
