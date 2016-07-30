@if %1x==x goto noplatform
@set MUNGE_PLATFORM=%1
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
@rem EDIT THE LINE BELOW TO POINT TO YOUR BF2 INTSALL PATH

@rem Munge global, shell and side specific sound data@rem Munge world specific sound data
@call soundmungedir _BUILD\sound\worlds\co3\%MUNGE_DIR% sound\worlds\co3 sound\worlds\co3\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound co3

@rem EDIT THE TWO LINES BELOW TO POINT TO YOUR MOD BY REPLACING SND WITH YOUR WORLD ABBREVIATION


@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit