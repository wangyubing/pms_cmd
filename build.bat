@echo off
set server-name=%1%

title build-%server-name%

F:
echo start %server-name%
cd F:\workspace\pmscloud\%server-name%
mvn clean package -Dmaven.test.skip=true

echo copy
copy F:\workspace\pmscloud\%server-name%\target\%server-name%-0.0.1-SNAPSHOT.jar F:\pmscloud-file\jar\
echo end copy

rem echo start eureka-client
rem cd F:\workspace\pmscloud\eureka-client
rem mvn clean package -Dmaven.test.skip=true
rem copy F:\workspace\pmscloud\eureka-client\target\eureka-client-0.0.1-SNAPSHOT.jar F:\pmscloud-file\jar\
