CLS

ECHO SFDX tool - Service - Generate Password
ECHO.

SET /P alias=Input username or alias for the target org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT
SET /P devhub=Input username or alias for the dev hub org (or 0 to exit) and press ENTER: 
IF %devhub%==0 GOTO EXIT

ECHO.

CALL sfdx force:user:password:generate -u %alias% -v %devhub%

ECHO.
PAUSE

:EXIT