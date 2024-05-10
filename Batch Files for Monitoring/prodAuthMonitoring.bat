@echo off
setlocal

REM Define the browser path
set "browserPath=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

REM Define the websites to open
set "grafana_auth=https://observability.albertsons.com/grafana-enterprise/d/b2a88076-ed54-454d-855d-5081fa0cc75b/rx-sd-java-spring-boot?orgId=1&var-Datasource=fa5d4406-ce93-4c86-88e2-914dcdec67e2&var-namespace=rxwa-prod&var-application=rxwa-auth-service&var-pod=All&var-instance=All&from=now-3h&to=now&viewPanel=113&var-jvm_memory_pool_heap=All&var-jvm_memory_pool_nonheap=All"

set "grafana_gql=https://observability.albertsons.com/grafana-enterprise/d/b2a88076-ed54-454d-855d-5081fa0cc75b/rx-sd-java-spring-boot?orgId=1&var-Datasource=fa5d4406-ce93-4c86-88e2-914dcdec67e2&var-namespace=rxwa-prod&var-application=rxwa-gql-service&var-pod=All&var-instance=All&from=now-3h&to=now&viewPanel=113&var-jvm_memory_pool_heap=All&var-jvm_memory_pool_nonheap=All"


REM Wait for the browser to open
timeout /t 5 /nobreak >nul 2>&1

REM Open multiple websites in a single browser window
start "" "%browserPath%" --new-window "%grafana_auth%
start "" "%browserPath%" --new-tab "%grafana_gql%

endlocal