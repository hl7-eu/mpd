@echo off
setlocal
set "publisher_jar=publisher.jar"
set "input_cache_path=.\input-cache\"
echo Checking internet connection...
powershell -Command "try { Invoke-WebRequest -Uri 'http://tx.fhir.org' -UseBasicParsing -TimeoutSec 10 > $null; exit 0 } catch { exit 1 }"
if %ERRORLEVEL%==0 (
  echo Online
  set "txoption="
) else (
  echo Offline
  set "txoption=-tx n/a"
)
echo %txoption%
set "JAVA_TOOL_OPTIONS=%JAVA_TOOL_OPTIONS% -Dfile.encoding=UTF-8"

if exist "%input_cache_path%%publisher_jar%" (
  java -jar "%input_cache_path%%publisher_jar%" -ig . %txoption% %*
) else (
  if exist "..\%publisher_jar%" (
    java -jar "..\%publisher_jar%" -ig . %txoption% %*
  ) else (
    echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
    exit /b 1
  )
)
endlocal
