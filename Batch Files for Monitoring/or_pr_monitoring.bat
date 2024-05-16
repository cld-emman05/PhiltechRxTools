@echo off
setlocal

REM Define the browser path
set "browserPath=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

REM Define the websites to open
set "reportSheet=https://shorturl.at/fwxz1"

set "suppressedEvents=https://api.loganalytics.io/v1/subscriptions/1147988c-8516-4b4c-8b61-7be5c39c9e17/resourcegroups/az-phiapp-prod-01-esla-prod-westus-rg-01/providers/microsoft.operationalinsights/workspaces/esla-phi-prod-log-laws-01/query?&timespan=P1D"

set "plugins="

set "capacity="


REM Wait for the browser to open
start "" "%browserPath%" --new-window "%reportSheet%"
timeout /t 5 /nobreak >nul 2>&1

REM Open multiple websites in a single browser window
start "" "%browserPath%" --new-tab "%suppressedEvents%"
start "" "%browserPath%" --new-tab "%active%"
start "" "%browserPath%" --new-tab "%failed%"


endlocal