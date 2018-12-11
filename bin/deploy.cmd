:DEPLOY
CLS

ECHO SFDX tool - Deploy
ECHO.
ECHO 1 - Validate Code
ECHO 2 - Replace Code
ECHO 0 - BACK
ECHO.

SET /P option=Input option number and press ENTER: 
IF %option%==1 GOTO VALIDATE
IF %option%==2 GOTO REPLACE
IF %option%==0 GOTO EXIT

:VALIDATE
CALL %INIT_PATH%\bin\deploy_validate.cmd
GOTO DEPLOY

:REPLACE
CALL %INIT_PATH%\bin\deploy_replace.cmd
GOTO DEPLOY


:EXIT