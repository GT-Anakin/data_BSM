@REM WARNING: enabledelayedexpansion means ! is a special character,
@REM   which means it isn't available for use as the mungeapp recursive
@REM   wildcard character.  Use the alternate $ instead.
@setlocal enabledelayedexpansion

@set MUNGE_ROOT_DIR=..\..
@if not "%1"=="" set MUNGE_PLATFORM=%1
@if %MUNGE_PLATFORM%x==x set MUNGE_PLATFORM=PC
@if %MUNGE_LANGDIR%x==x set MUNGE_LANGDIR=ENG
@if "%MUNGE_BIN_DIR%"=="" (
	@set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	@set "PATH=%CD%\..\..\..\ToolsFL\Bin;%PATH%"
	@echo MUNGE_BIN_DIR=!MUNGE_BIN_DIR!
)

@set MUNGE_ARGS=-checkdate -continue -platform %MUNGE_PLATFORM%
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
@set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%

@set LOCAL_MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeLog.txt"
@if "%MUNGE_LOG%"=="" (
	@set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	@if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)

@if not exist MUNGED mkdir MUNGED
@if not exist %MUNGE_DIR% mkdir %MUNGE_DIR%
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM% mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\Shell mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\Shell
@if not exist %OUTPUT_DIR% mkdir %OUTPUT_DIR%
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\Movies mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\Movies

@REM ===== Handle files in Shell\Movies\
@set SOURCE_SUBDIR=Shell\movies
@set SOURCE_DIR=
@if not %MUNGE_OVERRIDE_DIR%x==x (
	@for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=!SOURCE_DIR! %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
@set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

configmunge -inputfile *.mcfg %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -hashstrings 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_mcfg.log
for %%A in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_PLATFORM%\*.mlst) do moviemunge -input %%A -output %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\Movies\%%~nA.mvs -checkdate 2>>%MUNGE_LOG%

@REM ===== Handle files in Shell\Sound\
@set SOURCE_SUBDIR=Shell\Sound
@set SOURCE_DIR=
@if not %MUNGE_OVERRIDE_DIR%x==x (
	@for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
@set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

@REM Old sound munge process
@REM configmunge -inputfile *.snd *.mus %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -hashstrings 2>>%MUNGE_LOG%
@REM move /y configmunge.log configmunge_sound.log
@REM for %%A in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\*.sfx) do soundflmunge -platform win -banklistinput %%A -bankoutput %MUNGE_DIR% -checkid -checkdate -resample -verbose 2>>%MUNGE_LOG% 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt
@REM for %%A in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\*.stm) do soundflmunge -platform win -banklistinput %%A -bankoutput %MUNGE_DIR% -stream -checkid -checkdate -resample -verbose 2>>%MUNGE_LOG% 1>>%MUNGE_ROOT_DIR%\_BUILD\SoundBankLog.txt

@REM ===== Handle files in Shell\
@set SOURCE_SUBDIR=Shell
@set SOURCE_DIR=
@if not %MUNGE_OVERRIDE_DIR%x==x (
	@for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
@set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

configmunge -inputfile effects\*.fx %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
@move /y configmunge.log configmunge_fx.log
scriptmunge -inputfile scripts\*.lua %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%

%MUNGE_PLATFORM%_texturemunge -inputfile $*.tga %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
fontmunge -inputfile fonts\*.fff %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_modelmunge -inputfile $*.msh %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
if /I "%MUNGE_PLATFORM%"=="PS2" binmunge -inputfile ps2bin\*.ps2bin %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%

@REM ===== Build LVL files

levelpack -inputfile shell.req -common ..\Common\MUNGED\%MUNGE_PLATFORM%\core.files ..\Common\MUNGED\%MUNGE_PLATFORM%\common.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%

if /I "%MUNGE_PLATFORM%"=="PS2" levelpack -inputfile shellps2.req -common ..\Common\MUNGED\%MUNGE_PLATFORM%\core.files ..\Common\MUNGED\%MUNGE_PLATFORM%\common.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%

@REM If the munge log was created locally and has anything in it, view it
@if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
@set FILE_CONTENTS_TEST=
@if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do @set FILE_CONTENTS_TEST=%%i
@if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
@endlocal
