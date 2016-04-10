@echo off
if "%1" == "" goto ERROR

@REM WARNING: enabledelayedexpansion means ! is a special character,
@REM   which means it isn't available for use as the mungeapp recursive
@REM   wildcard character.  Use the alternate $ instead.
setlocal enabledelayedexpansion

set MUNGE_SIDE_FROM_SUBDIR=
for %%A in (%1) do (
	set IS_DIRECTORY=%%~aA
	if /i "!IS_DIRECTORY:~0,1!" EQU "d" goto FOUNDDIR
)
for %%A in (..\%1) do (
	set IS_DIRECTORY=%%~aA
	if /i "!IS_DIRECTORY:~0,1!" EQU "d" (
		set MUNGE_SIDE_FROM_SUBDIR=1
		goto FOUNDDIR
	)
)
goto ERROR
:FOUNDDIR
set MUNGE_SIDE_STARTING_DIR=%CD%
if "%MUNGE_SIDE_FROM_SUBDIR%"=="1" cd ..
if /i "%1"=="Common" (
	set MUNGED_SIDES_COMMON=1
) else if "%MUNGED_SIDES_COMMON%"=="" (
	call munge_side.bat Common %2
	set MUNGED_SIDES_COMMON=1
)
cd %1

set MUNGE_ROOT_DIR=..\..\..
if not "%2"=="" set MUNGE_PLATFORM=%2
if %MUNGE_PLATFORM%x==x set MUNGE_PLATFORM=PC
if "%MUNGE_BIN_DIR%"=="" (
	set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	set "PATH=%CD%\..\..\..\..\ToolsFL\Bin;%PATH%"
	echo MUNGE_BIN_DIR=!MUNGE_BIN_DIR!
)

set MUNGE_ARGS=-checkdate -continue -platform %MUNGE_PLATFORM%
set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\SIDE

set LOCAL_MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeLog.txt"
if "%MUNGE_LOG%"=="" (
	set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)
@rem echo ********************************************************************* >> %MUNGE_LOG%
@rem echo munge_side.bat %1 %MUNGE_PLATFORM% >> %MUNGE_LOG%
@rem echo MUNGE_BIN_DIR=%MUNGE_BIN_DIR% >> %MUNGE_LOG%
@rem echo ********************************************************************* >> %MUNGE_LOG%

REM ===== Handle files in Sides\<sidename>\
set SOURCE_SUBDIR=Sides\%1
set SOURCE_DIR=
if not %MUNGE_OVERRIDE_DIR%x==x (
	for %%a in (%MUNGE_OVERRIDE_DIR%) do set SOURCE_DIR=!SOURCE_DIR! %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

REM copy common binary format data from source root
if not exist MUNGED mkdir MUNGED
if not exist %MUNGE_DIR% mkdir %MUNGE_DIR%
if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED\*.* %MUNGE_DIR% /D /Q /Y
if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR% xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR%\*.* %MUNGE_DIR% /D /Q /Y

odfmunge -inputfile $*.odf %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
configmunge -inputfile effects\*.fx %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_fx.log
configmunge -inputfile $*.combo %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_combo.log
configmunge -inputfile $*.hud %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_hud.log
%MUNGE_PLATFORM%_modelmunge -inputfile $*.msh %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile $*.tga $*.pic %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%

configmunge -inputfile *.snd *.mus %MUNGE_ARGS% -sourcedir %SOURCE_DIR%\Sound -outputdir %MUNGE_DIR% -hashstrings 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_sound.log

@REM Old sound munge process
@REM if EXIST %SOURCE_DIR%\Sound\%1_music.txt soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %SOURCE_DIR%\sound\%1_music.txt -bankoutput .\%MUNGE_DIR%\%1_music.str -checkid -checkdate -resample -stream  2>>%MUNGE_LOG%
@REM if EXIST %SOURCE_DIR%\Sound\%1_voiceovers.txt soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %SOURCE_DIR%\sound\%1_voiceovers.txt -bankoutput .\%MUNGE_DIR%\%1_voiceovers.str -checkid -checkdate -resample -stream  2>>%MUNGE_LOG%
@REM if EXIST %SOURCE_DIR%\Sound\%1_effects.txt soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %SOURCE_DIR%\sound\%1_effects.txt -bankoutput .\%MUNGE_DIR%\%1_effects.bnk -checkid -checkdate -resample -verbose 2>>%MUNGE_LOG% 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt
@REM for %%A in (%SOURCE_DIR%\Sound\*.sfx) do soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %%A -bankoutput .\%MUNGE_DIR%\ -checkid -checkdate -resample -verbose 2>>%MUNGE_LOG% 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt
@REM for %%A in (%SOURCE_DIR%\Sound\*.stm) do soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %%A -bankoutput .\%MUNGE_DIR%\ -stream -checkid -checkdate -resample -verbose 2>>%MUNGE_LOG% 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt

set COMMON_MUNGE_DIR=..\..\Common\MUNGED\%MUNGE_PLATFORM%
set SIDES_COMMON_MUNGE_DIR=..\Common\MUNGED\%MUNGE_PLATFORM%
levelpack -inputfile REQ\*.req -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% %SIDES_COMMON_MUNGE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
move /y levelpack.log levelpack_units.log

if /i NOT "%1"=="Common" (
	if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM% mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%
	if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\SIDE mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\SIDE

	levelpack -inputfile *.req %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% %SIDES_COMMON_MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
	move /y levelpack.log levelpack_side.log

	call ..\munge_fpm.bat %1
)

REM If the munge log was created locally and has anything in it, view it
if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
set FILE_CONTENTS_TEST=
if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do set FILE_CONTENTS_TEST=%%i
if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
cd %MUNGE_SIDE_STARTING_DIR%
endlocal

goto END
:ERROR
@echo Usage: munge_side <sidename> [platform]
@echo        Must be called from Sides\ or Sides\subdirectory with ..
:END
