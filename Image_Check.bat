@echo off
set LogFile=%1
for /f "tokens=3" %%a in ('reg query hkey_users\.default /v imageversion ^|findstr /ri "REG_SZ"') do (set image=%%a)
for /f "tokens=4" %%a in ('cscript slmgr.vbs /xpr ^|findstr /r "Windows"') do (set activation=%%a)
echo.%computername%,%image%,%activation%,%date%,%time%>>%LogFile%