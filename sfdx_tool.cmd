@ECHO OFF
SETLOCAL EnableDelayedExpansion

rem Define Constants
SET INIT_PATH=%0\..\
SET CONSTANTS=%INIT_PATH%\config\constants.ini
SET CUSTOM_SCRIPTS=%INIT_PATH%\bin\custom.cmd

rem We need constants
IF NOT EXIST %CONSTANTS% GOTO ERROR

rem Load constants from file
FOR /F "delims== tokens=1,2" %%i IN (%CONSTANTS%) DO SET %%i=%%j

rem Start menu

CALL %INIT_PATH%\bin\main.cmd

rem Additional break points

:ERROR
ECHO SFDX tool cannot be started.
PAUSE

ENDLOCAL