@echo off

echo This will first install chocolatey. And then git, python, vscode and nodelts.
echo .
echo You can checkout the packages at https://chocolatey.org/packages
echo .
echo Make sure you are running CMD.exe as administrator.
echo .
echo Any questions please feel free to open an issue https://github.com/orgs/Tribe-Studios
echo .
pause
echo .


powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
pause

echo Now chocolatey is installed, Time to install the dev tools we need.
echo.
echo.
pause

choco install vscode
choco pin add -n vscode

choco install git

choco install nodejs-lts

choco install python

:END

echo .
echo To keep your system updated, run update-all.bat regularly from an administrator CMD.exe.
echo .
echo .
echo .
pause
