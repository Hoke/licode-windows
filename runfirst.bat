@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

echo ���SFUChat��������
set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set evname=SFUChat
set javapath=%~dp0
reg add "%regpath%" /v %evname% /d %javapath% /f
pause>nul