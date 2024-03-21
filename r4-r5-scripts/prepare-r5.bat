rmdir /S /Q ..\input\fsh\diff-fhir-rel
xcopy /S /I /Y ..\input\diff\r5 ..\input\fsh\diff-fhir-rel
copy sushi-config-r5.yaml ..\sushi-config.yaml
copy ig-r5.ini ..\ig.ini
REM copy alias-ig.r5 ..\input\fsh\alias-ig.fsh