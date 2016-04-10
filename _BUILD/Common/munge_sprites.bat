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
@set OUTPUT_DIR=%MUNGE_ROOT_DIR%\_LVL_%MUNGE_PLATFORM%

@set LOCAL_MUNGE_LOG="%CD%\MungeSpritesLog.txt"
@if "%MUNGE_LOG%"=="" (
	@set MUNGE_LOG=%LOCAL_MUNGE_LOG%
	@if exist %LOCAL_MUNGE_LOG% ( del %LOCAL_MUNGE_LOG% )
)

@REM ===== Handle files in Common\
@set SOURCE_SUBDIR=Common
@set SOURCE_DIR=
@if not %MUNGE_OVERRIDE_DIR%x==x (
	@for %%a in (%MUNGE_OVERRIDE_DIR%) do @set SOURCE_DIR=!SOURCE_DIR! %MUNGE_ROOT_DIR%\%%a\%SOURCE_SUBDIR%
)
@set SOURCE_DIR=%SOURCE_DIR% %MUNGE_ROOT_DIR%\%SOURCE_SUBDIR%

@if not exist ..\Sides\ALL\MUNGED mkdir ..\Sides\ALL\MUNGED
@if not exist ..\Sides\ALL\%MUNGE_DIR% mkdir ..\Sides\ALL\%MUNGE_DIR%
@if not exist ..\Sides\CIS\%MUNGE_DIR% mkdir ..\Sides\CIS\%MUNGE_DIR%
@if not exist ..\Sides\IMP\%MUNGE_DIR% mkdir ..\Sides\IMP\%MUNGE_DIR%
@if not exist ..\Sides\REP\%MUNGE_DIR% mkdir ..\Sides\REP\%MUNGE_DIR%

%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\all_sprite_SoldierSnow\output\packed\*.tga 		%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\ALL\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\all_sprite_pilot\output\packed\*.tga 				%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\ALL\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\all_sprite_Soldier\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\ALL\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\all_sprite_SoldierJungle\output\packed\*.tga 		%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\ALL\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\cis_sprite_BDroid\output\packed\*.tga 				%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\CIS\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\cis_sprite_SBDroid\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\CIS\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\cis_sprite_droideka\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\CIS\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\imp_sprite_officer\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\IMP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\imp_sprite_TiePilot\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\IMP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\imp_sprite_StormTrooperSnow\output\packed\*.tga	%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\IMP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\imp_sprite_StormTrooper\output\packed\*.tga 		%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\IMP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\imp_sprite_ATATPilot\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\IMP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\imp_sprite_scout\output\packed\*.tga 				%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\IMP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG% 
%MUNGE_PLATFORM%_texturemunge -inputfile Sprites\rep_sprite_Trooper\output\packed\*.tga 			%MUNGE_ARGS% -sourcedir %SOURCE_DIR% -outputdir ..\Sides\REP\%MUNGE_DIR% -8bit -maps 1 2>>%MUNGE_LOG%

@REM If the munge log was created locally and has anything in it, view it
@if not %MUNGE_LOG%x==%LOCAL_MUNGE_LOG%x goto skip_mungelog
@set FILE_CONTENTS_TEST=
@if exist %MUNGE_LOG% for /f %%i in (%MUNGE_LOG:"=%) do @set FILE_CONTENTS_TEST=%%i
@if not "%FILE_CONTENTS_TEST%"=="" ( Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) )

:skip_mungelog
@endlocal
