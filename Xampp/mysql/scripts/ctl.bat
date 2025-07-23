@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop


"P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\bin\mysqld" --defaults-file="P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\bin\my.ini" --standalone
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "P:\Alchemystic\Git\AlchemysticWebsite\Xampp\killprocess.bat" "mysqld.exe"

if not exist "P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\data\%computername%.pid" goto finish
echo Delete %computername%.pid ...
del "P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\data\%computername%.pid"
goto finish


:error
echo MySQL could not be started

:finish
exit
