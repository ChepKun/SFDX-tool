:SERVICE
CLS

ECHO SFDX tool - Service
ECHO.
ECHO 1 - Web Login
ECHO 2 - Orgs List
ECHO 3 - Open Org
ECHO 4 - Create Scratch Org
ECHO 5 - Delete Scratch Org
ECHO 6 - Generate Password
ECHO 0 - BACK
ECHO.

SET /P option=Input option number and press ENTER: 
IF %option%==1 GOTO WEB_LOGIN
IF %option%==2 GOTO ORG_LIST
IF %option%==3 GOTO ORG_OPEN
IF %option%==4 GOTO ORG_CREATE
IF %option%==5 GOTO ORG_DELETE
IF %option%==6 GOTO USER_PASSWORD_GENERATE
IF %option%==0 GOTO EXIT

:WEB_LOGIN
CALL ./bin/sfdx_web_login.cmd
GOTO SERVICE

:ORG_LIST
CALL ./bin/sfdx_org_list.cmd
GOTO SERVICE

:ORG_OPEN
CALL ./bin/sfdx_org_open.cmd
GOTO SERVICE

:ORG_CREATE
CALL ./bin/sfdx_org_create.cmd
GOTO SERVICE

:ORG_DELETE
CALL ./bin/sfdx_org_delete.cmd
GOTO SERVICE

:USER_PASSWORD_GENERATE
CALL ./bin/sfdx_user_password_generate.cmd
GOTO SERVICE