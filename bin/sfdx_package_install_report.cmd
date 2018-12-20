CLS

ECHO SFDX tool - Deploy - Install Package Report
ECHO.

SET /P alias=Input username or alias for the target org (or 0 to exit) and press ENTER: 
IF %alias%==0 GOTO EXIT
SET /P requestId=Input the ID install request (or 0 to exit) and press ENTER: 
IF %requestId%==0 GOTO EXIT

:GET_REPORT
ECHO.

CALL sfdx force:package:install:report -i %requestId% -u %alias%

ECHO.

SET /P option=Do you want to get report again? (Y/N): 
IF %option%==Y GOTO GET_REPORT
IF %option%==y GOTO GET_REPORT

:EXIT