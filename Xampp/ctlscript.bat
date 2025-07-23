@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\ingres\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\ingres\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\postgresql\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\postgresql\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\openoffice\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\openoffice\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache-tomcat\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\resin\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\resin\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\jetty\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\jetty\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\subversion\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\lucene\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\lucene\scripts\ctl.bat START)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\third_application\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\third_application\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\third_application\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\lucene\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\subversion\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\subversion\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\jetty\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\jetty\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\resin\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\resin\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\openoffice\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\openoffice\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\apache\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\ingres\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\ingres\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\mysql\scripts\ctl.bat STOP)
if exist P:\Alchemystic\Git\AlchemysticWebsite\Xampp\postgresql\scripts\ctl.bat (start /MIN /B P:\Alchemystic\Git\AlchemysticWebsite\Xampp\postgresql\scripts\ctl.bat STOP)

:end

