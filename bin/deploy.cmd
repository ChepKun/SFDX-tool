:DEPLOY
CLS

ECHO SFDX tool - Deploy
ECHO.
ECHO Source Code
ECHO 1 - Validate Code and Run Tests
ECHO 2 - Replace Code and Run Tests
ECHO 3 - Validate Code
ECHO 4 - Replace Code
ECHO.
ECHO Packages
ECHO 5 - Install Package
ECHO 6 - Install Package Report
ECHO 0 - BACK
ECHO.

SET /P option=Input option number and press ENTER: 
IF %option%==1 GOTO VALIDATE_T
IF %option%==2 GOTO REPLACE_T
IF %option%==3 GOTO VALIDATE
IF %option%==4 GOTO REPLACE
IF %option%==5 GOTO INSTALL_PACKAGE
IF %option%==6 GOTO INSTALL_PACKAGE_REPORT
IF %option%==0 GOTO EXIT

:VALIDATE_T
CALL %INIT_PATH%\bin\deploy_validate_t.cmd
GOTO DEPLOY

:REPLACE_T
CALL %INIT_PATH%\bin\deploy_replace_t.cmd
GOTO DEPLOY

:VALIDATE
CALL %INIT_PATH%\bin\deploy_validate.cmd
GOTO DEPLOY

:REPLACE
CALL %INIT_PATH%\bin\deploy_replace.cmd
GOTO DEPLOY

:INSTALL_PACKAGE
CALL %INIT_PATH%\bin\sfdx_package_install.cmd
GOTO DEPLOY

:INSTALL_PACKAGE_REPORT
CALL %INIT_PATH%\bin\sfdx_package_install_report.cmd
GOTO DEPLOY

:EXIT