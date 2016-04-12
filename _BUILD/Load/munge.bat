@REM WARNING: enabledelayedexpansion means ! is a special character,
@REM   which means it isn't available for use as the mungeapp recursive
@REM   wildcard character.  Use the alternate $ instead.
@setlocal enabledelayedexpansion

@set MUNGE_ROOT_DIR=..\..
@if not "%1"=="" set MUNGE_PLATFORM=%1
@if %MUNGE_PLATFORM%x==x set MUNGE_PLATFORM=PC
@if "%MUNGE_BIN_DIR%"=="" (
	@set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	@set "PATH=%CD%\..\..\..\ToolsFL\Bin;%PATH%"
	@echo MUNGE_BIN_DIR=!MUNGE_BIN_DIR!
)

@set MUNGE_ARGS=-checkdate -continue -platform %MUNGE_PLATFORM%
@set MUNGE_DIR=MUNGED\%MUNGE_PLATFORM%
@set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\LOAD

@set LOCAL_MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeLog.txt"
@if "%MUNGE_LOG%"=="" (
	@set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	@if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)

@REM ===== Handle files in Load\
@set SOURCE_SUBDIR=Load
@set SOURCE_DIR=
@if not %MUNGE_OVERRIDE_DIR%x==x (
	@for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%%a
)
@set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

@REM copy premunged data from source\munged
@if not exist MUNGED mkdir MUNGED
@if not exist %MUNGE_DIR% mkdir %MUNGE_DIR%
@REM if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\MUNGED\*.* %MUNGE_DIR% /D /Q /Y
@REM if exist %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR% xcopy %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\%MUNGE_DIR%\*.* %MUNGE_DIR% /D /Q /Y

configmunge -inputfile $*.cfg %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% -chunkid load -ext config 2>>%MUNGE_LOG%

%MUNGE_PLATFORM%_texturemunge -inputfile $*.tga $*.pic %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_modelmunge -inputfile $*.msh %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%


REM === Create a temp folder to hold the req's
@set TEMP_DIR=%SOURCE_DIR%\__TEMP__
@if not exist %TEMP_DIR% mkdir %TEMP_DIR%

REM ========== for each backdrop create a level file
@for /D %%b in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\*) do (
	@for %%a in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\*.tga %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\*.pic
 %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\%MUNGE_PLATFORM%\*.tga %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\%MUNGE_PLATFORM%\*.pic) do (
		@echo ucft{ REQN { "texture" "%%~na" } } > %TEMP_DIR%\%%~na.req
	)
)

levelpack -inputfile $*.req -common ..\Common\MUNGED\%MUNGE_PLATFORM%\core.files %MUNGE_ARGS% -sourcedir %TEMP_DIR% -inputdir %MUNGE_DIR% -outputdir %MUNGE_DIR% 2>>%MUNGE_LOG%


@del /q %TEMP_DIR%\*.*

REM ========== create an req for each directory
@for /D %%b in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\* ) do (
	@echo ucft{ REQN { "lvl" > %TEMP_DIR%\%%~nb.req
	@for %%a in (%MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\*.tga %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\*.pic
 %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\%MUNGE_PLATFORM%\*.tga %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%\backdrops\%%b\%MUNGE_PLATFORM%\*.pic) do (
		@echo "%%~na" >> %TEMP_DIR%\%%~nb.req
	)
	@echo } } >> %TEMP_DIR%\%%~nb.req
)


@REM ===== Build LVL files

@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM% mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%
@if not exist %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\LOAD mkdir %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\LOAD

levelpack -inputfile $*.req -common ..\Common\MUNGED\%MUNGE_PLATFORM%\core.files %MUNGE_ARGS% -sourcedir %SOURCE_DIR% -inputdir %MUNGE_DIR% -outputdir %OUTPUT_DIR% 2>>%MUNGE_LOG%

@del /q %TEMP_DIR%\*.*
@rmdir %TEMP_DIR%

@set BAT_PATH=%~p0
@set WORLD_NAME=%BAT_PATH:~-16,3%
@for /F "tokens=2*" %%A in ('reg query "HKEY_CURRENT_USER\Software\Pandemic Studios\Visual Munge\General" /v ModToolsBattlefrontDir') do @set BF2_PATH=%%B
xcopy %MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%\LOAD\* "%BF2_PATH%\addon\%WORLD_NAME%\data\_LVL_PC\LOAD\" /Y

@REM If the munge log was created locally and has anything in it, view it
@if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
@set FILE_CONTENTS_TEST=
@if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do @set FILE_CONTENTS_TEST=%%i
@if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
@endlocal
