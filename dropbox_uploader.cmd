@ECHO OFF
@echo:
@echo Please wait........Deleting existing file and uploading new file


REM Jump to current folder
PUSHD "%CD%"

REM Where is Cygwin
REM SET CYGMIN=%~dp0cygmin
SET CYGWIN=C:\cygwin64\bin

REM Where is the uploader script by Andrea Fabrizi
SET UPLOADER=/cygdrive/c/Users/plakhanpal/Documents/GitHub/Dropbox-Uploader/dropbox_uploader.sh

REM Backup PATH variable
set P=%PATH%

REM Add Cygwin to PATH
SET PATH=%CYGWIN%;%PATH%

REM Execute dropbox_uploader by Andrea Fabrizi
sh "%UPLOADER%" -q delete /"Sales and Inventory Management Software.xlsm"
sh "%UPLOADER%" -q upload "/cygdrive/c/Users/plakhanpal/Documents/Sales and Inventory Management Software.xlsm" /
REM sh "%UPLOADER%" %1 %2 %3 %4 %5

REM Restore PATH variable
set PATH=%P%

REM Delete variable P
set P=
POPD