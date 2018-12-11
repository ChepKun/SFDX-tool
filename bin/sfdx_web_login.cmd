CLS

ECHO SFDX tool - Service - Web Login
ECHO.

SET /P alias=Input an alias for the authenticated org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT

ECHO.

CALL sfdx force:auth:web:login -a %alias%

ECHO.
PAUSE

:EXIT