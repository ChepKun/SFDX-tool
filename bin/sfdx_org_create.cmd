CLS

ECHO SFDX tool - Service - Create Scratch Org
ECHO.

SET /P alias=Input an alias for a new scratch org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT
SET /P devhub=Input username or alias for the dev hub org (or 0 to exit) and press ENTER: 
IF %devhub%==0 GOTO EXIT

ECHO.

CALL sfdx force:org:create -d 30 -a %alias% -s -v %devhub% -f ./config/scratch-org-cfg.json

ECHO.
PAUSE

:EXIT