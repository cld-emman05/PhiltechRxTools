@echo off
setlocal

REM Define the browser path
set "browserPath=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

REM Define the websites to open
set "grafana=https://observability.albertsons.com/grafana-enterprise/d/szxnnOJ4z/scob-l2-01-kafka-topic?orgId=1&from=now-3h&to=now&var-Datasource=kafka-itka-metrics&var-Broker=All&var-Topic=RXNP_C02_COMMS_MAIN_TOPIC_PROD"

set "kafka=https://pgm010d01.albertsons.com:8443/clusters/61rB1zleQD-vOkp7VXcFwQ/management/topics/RXNP_C02_COMMS_MAIN_TOPIC_PROD/metrics/consumer-lag"


REM Wait for the browser to open
start snippingtool.exe
start "" "%browserPath%" --new-window "" 
timeout /t 5 /nobreak >nul 2>&1

REM Open multiple websites in a single browser window
start "" "%browserPath%" --new-tab "%grafana%
start "" "%browserPath%" --new-tab "%kafka%

endlocal