@if %1x==x goto noplatform
@set MUNGE_PLATFORM=%1
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%

@rem Clean global, shell and side specific sound data
@call soundcleandir _BUILD\sound\cw\%MUNGE_DIR%     _LVL_%MUNGE_PLATFORM%\sound\cw.lvl     cw
@call soundcleandir _BUILD\sound\gcw\%MUNGE_DIR%    _LVL_%MUNGE_PLATFORM%\sound\gcw.lvl    gcw
@call soundcleandir _BUILD\sound\global\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\global.lvl global
@call soundcleandir _BUILD\sound\shell\%MUNGE_DIR%  _LVL_%MUNGE_PLATFORM%\sound\shell.lvl  shell
@rem Clean world specific sound data
@call soundcleandir _BUILD\sound\worlds\cor\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\cor.lvl   cor
@call soundcleandir _BUILD\sound\worlds\dag\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\dag.lvl   dag
@call soundcleandir _BUILD\sound\worlds\dea\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\dea.lvl   dea
@call soundcleandir _BUILD\sound\worlds\end\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\end.lvl   end
@call soundcleandir _BUILD\sound\worlds\fel\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\fel.lvl   fel
@call soundcleandir _BUILD\sound\worlds\gal\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\gal.lvl   gal
@call soundcleandir _BUILD\sound\worlds\geo\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\geo.lvl   geo
@call soundcleandir _BUILD\sound\worlds\hot\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\hot.lvl   hot
@call soundcleandir _BUILD\sound\worlds\kam\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\kam.lvl   kam
@call soundcleandir _BUILD\sound\worlds\kas\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\kas.lvl   kas
@call soundcleandir _BUILD\sound\worlds\mus\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\mus.lvl   mus
@call soundcleandir _BUILD\sound\worlds\myg\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\myg.lvl   myg
@call soundcleandir _BUILD\sound\worlds\nab\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\nab.lvl   nab
@call soundcleandir _BUILD\sound\worlds\pol\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\pol.lvl   pol
@call soundcleandir _BUILD\sound\worlds\spa\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\spa.lvl   spa
@call soundcleandir _BUILD\sound\worlds\tan\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\tan.lvl   tan
@call soundcleandir _BUILD\sound\worlds\tat\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\tat.lvl   tat
@call soundcleandir _BUILD\sound\worlds\uta\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\uta.lvl   uta
@call soundcleandir _BUILD\sound\worlds\yav\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\yav.lvl   yav
@call soundcleandir _BUILD\sound\worlds\hero\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\hero.lvl hero

@set BAT_PATH=%~p0
@set WORLD_NAME=%BAT_PATH:~-4,3%
@call soundcleandir _BUILD\sound\worlds\%WORLD_NAME%\%MUNGE_DIR% _LVL_%MUNGE_PLATFORM%\sound\%WORLD_NAME%.lvl %WORLD_NAME%

@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit