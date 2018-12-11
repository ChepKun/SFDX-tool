:SERVICE
CLS

ECHO SFDX tool - Package
ECHO.
ECHO 1 - 
ECHO 2 - 
ECHO 3 - 
ECHO 4 - 
ECHO 5 - 
ECHO 6 - 
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
CALL %INIT_PATH%\bin\sfdx_web_login.cmd
GOTO SERVICE


:EXIT