@echo=off
title Green Retail DIMEP DAEMON

:loop
cls
"DIMEP Sync.exe" "Server=10.20.0.4;Database=DMPACESSOII;User Id=sa;Password=sa;"
timeout 360
cls
goto loop
