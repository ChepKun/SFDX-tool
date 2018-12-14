:MAIN
CLS

CD /D %INIT_PATH%

ECHO SFDX tool - Main
ECHO.
ECHO Your current project path: %PROJECT_PATH%
ECHO.
ECHO DEVELOPMENT
ECHO 1 - Push Project Code
ECHO 2 - Pull Project Code
ECHO 3 - Status Of Project Code
ECHO 4 - Merge Project Code To Git (WinMerge)
ECHO.
ECHO MISC
ECHO 5 - Refresh Code From Git
ECHO 6 - Deploy
ECHO 7 - Service
ECHO 0 - EXIT
ECHO.

SET /P option=Input option number and press ENTER: 
IF %option%==1 GOTO PUSH
IF %option%==2 GOTO PULL
IF %option%==3 GOTO STATUS
IF %option%==4 GOTO MERGE
IF %option%==5 GOTO REFRESH
IF %option%==6 GOTO DEPLOY
IF %option%==7 GOTO SERVICE
IF %option%==0 EXIT

:PUSH
CALL %INIT_PATH%\bin\sfdx_source_push.cmd
GOTO MAIN

:PULL
CALL %INIT_PATH%\bin\sfdx_source_pull.cmd
GOTO MAIN

:STATUS
CALL %INIT_PATH%\bin\sfdx_source_status.cmd
GOTO MAIN

:MERGE
CALL %INIT_PATH%\bin\merge.cmd
GOTO MAIN

:REFRESH
CALL %INIT_PATH%\bin\refresh_from_git.cmd
GOTO MAIN

:DEPLOY
CALL %INIT_PATH%\bin\deploy.cmd
GOTO MAIN

:SERVICE
CALL %INIT_PATH%\bin\service.cmd
GOTO MAIN