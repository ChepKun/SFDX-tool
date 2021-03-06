CLS

ECHO SFDX tool - Deploy - Replace Code and Run Tests
ECHO.

SET /P target=Input alias for the target org (or 0 to exit) and press ENTER: 
IF %target%==0 GOTO EXIT

ECHO.

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
CALL sfdx force:mdapi:deploy -d %TEMP_PATH% -u %target% -l RunLocalTests -w -1

ECHO.
PAUSE

:EXIT
IF EXIST %TEMP_PATH% rmdir %TEMP_PATH% /s /q