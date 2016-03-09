@set PLATFORM=%2
@echo Munging %1 for %PLATFORM%
@if %3x==rebuildx @set SOUNDNODATECHECK=1
@if %PLATFORM%x==x @set PLATFORM=PC
cd _BUILD\sound
@if %3x==onlyworldx goto onlyworld
set SOUNDLVL=global
call munge %PLATFORM%
set SOUNDLVL=shell
call munge %PLATFORM%
set SOUNDLVL=cw
call munge %PLATFORM%
set SOUNDLVL=gcw
call munge %PLATFORM%
:onlyworld
set SOUNDLVL=%1
call munge %PLATFORM%
cd ..\..
set SOUNDLVL=
@if %3x==rebuildx @set SOUNDNODATECHECK=

@if /i not %PLATFORM%==xbox goto exit 
xbcp -d -y -t -r -f _lvl_xbox\*.lvl xe:\Battlefront2\Data\_lvl_xbox\
xbcp -d -y -t -r -f _lvl_xbox\*.mvs xe:\Battlefront2\Data\_lvl_xbox\
xbcp -d -y -t _build_xbox\dsstdfx.bin xe:\Battlefront2\Data\
:exit