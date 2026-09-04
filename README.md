Chess2 Rock Paper Scissors
Chess2 is a 9 by 9 Fairy Stockfish variant. Every piece moves one square in any direction.
R captures only S.
S captures only P.
P captures only R.
White wins by reaching i9. Black wins by reaching a1.
Starting position:
9/4pr3/4spr2/5spr1/1PS3sp1/1RPS5/2RPS4/3RP4/9 w - - 0 1
Play on Windows
Download Chess2-Windows.zip from the GitHub Releases page.
Extract the entire ZIP file.
Double-click Launch Chess2.cmd.
R looks like a rook.
S looks like a knight.
P looks like a bishop.
Build from source
Install MSYS2 and open the UCRT64 terminal. Run these commands one at a time:
pacman -S --needed mingw-w64-ucrt-x86_64-gcc make
cd Fairy-Stockfish-master/src
make -j2 ARCH=x86-64 largeboards=yes all=yes build
./stockfish.exe check chess2.ini
The custom capture setting is:
captureTargets = r:s s:p p:r
Files
Fairy-Stockfish-master contains the modified engine source and chess2.ini.
Launch Chess2.cmd starts Chess2 in WinBoard.
THIRD_PARTY_NOTICES.md contains licensing information for the original programs.
License
The modified Fairy Stockfish source uses the GNU GPL version 3 license. See LICENSE and Fairy-Stockfish-master/Copying.txt.
WinBoard is also GPL licensed. See THIRD_PARTY_NOTICES.md.
