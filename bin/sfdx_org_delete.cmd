CLS

ECHO SFDX tool - Service - Delete Scratch Org
ECHO.

SET /P alias=Input an alias for for the target scratch org and press ENTER: 
SET /P devhub=Input username or alias for the dev hub org and press ENTER: 

CALL sfdx force:org:delete -u %alias% -v %devhub%

PAUSE