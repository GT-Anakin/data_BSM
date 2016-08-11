@if %1x==x goto noplatform
@set MUNGE_PLATFORM=%1
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
@rem EDIT THE LINE BELOW TO POINT TO YOUR BF2 INTSALL PATH

@call soundmungedir _BUILD\sound\cw\%MUNGE_DIR%     sound\cw     sound\cw\%MUNGE_PLATFORM%     %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound cw
@call soundmungedir _BUILD\sound\gcw\%MUNGE_DIR%    sound\gcw    sound\gcw\%MUNGE_PLATFORM%    %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound gcw
@call soundmungedir _BUILD\sound\global\%MUNGE_DIR% sound\global sound\global\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound global nolevelfile
@call soundmungedir _BUILD\sound\shell\%MUNGE_DIR%  sound\shell  sound\shell\%MUNGE_PLATFORM%  %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound shell

@rem Munge global, shell and side specific sound data@rem Munge world specific sound data

@call soundmungedir _BUILD\sound\worlds\co3\%MUNGE_DIR% sound\worlds\co3 sound\worlds\co3\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound co3
@call soundmungedir _BUILD\sound\worlds\common\%MUNGE_DIR% sound\worlds\common sound\worlds\common\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound common

@rem EDIT THE TWO LINES BELOW TO POINT TO YOUR MOD BY REPLACING SND WITH YOUR WORLD ABBREVIATION


@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit