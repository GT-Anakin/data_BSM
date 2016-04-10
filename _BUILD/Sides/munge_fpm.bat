@if "%1" == "" goto ERROR

@REM WARNING: enabledelayedexpansion means ! is a special character,
@REM   which means it isn't available for use as the mungeapp recursive
@REM   wildcard character.  Use the alternate $ instead.
@setlocal enabledelayedexpansion

@set MUNGE_ROOT_DIR=..\..\..
@if not "%2"=="" set MUNGE_PLATFORM=%2
@if %MUNGE_PLATFORM%x==x set MUNGE_PLATFORM=PC
@if "%MUNGE_BIN_DIR%"=="" (
	@set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	@set "PATH=%CD%\..\..\..\..\ToolsFL\Bin;%PATH%"
	@echo MUNGE_BIN_DIR=!MUNGE_BIN_DIR!
)

@set MUNGE_ARGS=-checkdate -continue -platform %MUNGE_PLATFORM%
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
@set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\FPM\%1

@set LOCAL_MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeFpmLog.txt"
@if "%MUNGE_LOG%"=="" (
	@set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	@if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)

@REM ===== Handle files in Sides\<sidename>\req\FPM\
@set SOURCE_SUBDIR=Sides\%1\req\FPM
@set SOURCE_DIR=
@if not %MUNGE_OVERRIDE_DIR%x==x (
	@for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=!SOURCE_DIR! %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
@set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

@if not exist MUNGED mkdir MUNGED
@if not exist %MUNGE_DIR% mkdir %MUNGE_DIR%
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM% mkdir %MUNGE_ROOT_DIR\_LVL_%MUNGE_PLATFORM%
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\FPM mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\FPM
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\FPM\%1 mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\FPM\%1

set COMMON_MUNGE_DIR=..\..\Common\MUNGED\%MUNGE_PLATFORM%
levelpack -inputfile *.req -common %COMMON_MUNGE_DIR%\core.files %COMMON_MUNGE_DIR%\common.files %COMMON_MUNGE_DIR%\ingame.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%
@move /y levelpack.log levelpack_fpm.log

@REM If the munge log was created locally and has anything in it, view it
@if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
@set FILE_CONTENTS_TEST=
@if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do @set FILE_CONTENTS_TEST=%%i
@if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
@endlocal

@goto END
:ERROR
@echo Usage: ..\munge_fpm <sidename> [platform]
:END
