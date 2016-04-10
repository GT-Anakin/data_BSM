@echo off
if "%1" == "" goto ERROR

@REM WARNING: enabledelayedexpansion means ! is a special character,
@REM   which means it isn't available for use as the mungeapp recursive
@REM   wildcard character.  Use the alternate $ instead.
setlocal enabledelayedexpansion

set MUNGE_WORLD_FROM_SUBDIR=
for %%A in (%1) do (
	set IS_DIRECTORY=%%~aA
	if /i "!IS_DIRECTORY:~0,1!" EQU "d" goto FOUNDDIR
)
for %%A in (..\%1) do (
	set IS_DIRECTORY=%%~aA
	if /i "!IS_DIRECTORY:~0,1!" EQU "d" (
		set MUNGE_WORLD_FROM_SUBDIR=1
		goto FOUNDDIR
	)
)
goto ERROR
:FOUNDDIR
set MUNGE_WORLD_STARTING_DIR=%CD%
if "%MUNGE_WORLD_FROM_SUBDIR%"=="1" cd ..
if /i "%1"=="Common" (
	set MUNGED_WORLDS_COMMON=1
) else if "%MUNGED_WORLDS_COMMON%"=="" (
	call munge_world.bat Common %2
	set MUNGED_WORLDS_COMMON=1
)
cd %1

set MUNGE_ROOT_DIR=..\..\..
if not "%2"=="" set MUNGE_PLATFORM=%2
if %MUNGE_PLATFORM%x==x set MUNGE_PLATFORM=PC
if "%MUNGE_BIN_DIR%"=="" (
	set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	set "PATH=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin;%PATH%"
	echo MUNGE_BIN_DIR=!MUNGE_BIN_DIR!
)

set MUNGE_ARGS=-checkdate -continue -platform %MUNGE_PLATFORM%
set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\%1

set LOCAL_MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeLog.txt"
if "%MUNGE_LOG%"=="" (
	set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)
@rem echo ********************************************************************* >> %MUNGE_LOG%
@rem echo munge_world.bat %1 %MUNGE_PLATFORM% >> %MUNGE_LOG%
@rem echo MUNGE_BIN_DIR=%MUNGE_BIN_DIR% >> %MUNGE_LOG%
@rem echo ********************************************************************* >> %MUNGE_LOG%

REM ===== Handle files in Worlds\<worldname>\
set SOURCE_SUBDIR=Worlds\%1
set SOURCE_DIR=
if not %MUNGE_OVERRIDE_DIR%x==x (
	for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=!SOURCE_DIR! %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

@rem copy any premunged data for this world first
if not exist MUNGED mkdir MUNGED
if not exist %MUNGE_DIR% mkdir %MUNGE_DIR%
if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED\*.* %MUNGE_DIR% /D /Q /Y
if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR% xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR%\*.* %MUNGE_DIR% /D /Q /Y

odfmunge -inputfile $*.odf %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_modelmunge -inputfile $*.msh %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile $*.tga $*.pic %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
terrainmunge -inputfile $*.ter %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
worldmunge -inputfile $*.lyr %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
worldmunge -inputfile $*.wld %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%

for /R %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR% %%A in (*.wld) do configmunge -inputfile $%%~nA*.pth %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputfile %%~nA -outputdir %MUNGE_DIR% -ext path -chunkid path 2>>%MUNGE_LOG%

pathplanningmunge -inputfile $*.pln %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%

configmunge -inputfile effects\*.fx %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_effects.log
configmunge -inputfile $*.combo %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_combo.log

configmunge -inputfile $*.sky %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -chunkid sky 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_sky.log
@REM FIXME: the following configmunge also unnecessarily remunges effects\*.fx into envfx files...
configmunge -inputfile $*.fx %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -chunkid fx -ext envfx 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_fx.log
configmunge -inputfile $*.prp %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -hashstrings -chunkid prp -ext prop 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_prp.log
configmunge -inputfile $*.bnd %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -hashstrings -chunkid bnd -ext boundary 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_bnd.log

configmunge -inputfile *.snd *.mus *.tsr %MUNGE_ARGS% -sourcedir %SOURCE_DIR%\Sound -outputdir %MUNGE_DIR% -hashstrings 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_sound.log

configmunge -inputfile $*.lgt %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -ext light -chunkid lght 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_light.log

configmunge -inputfile $*.pvs %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -ext povs -chunkid PORT 2>>%MUNGE_LOG%
move /y configmunge.log configmunge_povs.log

@REM Old sound munge process
@REM if EXIST %SOURCE_DIR%\Sound\%1_amb.txt soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %SOURCE_DIR%\sound\%1_amb.txt -bankoutput .\%MUNGE_DIR%\%1_amb.str -checkid -checkdate -resample -stream 2>>%MUNGE_LOG%
@REM for %%A in (%SOURCE_DIR%\Sound\*.sfx) do soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %%A -bankoutput .\%MUNGE_DIR%\ -checkid -checkdate -resample -verbose 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt 2>>%MUNGE_LOG%
@REM for %%A in (%SOURCE_DIR%\Sound\*.stm) do soundflmunge -platform %MUNGE_PLATFORM% -banklistinput %%A -bankoutput .\%MUNGE_DIR%\ -stream -checkid -checkdate -resample -verbose 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt 2>>%MUNGE_LOG%

set COMMON_MUNGE_DIR=..\..\Common\MUNGED\%MUNGE_PLATFORM%
set WORLDS_COMMON_MUNGE_DIR=..\Common\MUNGED\%MUNGE_PLATFORM%
if /i NOT "%1"=="Common" (
	if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM% mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%
	if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\%1 mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\%1



	@REM Mike Z change below, if you hate it find him
	@for /D %%a in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\world*) do (

		levelpack -inputfile *.req -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files -onlyfiles -writefiles %MUNGE_DIR%\MZ.files %MUNGE_ARGS% -sourcedir %%a -inputdir %MUNGE_DIR% %WORLDS_COMMON_MUNGE_DIR% 2>>%MUNGE_LOG%
	
		levelpack -inputfile *.mrq -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files %MUNGE_DIR%\MZ.files %MUNGE_ARGS% -sourcedir %%a -inputdir %MUNGE_DIR% %WORLDS_COMMON_MUNGE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%

		@move /y levelpack.log levelpack_%%a_mode.log

		levelpack -inputfile *.req -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files %MUNGE_ARGS% -sourcedir %%a -outputdir %OUTPUT_DIR% -inputdir %MUNGE_DIR% %WORLDS_COMMON_MUNGE_DIR% 2>>%MUNGE_LOG%

		@move /y levelpack.log levelpack_%%a.log
	)

	@REM pack the sky variations
	levelpack -inputfile *.req -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR%\sky\REQ -inputdir %MUNGE_DIR% %WORLDS_COMMON_MUNGE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
	move /y levelpack.log levelpack_sky_variations.log

	levelpack -inputfile *.req -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files %MUNGE_ARGS% -sourcedir %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\sky -outputdir %OUTPUT_DIR% -inputdir %MUNGE_DIR% %WORLDS_COMMON_MUNGE_DIR% 2>>%MUNGE_LOG%
	@move /y levelpack.log levelpack_sky.log

)

REM If the munge log was created locally and has anything in it, view it
if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
set FILE_CONTENTS_TEST=
if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do @set FILE_CONTENTS_TEST=%%i
if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
cd %MUNGE_WORLD_STARTING_DIR%
endlocal

goto END
:ERROR
echo Usage: munge_world.bat <worldname> [platform]
echo        Must be called from Worlds\ or Worlds subdirectory with ..\
:END
