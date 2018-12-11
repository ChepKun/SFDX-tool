CLS

ECHO SFDX tool - Service - Open Org
ECHO.

SET /P target=Input username or alias for the target org and press ENTER: 

ECHO.

CALL sfdx force:org:open -u %target%

ECHO.
PAUSE