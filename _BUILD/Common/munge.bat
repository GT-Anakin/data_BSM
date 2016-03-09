@echo off
REM WARNING: enabledelayedexpansion means ! is a special character,
REM   which means it isn't available for use as the mungeapp recursive
REM   wildcard character.  Use the alternate $ instead.
setlocal enabledelayedexpansion

set MUNGE_ROOT_DIR=..\..
if not "%1"=="" set MUNGE_PLATFORM=%1
if %MUNGE_PLATFORM%x==x set MUNGE_PLATFORM=PC
if %MUNGE_LANGDIR%x==x set MUNGE_LANGDIR=ENG
REM if "%MUNGE_BIN_DIR%"=="" (
	set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	set PATH=%CD%\..\..\..\ToolsFL\Bin;%PATH%
REM	echo MUNGE_BIN_DIR=!MUNGE_BIN_DIR!
REM )

set MUNGE_ARGS=-checkdate -continue -platform %MUNGE_PLATFORM%
set SHADER_MUNGE_ARGS=-continue -platform %MUNGE_PLATFORM%
set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%

set LOCAL_MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeLog.txt"
if "%MUNGE_LOG%"=="" (
	set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)


REM ===== Handle files in Common\
set SOURCE_SUBDIR=Common
set SOURCE_DIR=
if not %MUNGE_OVERRIDE_DIR%x==x (
	for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=!SOURCE_DIR! %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

REM copy common binary format data from source root \Common
if not exist MUNGED mkdir MUNGED
if not exist %MUNGE_DIR% mkdir %MUNGE_DIR%
echo Copying premunged files from MUNGED...
if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED\*.* %MUNGE_DIR% /D /Q /Y
echo Copying premunged files from %MUNGE_DIR%...
if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR% xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR%\*.* %MUNGE_DIR% /D /Q /Y

REM @echo on

odfmunge -inputfile $*.odf %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
configmunge -inputfile $*.fx %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_fx.log
configmunge -inputfile $*.combo %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_combo.log
scriptmunge -inputfile $*.lua %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
configmunge -inputfile $*.mcfg %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -hashstrings 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_mcfg.log
configmunge -inputfile $*.sanm %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_sanm.log
configmunge -inputfile $*.hud %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_hud.log

fontmunge -inputfile $*.fff %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile $*.tga $*.pic %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_modelmunge -inputfile $Effects\*.msh $MSHs\*.msh %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
if /I not "%MUNGE_PLATFORM%"=="PS2" %MUNGE_PLATFORM%_shadermunge -inputfile shaders\*.xml shaders\*.vsfrag %SHADER_MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -I %SOURCE_DIR%\Shaders\%MUNGE_PLATFORM%\ 2>>%MUNGE_LOG%

@rem convert to lower case
@if %MUNGE_PLATFORM%==PC   set MUNGE_PLATFORM=pc
@if %MUNGE_PLATFORM%==XBOX set MUNGE_PLATFORM=xbox
@if %MUNGE_PLATFORM%==PS2  set MUNGE_PLATFORM=ps2

@REM Munge global.snd, global.sfx
@if %SOUNDLOG%x==1x ( @set SOUNDOPT=-verbose & @set SOUNDLOGOUT=%LOGDIR%\SoundBankLog.txt ) else ( @set SOUNDOPT= & @set SOUNDLOGOUT=NUL )
configmunge -inputfile *.snd *.mus %MUNGE_ARGS% -sourcedir %SOURCE_DIR%\Sound -outputdir %MUNGE_DIR%\ -hashstrings 2>>%MUNGE_LOG%
for %%A in (%MUNGE_ROOT_DIR%\Common\Sound\*.sfx) do soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %%A -bankoutput %MUNGE_DIR%\ -checkdate -checkid -resample %SOUNDOPT% 2>>%MUNGE_LOG% 1>>%SOUNDLOGOUT%
for %%A in (%MUNGE_ROOT_DIR%\Common\Sound\*.stm) do soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %%A -bankoutput %MUNGE_DIR%\ -stream -checkdate -checkid -resample %SOUNDOPT% 2>>%MUNGE_LOG% 1>>%SOUNDLOGOUT%

@rem convert to upper case
@if %MUNGE_PLATFORM%==pc   set MUNGE_PLATFORM=PC
@if %MUNGE_PLATFORM%==xbox set MUNGE_PLATFORM=XBOX
@if %MUNGE_PLATFORM%==ps2  set MUNGE_PLATFORM=PS2

REM @echo off

call munge_sprites.bat %MUNGE_PLATFORM%

REM ===== Merge and munge localization files

set InputDir1=%MUNGE_ROOT_DIR%\Common\Localize\%MUNGE_PLATFORM%
set InputDir2=%MUNGE_ROOT_DIR%\Common\Localize
set MungeTemp=MungeTemp
call MergeLocalize.bat %InputDir1% %InputDir2% %MungeTemp%
REM Perform Munging
localizemunge -inputfile *.cfg %MUNGE_ARGS% -sourcedir %MungeTemp% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
REM Delete Merge Temp Dir
del /q %MungeTemp%\*.*
rmdir %MungeTemp%

REM ===== Build LVL files

if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM% mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%
if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\COMMON mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\COMMON
rem if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\COMMON\%MUNGE_LANGDIR% mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\COMMON\%MUNGE_LANGDIR%

@echo on
levelpack -inputfile core.req -writefiles %MUNGE_DIR%\core.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_core.log
levelpack -inputfile common.req -writefiles %MUNGE_DIR%\common.files -common %MUNGE_DIR%\core.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_common.log
levelpack -inputfile ingame.req -writefiles %MUNGE_DIR%\ingame.files -common %MUNGE_DIR%\core.files %MUNGE_DIR%\common.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_ingame.log
levelpack -inputfile inshell.req -writefiles %MUNGE_DIR%\inshell.files -common %MUNGE_DIR%\core.files %MUNGE_DIR%\common.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_inshell.log
levelpack -inputfile MISSION\*.req -common %MUNGE_DIR%\core.files %MUNGE_DIR%\common.files %MUNGE_DIR%\ingame.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_missions.log
levelpack -inputfile MISSION.req %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_mission.log
@echo off

call munge_fpm.bat %MUNGE_PLATFORM%

@REM If the munge log was created locally and has anything in it, view it
@if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
@set FILE_CONTENTS_TEST=
@if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do @set FILE_CONTENTS_TEST=%%i
@if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
endlocal
