@echo off
setlocal

REM Define the browser path
set "browserPath=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

REM Define the websites to open
set "sysJobs=https://admin.powerplatform.microsoft.com/analytics/d365ce/db7c71b2-bcea-4cf5-a0bb-021cf33d81a1/systemjobs"

set "plugins=https://admin.powerplatform.microsoft.com/analytics/d365ce/db7c71b2-bcea-4cf5-a0bb-021cf33d81a1/plugins"

set "capacity=https://admin.powerplatform.microsoft.com/resources/capacity/environment/5b20e335-43ab-46f0-9e5a-00ad9c3cbb79"


REM Wait for the browser to open
start snippingtool.exe
start "" "%browserPath%" --new-window ""
timeout /t 5 /nobreak >nul 2>&1

REM Open multiple websites in a single browser window
start "" "%browserPath%" --new-tab "%sysJobs%"
start "" "%browserPath%" --new-tab "%plugins%"
start "" "%browserPath%" --new-tab "%capacity%"

endlocal