@ECHO OFF
SETLOCAL EnableDelayedExpansion

rem Define Constants
set CONSTANTS=.\config\constants.ini

rem We need constants
IF NOT EXIST %CONSTANTS% GOTO ERROR

rem Load constants from file
FOR /F "delims== tokens=1,2" %%i IN (%CONSTANTS%) DO SET %%i=%%j

rem Break points

:MAIN
CALL ./bin/main.cmd

:SERVICE
CALL ./bin/service.cmd
GOTO MAIN

:ERROR
ECHO SFDX tool cannot be started.
PAUSE

ENDLOCAL