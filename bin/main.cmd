CLS

ECHO SFDX tool - Main
ECHO.
ECHO 1 - 
ECHO 2 - 
ECHO 3 - 
ECHO 4 - 
ECHO 5
ECHO 6
ECHO 7
ECHO 8
ECHO 9 - Service
ECHO 0 - EXIT
ECHO.

SET /P option=Input option number and press ENTER: 
IF %option%==9 GOTO SERVICE
IF %option%==0 EXIT