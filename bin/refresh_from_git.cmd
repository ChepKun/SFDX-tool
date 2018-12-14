CLS

ECHO SFDX tool - Refresh Project Code From Git
ECHO.

rem Navigate to project folder
CD /D %PROJECT_PATH%

rem Start command
CALL git pull origin %GIT_BRANCH%

ECHO.
PAUSE

:EXIT