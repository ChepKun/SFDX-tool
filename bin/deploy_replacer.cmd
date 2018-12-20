SET REPLACER_TEMPLATE=%INIT_PATH%\config\replacer.ini

IF EXIST %REPLACER_TEMPLATE% (

	ECHO Replace tokens in code

	CD /D %INIT_PATH%

	FOR /F "delims== tokens=1,2" %%i IN (%REPLACER_TEMPLATE%) DO (
		CALL bin\replacer "%%i" "%%j" %TEMP_PATH%
	)
	
)