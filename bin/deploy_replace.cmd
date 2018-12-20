CLS

ECHO SFDX tool - Deploy - Replace Code
ECHO.

IF NOT "%1"=="" (
	SET target=%1
	GOTO DEPLOY_START
)

SET /P target=Input alias for the target org (or 0 to exit) and press ENTER: 
IF %target%==0 GOTO EXIT

ECHO.

:DEPLOY_START

rem Navigate to project folder
CD /D %PROJECT_PATH%

rem Start sfdx command
CALL sfdx force:source:convert -d %TEMP_PATH%

ECHO.

rem Replace
CALL %INIT_PATH%\bin\deploy_replacer.cmd

ECHO.

rem Navigate to project folder
CD /D %PROJECT_PATH%

rem Start deployement
CALL sfdx force:mdapi:deploy -d %TEMP_PATH% -u %target% -w -1

ECHO.
PAUSE

:EXIT
IF EXIST %TEMP_PATH% rmdir %TEMP_PATH% /s /q