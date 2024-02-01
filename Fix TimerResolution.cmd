@echo off
color c
mode 95,27

: : ###################################################################### TITLE

title Fix TimerResolution by iamiafo 14:12 01/02/2024

: : ###################################################################### ADMINISTRATOR PRIVILEGES

fltmc >nul 2>&1 || (
    echo ADMINISTRATOR PRIVILEGES ARE REQUIRED!
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo RIGHT-CLICK ON THE SCRIPT AND SELECT "RUN AS ADMINISTRATOR".
        pause & exit 1
    )
    exit 0
)

: : ######################################################################

bcdedit /set useplatformtick yes

bcdedit /set disabledynamictick yes

bcdedit /deletevalue useplatformclock

cls 
exit 

: : ###################################################################### END