@if %1x==x goto noplatform
@set MUNGE_PLATFORM=%1
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%

@rem Munge global, shell and side specific sound data

@call soundmungedir _BUILD\sound\worlds\co3\%MUNGE_DIR% sound\worlds\co3 sound\worlds\co3\%MUNGE_PLATFORM% %MUNGE_PLATFORM% _BUILD _LVL_%MUNGE_PLATFORM%\sound _BUILD\sound co3

@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit