CLS

ECHO SFDX tool - Service - Generate Password
ECHO.

SET /P alias=Input username or alias for the target org and press ENTER: 
SET /P devhub=Input username or alias for the dev hub org and press ENTER: 

ECHO.

CALL sfdx force:user:password:generate -u %alias% -v %devhub%

ECHO.
PAUSE