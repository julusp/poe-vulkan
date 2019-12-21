@echo off
set change=0
IF NOT DEFINED DXVK_HUD (
   echo Setting up HUD
   setx DXVK_HUD version
   set change=1
)
IF NOT DEFINED DXVK_ASYNC (
   echo Enabling Async
   set DXVK_ASYNC=1
   setx DXVK_ASYNC 1 
   set change=1
) 
IF %change%==1 pause
:MENU
cls
ECHO DXVK Setup
ECHO =============================
ECHO Current status:

IF NOT DEFINED DXVK_STATE_CACHE (
  set DXVK_STATE_CACHE=1
)
IF %DXVK_ASYNC%==1 ECHO DXVK_ASYNC: Enabled
IF %DXVK_ASYNC%==0 ECHO DXVK_ASYNC: Disabled
IF %DXVK_STATE_CACHE%==0 ECHO DXVK_STATE_CACHE: Disabled 
IF %DXVK_STATE_CACHE%==1 ECHO DXVK_STATE_CACHE: Enabled 
ECHO =============================
ECHO 1) Disable Async
ECHO 2) Enable Async
ECHO 3) Disable State cache
ECHO 4) Enable State cache
ECHO 5) Exit
SET /P M=Select option and press enter:
IF %M%==1 GOTO ASYNC_DISABLE
IF %M%==2 GOTO ASYNC_ENABLE
IF %M%==3 GOTO CACHE_DISABLE
IF %M%==4 GOTO CACHE_ENABLE
IF %M%==5 GOTO EOF
GOTO MENU
:ASYNC_DISABLE
setx DXVK_ASYNC 0
set DXVK_ASYNC=0
set change=1
GOTO MENU
:ASYNC_ENABLE
setx DXVK_ASYNC 1
set DXVK_ASYNC=1
set change=1
GOTO MENU
:CACHE_DISABLE
setx DXVK_STATE_CACHE 0
set DXVK_STATE_CACHE=0
set change=1
GOTO MENU
:CACHE_ENABLE
setx DXVK_STATE_CACHE 1
set DXVK_STATE_CACHE=1
set change=1
GOTO MENU
:EOF
IF %change%==1 (
echo Please restart steam for changes to take effect
) else (
echo No changes made
)
pause 