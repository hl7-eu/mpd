@echo off
setlocal enabledelayedexpansion

rem _preProcessMultiVersion.bat
rem Windows implementation mirroring _preprocessMultiVersion.sh

set "versions=4.0.1 5.0.0"

for %%v in (%versions%) do call :process_version %%v

goto :eof

:process_version
  set "version=%1"
  if "%version%"=="4.0.1" (
    set "context_version=R4"
    set "build_dir=."
  ) else (
    set "context_version=R5"
    set "build_dir=igs\mpd-r5"
  )

  echo === Processing %context_version% (build: %build_dir%) ===

  rem clean destination with explicit error reporting
  if "%context_version%"=="R4" (
    echo === Cleaning R4 root directories ===
    if exist "input" (
      echo Removing input folder ...
      rmdir /s /q input
      if errorlevel 1 echo WARNING: rmdir failed for input directory
    )
    if exist "ig-template" (
      echo Removing ig-template folder ...
      rmdir /s /q ig-template
      if errorlevel 1 echo WARNING: rmdir failed for ig-template directory
    )
    
    del /f /q sushi-config.yaml 2>nul
    del /f /q README.md 2>nul
    del /f /q publication-request.json 2>nul
    del /f /q LICENSE 2>nul
    del /f /q ig.ini 2>nul
    del /f /q _genonce.sh 2>nul
    del /f /q _updatePublisher.sh 2>nul
  ) else (
    if exist "%build_dir%" (
      del /f /q "%build_dir%\*" 2>nul
      if exist "%build_dir%\input" (
        echo Removing %build_dir%\input folder ...
        rmdir /s /q "%build_dir%\input"
        if errorlevel 1 echo WARNING: rmdir failed for %build_dir%\input directory
      )
      
      if exist "%build_dir%\ig-template" (
        echo Removing %build_dir%\ig-template folder ...
        rmdir /s /q "%build_dir%\ig-template"
        if errorlevel 1 echo WARNING: rmdir failed for %build_dir%\ig-template directory
      )
    )
  )

  rem copy source files into build location (do not modify ig-src)
  if "%context_version%"=="R4" (
    xcopy "ig-src\*" "." /Y /I /Q >nul 2>nul
    xcopy "ig-src\input" "input" /E /I /Y /Q >nul 2>nul
    xcopy "ig-src\ig-template" "ig-template" /E /I /Y /Q >nul 2>nul
    rem Ensure any files missed by xcopy (odd names) are copied explicitly
    for /f "delims=" %%A in ('dir /b /a:-d "ig-src"') do (
      copy /Y "ig-src\%%A" "%%~nxA" >nul 2>nul
    )
  ) else (
    if not exist "%build_dir%" mkdir "%build_dir%" >nul 2>nul
    xcopy "ig-src\*" "%build_dir%" /Y /I /Q >nul 2>nul
    rem Ensure sushi-config template is present in build dir (some xcopy setups skip certain names)
    if exist "ig-src\sushi-config.liquid.yaml" copy /y "ig-src\sushi-config.liquid.yaml" "%build_dir%\sushi-config.liquid.yaml" >nul 2>nul
    xcopy "ig-src\input" "%build_dir%\input" /E /I /Y /Q >nul 2>nul
    xcopy "ig-src\ig-template" "%build_dir%\ig-template" /E /I /Y /Q >nul 2>nul
    rem Ensure any files missed by xcopy (odd names) are copied explicitly
    for /f "delims=" %%A in ('dir /b /a:-d "ig-src"') do (
      copy /Y "ig-src\%%A" "%build_dir%\%%~nxA" >nul 2>nul
    )
  )

  rem compute absolute context file path
  if "%context_version%"=="R4" (
    set "context_file=%~dp0context-R4.json"
  ) else (
    set "context_file=%~dp0context-R5.json"
  )

  rem Process liquid templates using CMD-safe dir listing and FOR /F
  if "%context_version%"=="R4" (
    for /f "delims=" %%p in ('dir /b /s "*.liquid.*" ^| findstr /i /v "\\ig-src\\"') do (
      set "f=%%p"
      set "dir=%%~dpp"
      set "basename=%%~np"
      set "ext=%%~xp"
      set "basename=!basename:.liquid=!"
      set "out=!dir!!basename!!ext!"
      echo - %%p --> !out!
      call npx --yes liquidjs -t @"%%p" --context @"%context_file%" > "!out!"
      del /f /q "%%p"
    )
  ) else (
    for /f "delims=" %%p in ('dir /b /s "%build_dir%\*.liquid.*"') do (
      set "f=%%p"
      set "dir=%%~dpp"
      set "basename=%%~np"
      set "ext=%%~xp"
      set "basename=!basename:.liquid=!"
      set "out=!dir!!basename!!ext!"
      echo - %%p --> !out!
      call npx --yes liquidjs -t @"%%p" --context @"%context_file%" > "!out!"
      del /f /q "%%p"
    )
  )
  goto :eof

endlocal
echo Done.
