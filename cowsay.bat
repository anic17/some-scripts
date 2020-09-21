@echo off
if "%~1"=="" goto usage
setlocal EnableDelayedExpansion
set "arg1=%~1"
call :len "%arg1%"
set argv1_len=%len%
set ds=_
set cowsay_len=0
:getsize
if %cowsay_len% leq %argv1_len% (
	call :len "%ds%"
	set ds=%ds%_
	
	set /a cowsay_len+=1
	goto getsize
)

echo. %ds%
echo.^< %arg1% ^>
echo. %ds:_=-%
echo.        ^\   ^^__^^
echo.         ^\  ^(oo^)^\_______
echo.            ^(__^)^\       ^)^\/^\
echo.                ^|^|----w ^|
echo.                ^|^|     ^|^|
exit /b %errorlevel%

:usage
echo Usage: %~n0 "text"
echo.
echo Copyright (c) 2020 anic17 Software
exit /b %errorlevel%

:len
echo.%~1 > "%TMP%\str.len"
for %%A in ("%TMP%\str.len") do set /a len=%%~zA-3
del "%TMP%\str.len" /q > nul 2>&1
exit /b %len%