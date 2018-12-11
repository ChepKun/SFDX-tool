CLS

ECHO SFDX tool - Service - Web Login
ECHO.

SET /P alias=Input an alias for the authenticated org and press ENTER: 

CALL sfdx force:auth:web:login -a %alias%

PAUSE