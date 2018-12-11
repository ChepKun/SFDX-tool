CLS

ECHO SFDX tool - Push
ECHO.

SET /P alias=Input username or alias for the target org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT

ECHO.

rem Navigate to project folder
CD /D %PROJECT_PATH%

rem Start sfdx command
CALL sfdx force:source:push -u %alias% -f

ECHO.
PAUSE

:EXIT