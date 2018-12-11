CLS

ECHO SFDX tool - Service - Create Scratch Org
ECHO.

SET /P alias=Input an alias for for the created scratch org and press ENTER: 
SET /P devhub=Input username or alias for the dev hub org and press ENTER: 

CALL sfdx force:org:create -d 30 -a %alias% -s -v %devhub% -f ./config/scratch-org-cfg.json

PAUSE