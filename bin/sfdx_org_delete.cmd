CLS

ECHO SFDX tool - Service - Delete Scratch Org
ECHO.

SET /P alias=Input an alias for for the target scratch org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT
SET /P devhub=Input username or alias for the dev hub org (or 0 to exit) and press ENTER: 
IF %devhub%==0 GOTO EXIT

ECHO.

CALL sfdx force:org:delete -u %alias% -v %devhub%

ECHO.

PAUSE

:EXIT