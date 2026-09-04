@echo off
set "CHESS2_ROOT=%~dp0"
start "" "%CHESS2_ROOT%WinBoard\WinBoard\WinBoard\winboard.exe" /variant=chess2 /fcp "stockfish.exe load chess2.ini" /fd "%CHESS2_ROOT%Fairy-Stockfish-master\src" /testLegality=false /sweepPromotions=false
