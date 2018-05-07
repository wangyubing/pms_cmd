@echo off
set server-name=%1%
set params=%2%

title %server-name%

echo %params%

if ""=="%active%" ( echo this is empty) else ( echo "action helle lwod" )

set cmdname=java -jar jar\%server-name%-0.0.1-SNAPSHOT.jar %params%
echo %cmdname%

rem F:
rem echo start %server-name%
rem cd F:\pmscloud-file\
java -jar %cd%\jar\%server-name%-0.0.1-SNAPSHOT.jar %params%