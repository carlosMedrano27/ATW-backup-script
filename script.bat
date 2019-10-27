@echo off

for /f "tokens=1-3 delims=/- " %%a in ('date /t') do set FECHA=%%c%%b%%a
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set HORA=%%a%%b

set BACKUP_FILE=Contenido_%FECHA%%HORA%.zip
set BACKUP_LOG_FILE=logs/Contenido_%FECHA%.log

echo. >> %BACKUP_LOG_FILE%
echo Inicia respaldo >> %BACKUP_LOG_FILE%
echo %FECHA% %HORA% >> %BACKUP_LOG_FILE%

7z.exe a -tzip "C:\Users\karlitosneto\Documents\backup\OneDrive\atw\BACKUP_FILE" "C:\Users\karlitosneto\Documents\ATW-Ecommerce" >> %BACKUP_LOG_FILE%

echo. >> %BACKUP_LOG_FILE%
echo Fin respaldo >> %BACKUP_LOG_FILE%
echo %FECHA% %HORA% >> %BACKUP_LOG_FILE%
echo Log f