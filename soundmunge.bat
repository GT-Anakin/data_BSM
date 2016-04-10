@if %1x==x goto noplatform
@set MUNGE_PLATFORM=%1
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%

@rem Munge global, shell and side specific sound data
@call soundmungedir _BUILD\sound\cw\%MUNGE_DIR%     sound\cw     sound\cw\%MUNGE_PLATFORM%     %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound cw
@call soundmungedir _BUILD\sound\gcw\%MUNGE_DIR%    sound\gcw    sound\gcw\%MUNGE_PLATFORM%    %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound gcw
@call soundmungedir _BUILD\sound\global\%MUNGE_DIR% sound\global sound\global\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound global nolevelfile
@call soundmungedir _BUILD\sound\shell\%MUNGE_DIR%  sound\shell  sound\shell\%MUNGE_PLATFORM%  %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound shell
@rem Munge world specific sound data
@call soundmungedir _BUILD\sound\worlds\co3\%MUNGE_DIR% sound\worlds\co3 sound\worlds\co3\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound co3


@set BAT_PATH=%~p0
@set WORLD_NAME=%BAT_PATH:~-4,3%
@call soundmungedir _BUILD\sound\worlds\%WORLD_NAME%\%MUNGE_DIR% sound\worlds\%WORLD_NAME% sound\worlds\%WORLD_NAME%\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound %WORLD_NAME%
@for /F "tokens=2*" %%A in ('reg query "HKEY_CURRENT_USER\Software\Pandemic Studios\Visual Munge\General" /v ModToolsBattlefrontDir') do @set BF2_PATH=%%B
xcopy _LVL_%MUNGE_PLATFORM%\SOUND\* "%BF2_PATH%\addon\%WORLD_NAME%\data\_LVL_PC\SOUND\" /Y

@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit