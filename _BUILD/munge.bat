@echo off
setlocal enabledelayedexpansion

REM For a good explanation of delayed variable expansion type set /? at the command prompt
REM it is only explained in the command line help not the windows help

REM   -------------- SETUP THE SCRIPT VARIABLES -------------------------

set WORLD_PARAMETERS=
set SIDE_PARAMETERS=
set MUNGE_LOAD=0
set MUNGE_SIDE=0
set MUNGE_COMMON=0
set MUNGE_SHELL=0
set MUNGE_MOVIES=0
set MUNGE_LOCALIZE=0
set MUNGE_SOUND=0
set MUNGE_PLATFORM=PC
set MUNGE_LANGVERSION=ENGLISH
set MUNGE_LANGDIR=ENG
set MUNGE_ALL=1
set DISPLAY_MESSAGES=1
set XBOX_COPY=1

REM   -------------- PROCESS COMMAND LINE ARGS -------------------------

:whilescriptparameters
if "%1"=="" goto endscriptparameters

REM **NOTE**
REM the first goto statement inside of the compound conditional seems to help variable
REM expansion.  It is needed so it doesn't expand all of the variable inside the
REM conditional before it runs the statements.  Unfortunately we can use the delayed
REM expansion operator "!" on the special variables %0-%9

	if /i "%1"=="/WORLD" (
		REM this goto statement is needed read note above
		goto :whileworldparameters
		:whileworldparameters
		shift
		set parameter=%1
		if "!parameter!" == "" goto whilescriptparameters
		if "!parameter:~0,1!" == "/" goto whilescriptparameters
			set WORLD_PARAMETERS=!parameter! !WORLD_PARAMETERS!
			set MUNGE_ALL=0
		goto whileworldparameters
	) else if /i "%1"=="/SIDE" (
		REM this goto statement is needed read note above
		goto :whilesideparameters
		:whilesideparameters
		shift
		set parameter=%1
		if "!parameter!" == "" goto whilescriptparameters
		if "!parameter:~0,1!" == "/" goto whilescriptparameters
			set SIDE_PARAMETERS=!parameter! !SIDE_PARAMETERS!
			set MUNGE_ALL=0
		goto whilesideparameters
	) else if /i "%1"=="/LOAD" (
		set MUNGE_LOAD=1
		set MUNGE_ALL=0
	) else if /i "%1"=="/NOMESSAGES" (
		set DISPLAY_MESSAGES=0
	) else if /i "%1"=="/SOUND" (
		set MUNGE_SOUND=1
		set MUNGE_ALL=0
		set MUNGESTREAMS=1
		REM this goto statement is needed read note above
		goto :whilesoundparameters
		:whilesoundparameters
		shift
		set parameter=%1
		if "!parameter!" == "" (
			goto whilescriptparameters
		) else if /i "!parameter!"=="NOSTREAMS" (
			set MUNGESTREAMS=0
		) else if "!parameter:~0,1!" == "/" (
			goto whilescriptparameters
		) else (
			set SOUNDLVL=!parameter! !SOUNDLVL!
			set MUNGE_ALL=0
		)
		goto whilesoundparameters
	) else if /i "%1"=="/COMMON" (
		set MUNGE_COMMON=1
		set MUNGE_ALL=0
	) else if /i "%1"=="/SHELL" (
		set MUNGE_SHELL=1
		set MUNGE_ALL=0
	) else if /i "%1"=="/MOVIES" (
		set MUNGE_MOVIES=1
		set MUNGE_ALL=0
	) else if /i "%1"=="/LOCALIZE" (
		set MUNGE_LOCALIZE=1
		set MUNGE_ALL=0
	) else if /i "%1"=="/NOXBOXCOPY" (
		set XBOX_COPY=0
	) else if /i "%1"=="/PLATFORM" (

		REM this goto statement is needed read note above
		goto :whileplatformparameters
		:whileplatformparameters
		shift
		set parameter=%1

		if /i "!parameter!"=="PC" (
			set MUNGE_PLATFORM=PC
		) else if /i "!parameter!"=="PS2" (
			set MUNGE_PLATFORM=PS2
		) else if /i "!parameter!"=="XBOX" (
			set MUNGE_PLATFORM=XBOX
		) else (
			echo "
			echo "Error (Invalid Platform Parameter): %1
			echo "
			goto PRINT_USAGE_AND_EXIT
		)

		shift
		goto whilescriptparameters

	) else if /i "%1"=="/LANGUAGE" (

		REM this goto statement is needed read note above
		goto :whilelanguageparameters
		:whilelanguageparameters
		shift
		set parameter=%1

		if /i "!parameter!"=="ENGLISH" (
			set MUNGE_PLATFORM=ENGLISH
			set MUNGE_LANGDIR=ENG
		) else if /i "!parameter!"=="UK" (
rem			set MUNGE_PLATFORM=UK
			set MUNGE_LANGDIR=UK_
			set MUNGE_LANGVERSION=UK_
		) else if /i "!parameter!"=="FRENCH" (
rem			set MUNGE_PLATFORM=FRENCH
			set MUNGE_LANGDIR=FRENCH
			set MUNGE_LANGVERSION=FRENCH
		) else if /i "!parameter!"=="GERMAN" (
rem			set MUNGE_PLATFORM=GERMAN
			set MUNGE_LANGDIR=GERMAN
			set MUNGE_LANGVERSION=GERMAN
		) else if /i "!parameter!"=="JAPANESE" (
rem			set MUNGE_PLATFORM=JAPANESE
			set MUNGE_LANGDIR=JAPANESE
			set MUNGE_LANGVERSION=JAPANESE
		) else if /i "!parameter!"=="ITALIAN" (
rem			set MUNGE_PLATFORM=ITALIAN
			set MUNGE_LANGDIR=ITALIAN
			set MUNGE_LANGVERSION=ITALIAN
		) else if /i "!parameter!"=="SPANISH" (
rem			set MUNGE_PLATFORM=SPANISH
			set MUNGE_LANGDIR=SPANISH
			set MUNGE_LANGVERSION=SPANISH
		) else (
			echo "
			echo "Error (Invalid Language Parameter): %1
			echo "
			goto PRINT_USAGE_AND_EXIT
		)

		shift
		goto whilescriptparameters

	) else (
		echo "
		echo "Error (Invalid Parameter): %1
		echo "
		goto PRINT_USAGE_AND_EXIT
	)

shift
goto whilescriptparameters
:endscriptparameters

REM  -----------  POST PROCESS SOME VARIABLES  ---------------

IF /I "%MUNGE_LANGVERSION%"=="ENGLISH" (
	set MUNGE_OVERRIDE_DIR=
) else (
	set MUNGE_OVERRIDE_DIR=%MUNGE_PLATFORM%_%MUNGE_LANGDIR%
)

if /i "%WORLD_PARAMETERS%"=="" ( 
	set WORLD_PARAMETERS=NOTHING 
) else (
	REM see if NOTHING then override the variable
	for %%A in (%WORLD_PARAMETERS%) do (
		if /i "%%A"=="NOTHING" (
			set WORLD_PARAMETERS=NOTHING
		)
	)
)

if /i "%SIDE_PARAMETERS%"=="" (	
	set SIDE_PARAMETERS=NOTHING 
) else (
	REM see if NOTHING then override the variable
	for %%A in (%SIDE_PARAMETERS%) do (
		if /i "%%A"=="NOTHING" (
			set SIDE_PARAMETERS=NOTHING
		)
	)
)

if %MUNGE_ALL% EQU 1 (
	set WORLD_PARAMETERS=EVERYTHING
	set SIDE_PARAMETERS=EVERYTHING
	set MUNGE_LOAD=1
	set MUNGE_SIDE=1
	set MUNGE_COMMON=1
	set MUNGE_SHELL=1
	set MUNGE_MOVIES=1
	set MUNGE_LOCALIZE=1
	set MUNGE_SOUND=1
)


REM   --------------  SETUP LOGGING  -----------------------

set MUNGE_LOG="%CD%\%MUNGE_PLATFORM%_MungeLog.txt"
if exist %MUNGE_LOG% ( del %MUNGE_LOG% )

REM echo ********************************************************************* >> %MUNGE_LOG%
REM echo munge.bat %MUNGE_PLATFORM% %MUNGE_LANGVERSION% >> %MUNGE_LOG%
REM echo MUNGE_BIN_DIR=%MUNGE_BIN_DIR% >> %MUNGE_LOG%
REM echo MUNGE_OVERRIDE_DIR=_SOURCE_%MUNGE_LANGVERSION% >> %MUNGE_LOG%
REM echo MUNGE_LANGDIR=_SOURCE_%MUNGE_LANGDIR% >> %MUNGE_LOG%
REM echo ********************************************************************* >> %MUNGE_LOG%

if "%MUNGE_BIN_DIR%"=="" (
	set MUNGE_BIN_DIR=%CD%\..\..\ToolsFL\Bin
	REM echo MUNGE_BIN_DIR=%MUNGE_BIN_DIR%
	set "PATH=%CD%\..\..\ToolsFL\Bin;%PATH%"
)

REM   --------------  MUNGE COMMON  -----------------------

if %MUNGE_COMMON% EQU 1 (
	echo Common\munge %MUNGE_PLATFORM%
	cd Common
	call munge.bat %MUNGE_PLATFORM%
	cd ..
)

REM   --------------  MUNGE SHELL  -----------------------
if %MUNGE_SHELL% EQU 1 (
	echo Shell\munge %MUNGE_PLATFORM%
	cd Shell
	call munge.bat %MUNGE_PLATFORM%
	cd ..
)

REM   --------------  MUNGE LOAD  -----------------------
if %MUNGE_LOAD% EQU 1 (
	echo Load\munge %MUNGE_PLATFORM%
	cd Load
	call munge.bat %MUNGE_PLATFORM%
	cd ..
)

REM   --------------  MUNGE SIDES  -----------------------
if /i "%SIDE_PARAMETERS%" NEQ "NOTHING" (
	echo Sides\munge %MUNGE_PLATFORM%
	cd Sides
	call munge.bat %MUNGE_PLATFORM% %SIDE_PARAMETERS%
	cd ..
)

REM   --------------  MUNGE WORLDS  -----------------------
if /i "%WORLD_PARAMETERS%" NEQ "NOTHING" (
	echo Worlds\munge %MUNGE_PLATFORM%
	cd Worlds
	call munge.bat %MUNGE_PLATFORM% %WORLD_PARAMETERS%
	cd ..
)

REM   --------------  MUNGE SOUNDS  -----------------------
if %MUNGE_SOUND% EQU 1 (
	echo Sound\munge %MUNGE_PLATFORM%
	cd Sound
	call munge.bat %MUNGE_PLATFORM%
	cd ..
)

if /I "%MUNGE_PLATFORM%"=="XBOX" (
	if %XBOX_COPY% EQU 1 (
		echo Copying files to XBOX...
		echo on
		xbcp -d -y -t -r -f ..\_lvl_xbox\*.lvl xe:\Battlefront2\Data\_lvl_xbox\ 2>>%MUNGE_LOG%
		xbcp -d -y -t -r -f ..\_lvl_xbox\*.mvs xe:\Battlefront2\Data\_lvl_xbox\ 2>>%MUNGE_LOG%
		xbcp -d -y -t -r -f ..\sound\global\dsstdfx.bin xe:\Battlefront2\Data\ 2>>%MUNGE_LOG%
		@echo off
	)
)

REM If the munge log has anything in it, view it
if %DISPLAY_MESSAGES% EQU 1 (
	for /f %%i in (%MUNGE_LOG%) do (if %%~zi GTR 0 ( start Notepad.exe %MUNGE_LOG% ) else ( if exist %MUNGE_LOG% (del %MUNGE_LOG%) ) )
)

REM pause	


goto END


REM   --------------  PRINT SCRIPT USAGE AND EXIT  -----------------------
:PRINT_USAGE_AND_EXIT
echo "Usage: munge [/PLATFORM [PC|PS2|XBOX]]
echo "             [/LANGUAGE [ENGLISH|UK|FRENCH|GERMAN|JAPANESE|ITALIAN|SPANISH]]
echo "             [/WORLD [EVERYTHING|NOTHING|<world1> <world2> ...]] 
echo "             [/SIDE [EVERYTHING|NOTHING|<side1> <side2> ...]] 
echo "             [/LOAD] [/SOUND] [/COMMON] [/SHELL] [/MOVIES] [/LOCALIZE]
echo "
echo "Options:
echo "  If no parameters are specified then everything is munged.
echo "  /PLATFORM The platform to munge the data for (default PC)
echo "  /LANGUAGE The lanuage used for building (default ENGLISH)
echo "  /WORLD    Selectively munges world data.  If "EVERYTHING" or "NOTHING" is 
echo "            specified all world data is munged or not respectively
echo "  /SIDE     Selectively munges side data.  If "EVERYTHING" or "NOTHING" is 
echo "            specified all side data is munged or not respectively
echo "  /LOAD     If specified munges loading screen data
echo "  /SOUND    If specified munges sound data
echo "  /COMMON   If specified munges common data
echo "  /SHELL    If specified munges shell data
echo "  /MOVIES   If specified munges movie data
echo "  /LOCALIZE If specified munges localization data
echo "  /NOXBOXCOPY If specified skips the data copy to the xbox

REM   --------------  EXIT SCRIPT -----------------------
:END

endlocal