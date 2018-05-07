@echo off
title server-start

echo build ......
start cmd /k "call build.bat eureka-server" 
start cmd /k "call build.bat eureka-client" 

echo end build


timeout /t 30 /NOBREAK


echo copy ......
copy F:\workspace\pmscloud\eureka-server\target\eureka-server-0.0.1-SNAPSHOT.jar F:\pmscloud-file\jar\eureka-server.jar
copy F:\workspace\pmscloud\eureka-client\target\eureka-client-0.0.1-SNAPSHOT.jar F:\pmscloud-file\jar\eureka-client.jar
echo end copy


start cmd /k "java -jar %cd%\jar\eureka-server.jar --spring.profiles.active=peer1"
start cmd /k "java -jar %cd%\jar\eureka-server.jar --spring.profiles.active=peer2"
start cmd /k "java -jar %cd%\jar\eureka-client.jar"

rem F:
rem cd F:\pmscloud-file
rem echo start eureka-server peer2...
rem start cmd /k "call run.bat eureka-server peer2" 

rem timeout /t 10 /NOBREAK
rem echo start eureka-server  peer2...
rem start cmd /k "call run.bat eureka-server peer2" 

rem timeout /t 30 /NOBREAK
rem echo start eureka-client  ...
rem start cmd /k "call run.bat eureka-client" 




rem start /min cmd /c prj_name.bat

rem java -jar target/eureka-server-0.0.1-SNAPSHOT.jar --spring.profiles.active=peer1 
rem java -jar target/eureka-server-0.0.1-SNAPSHOT.jar --spring.profiles.active=peer2

rem ÅäÖÃ·þÎñ
rem cd F:\workspace\pmscloud\config-server
rem mvn clean package -Dmaven.test.skip=true
rem java -jar target/config-server-0.0.1-SNAPSHOT.jar

rem ÅäÖÃ¿Í»§¶Ë
rem cd F:\workspace\pmscloud\config-client
rem mvn clean package -Dmaven.test.skip=true
rem java -jar target/config-client-0.0.1-SNAPSHOT.jar


rem cd F:\workspace\pmscloud\eureka-client
rem mvn clean package -Dmaven.test.skip=true
rem java -jar target/eureka-client-0.0.1-SNAPSHOT.jar

rem cd F:\workspace\pmscloud\service-feign
rem mvn clean package -Dmaven.test.skip=true
rem java -jar target/service-feign-0.0.1-SNAPSHOT.jar

rem cd F:\workspace\pmscloud\service-ribbon
rem mvn clean package -Dmaven.test.skip=true
rem java -jar target/service-ribbon-0.0.1-SNAPSHOT.jar

rem cd F:\workspace\pmscloud\service-zuul
rem mvn clean package -Dmaven.test.skip=true
rem java -jar target/service-zuul-0.0.1-SNAPSHOT.jar

pause