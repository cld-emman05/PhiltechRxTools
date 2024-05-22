@echo off
SETLOCAL EnableDelayedExpansion

SET "j11=..\JavaTools\Java11\bin\java.exe"
SET "jarFile=..\JavaTools\DateConverter.jar"

for /F "delims=" %%i in ('%j11% -jar %jarFile% "sys_date"') do set "today=%%i"
for /F "delims=" %%j in ('%j11% -jar %jarFile% "epoch"') do set "epochToday=%%j"

REM Define the browser path
set "browserPath=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

REM Define the websites to open
set "monitoring_sheet=https://shorturl.at/vHRWY"

set "sinch_sms=https://dashboard.sinch.com/sms/analytics?start=%today%000000&end=%today%235959&projectIds[0]=ae871071-e09d-49f7-a62f-1d18d627d2fc"

set "sinch_convapi=https://dashboard.sinch.com/convapi/analytics?dateRange[startDate]=%epochToday%&dateRange[endDate]=%epochToday%"

set "journey_rcp_b2b_group=https://abs-healthwellness-mgmt.crm.dynamics.com/main.aspx?appid=1785c743-a97d-ec11-8d21-000d3a5ca507&pagetype=entityrecord&etn=msdynmkt_journey&id=09eafa1e-bec1-ee11-9079-000d3a3236e0"

set "journey_rcp_b2c=https://abs-healthwellness-mgmt.crm.dynamics.com/main.aspx?appid=1785c743-a97d-ec11-8d21-000d3a5ca507&pagetype=entityrecord&etn=msdynmkt_journey&id=f6a39967-a103-ef11-a1fd-6045bd010d5a"

set "journey_rcp_b2b_appointments=https://abs-healthwellness-mgmt.crm.dynamics.com/main.aspx?appid=1785c743-a97d-ec11-8d21-000d3a5ca507&pagetype=entityrecord&etn=msdynmkt_journey&id=db46c711-a103-ef11-a1fd-6045bd010d5a"

set "journey_rxnp=https://abs-healthwellness-mgmt.crm.dynamics.com/main.aspx?appid=1785c743-a97d-ec11-8d21-000d3a5ca507&pagetype=entityrecord&etn=msdynmkt_journey&id=c9cd8d8e-b5cc-ee11-9079-000d3a592d44"

REM Run the XRMToolBox
:: start "" "%executablePath%"
start "" "%browserPath%" --new-window "" 

REM Wait for the browser to open
timeout /t 5 /nobreak >nul 2>&1

REM Open multiple websites in a single browser window
start "" "%browserPath%" --new-tab "%monitoring_sheet%
start "" "%browserPath%" --new-tab "%sinch_sms%
start "" "%browserPath%" --new-tab "%sinch_convapi%"
start "" "%browserPath%" --new-tab "%journey_rcp_b2b_group%"
start "" "%browserPath%" --new-tab "%journey_rcp_b2c%"
start "" "%browserPath%" --new-tab "%journey_rcp_b2b_appointments%"
start "" "%browserPath%" --new-tab "%journey_rxnp%"

endlocal