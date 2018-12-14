CLS

ECHO SFDX tool - Deploy - Install Package
ECHO.

SET /P alias=Input username or alias for the target org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT
SET /P packageId=Input the ID or alias of the package version to install. (or 0 to exit) and press ENTER: 
IF %packageId%==0 GOTO EXIT

ECHO.

CALL sfdx force:package:install -r -p %packageId% -u %alias% -s AdminsOnly -t Mixed

ECHO.
PAUSE

:EXIT