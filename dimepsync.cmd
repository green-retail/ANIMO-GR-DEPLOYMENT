@echo=off
title Green Retail DIMEP DAEMON

:loop
cls
"DIMEP Sync.exe" "Server=10.20.0.2;Database=DMPACESSOII;User Id=sa;Password=administrador;"
timeout 360
cls
goto loop
