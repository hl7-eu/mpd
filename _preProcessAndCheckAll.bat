@echo off
setlocal

echo ==================================================================================
echo Preprocessing - generate FHIR version specific IGs
call _preprocessMultiVersion.bat

echo ==================================================================================
echo checking repos - SUSHI R4
call sushi .

echo ==================================================================================
echo checking repos - SUSHI R5
call sushi igs\mpd-r5

echo ==================================================================================
echo check build R4
call _genonce.bat

echo ==================================================================================
echo check build R5
pushd igs\mpd-r5
call _genonce.bat
popd

echo ==================================================================================

endlocal