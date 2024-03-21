rmdir /S /Q ..\input\fsh\diff-fhir-rel
xcopy /S /I /Y ..\input\diff\r4 ..\input\fsh\diff-fhir-rel
copy sushi-config-r4.yaml ..\sushi-config.yaml
copy ig-r4.ini ..\ig.ini
REM copy alias-ig.r4 ..\input\fsh\alias-ig.fsh