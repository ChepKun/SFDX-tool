CLS

ECHO SFDX tool - Service - Open Org
ECHO.

SET /P alias=Input username or alias for the target org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT

ECHO.

CALL sfdx force:org:open -u %alias%

ECHO.
PAUSE

:EXIT