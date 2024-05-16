pushd %~dp0
set "JRE_PATH=../Java11/bin/java.exe"
echo JRE Path: %JRE_PATH%

%JRE_PATH%" -jar %~dp0TextTools.jar

pause