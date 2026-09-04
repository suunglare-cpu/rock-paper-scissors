# Chess2 — Rock Paper Scissors

Chess2 is a 9×9 Fairy-Stockfish variant in which every piece moves one square in any direction and captures according to a rock-paper-scissors cycle:

- `r` captures only `s`
- `s` captures only `p`
- `p` captures only `r`

White wins by reaching `i9`; Black wins by reaching `a1`. The starting position is:

```text
9/4pr3/4spr2/5spr1/1PS3sp1/1RPS5/2RPS4/3RP4/9 w - - 0 1
```

## Play on Windows

Download `Chess2-Windows.zip` from the GitHub Releases page, extract the entire archive, and double-click `Launch Chess2.cmd`.

The WinBoard graphics use non-promoting built-in piece slots so moves to the final rank are not mistakenly treated as chess pawn promotions:

- `r` appears as a rook
- `s` appears as a knight
- `p` appears as a bishop

## Build from source

Install MSYS2 and open its UCRT64 terminal. Then run:

```bash
pacman -S --needed mingw-w64-ucrt-x86_64-gcc make
cd Fairy-Stockfish-master/src
make -j2 ARCH=x86-64 largeboards=yes all=yes build
./stockfish.exe check chess2.ini
```

The custom configuration option added by this fork is:

```ini
captureTargets = r:s s:p p:r
```

## Repository contents

- `Fairy-Stockfish-master/` contains the complete modified engine source and `src/chess2.ini`.
- `Launch Chess2.cmd` is a portable launcher used by the Windows release package.
- `THIRD_PARTY_NOTICES.md` contains upstream attribution and licensing information.

Local WinBoard downloads, compiled binaries, runtime DLLs, and generated release archives are excluded from source commits. They are packaged separately in the Windows release archive.

## License

The Fairy-Stockfish-derived source is distributed under GNU GPL v3. See `LICENSE` and `Fairy-Stockfish-master/Copying.txt`. WinBoard/XBoard is also GPL-licensed; see `THIRD_PARTY_NOTICES.md`.

