@echo off
setlocal enabledelayedexpansion

REM For a good explanation of delayed variable expansion type set /? at the command prompt
REM it is only explained in the command line help not the windows help

REM   -------------- SETUP THE SCRIPT VARIABLES -------------------------

set WORLD_PARAMETERS=
set SIDE_PARAMETERS=
set CLEAN_LOAD=0
set CLEAN_SIDE=0
set CLEAN_COMMON=0
set CLEAN_SHELL=0
set CLEAN_MOVIES=0
set CLEAN_LOCALIZE=0
set CLEAN_SOUND=0
set CLEAN_PLATFORM=PC
set CLEAN_LANGVERSION=ENGLISH
set CLEAN_LANGDIR=ENG
set CLEAN_ALL=1

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
			set CLEAN_ALL=0
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
			set CLEAN_ALL=0
		goto whilesideparameters
	) else if /i "%1"=="/LOAD" (
		set CLEAN_LOAD=1
		set CLEAN_ALL=0
	) else if /i "%1"=="/SOUND" (
		set CLEAN_SOUND=1
		set CLEAN_ALL=0
		REM this goto statement is needed read note above
		goto :whilesoundparameters
		:whilesoundparameters
		shift
		set parameter=%1
		if "!parameter!" == "" goto whilescriptparameters
		if "!parameter:~0,1!" == "/" goto whilescriptparameters
			set SOUNDLVL=!parameter! !SOUNDLVL!
			set CLEAN_ALL=0
		goto whilesoundparameters
	) else if /i "%1"=="/COMMON" (
		set CLEAN_COMMON=1
		set CLEAN_ALL=0
	) else if /i "%1"=="/SHELL" (
		set CLEAN_SHELL=1
		set CLEAN_ALL=0
	) else if /i "%1"=="/MOVIES" (
		set CLEAN_MOVIES=1
		set CLEAN_ALL=0
	) else if /i "%1"=="/LOCALIZE" (
		set CLEAN_LOCALIZE=1
		set CLEAN_ALL=0
	) else if /i "%1"=="/PLATFORM" (

		REM this goto statement is needed read note above
		goto :whileplatformparameters
		:whileplatformparameters
		shift
		set parameter=%1

		if /i "!parameter!"=="PC" (
			set CLEAN_PLATFORM=PC
		) else if /i "!parameter!"=="PS2" (
			set CLEAN_PLATFORM=PS2
		) else if /i "!parameter!"=="XBOX" (
			set CLEAN_PLATFORM=XBOX
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
			set CLEAN_PLATFORM=ENGLISH
			set CLEAN_LANGDIR=ENG
		) else if /i "!parameter!"=="UK" (
			set CLEAN_PLATFORM=UK
			set CLEAN_LANGDIR=UK_
		) else if /i "!parameter!"=="FRENCH" (
			set CLEAN_PLATFORM=FRENCH
			set CLEAN_LANGDIR=FRE
		) else if /i "!parameter!"=="GERMAN" (
			set CLEAN_PLATFORM=GERMAN
			set CLEAN_LANGDIR=GER
		) else if /i "!parameter!"=="JAPANESE" (
			set CLEAN_PLATFORM=JAPANESE
			set CLEAN_LANGDIR=JAP
		) else if /i "!parameter!"=="ITALIAN" (
			set CLEAN_PLATFORM=ITALIAN
			set CLEAN_LANGDIR=ITA
		) else if /i "!parameter!"=="SPANISH" (
			set CLEAN_PLATFORM=SPANISH
			set CLEAN_LANGDIR=SPA
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

IF /I "%CLEAN_LANGVERSION%"=="ENGLISH" (
	set CLEAN_OVERRIDE_DIR=
) else (
	set CLEAN_OVERRIDE_DIR=_SOURCE_%CLEAN_LANGVERSION%
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

if %CLEAN_ALL% EQU 1 (
	set WORLD_PARAMETERS=EVERYTHING
	set SIDE_PARAMETERS=EVERYTHING
	set CLEAN_LOAD=1
	set CLEAN_SIDE=1
	set CLEAN_COMMON=1
	set CLEAN_SHELL=1
	set CLEAN_MOVIES=1
	set CLEAN_LOCALIZE=1
	set CLEAN_SOUND=1
)

REM   --------------  CLEAN LOG FILE ----------------------
REM LVL's and logs no longer get cleaned
REM echo Cleaning log file...
REM del /s /q ..\_LVL_%CLEAN_PLATFORM%\*.lvl
REM del /s /q *.log

REM   --------------  CLEAN COMMON  -----------------------

if %CLEAN_COMMON% EQU 1 (
	echo Common\clean %CLEAN_PLATFORM%
	cd Common
	call clean.bat %CLEAN_PLATFORM%
	cd ..
)

REM   --------------  CLEAN SHELL  -----------------------
if %CLEAN_SHELL% EQU 1 (
	echo Shell\clean %CLEAN_PLATFORM%
	cd Shell
	call clean.bat %CLEAN_PLATFORM%
	cd ..
)

REM   --------------  CLEAN LOAD  -----------------------
if %CLEAN_LOAD% EQU 1 (
	echo Load\clean %CLEAN_PLATFORM%
	cd Load
	call clean.bat %CLEAN_PLATFORM%
	cd ..
)

REM   --------------  CLEAN SIDES  -----------------------
if /i "%SIDE_PARAMETERS%" NEQ "NOTHING" (
	echo Sides\clean %CLEAN_PLATFORM%
	cd Sides
	call clean.bat %CLEAN_PLATFORM% %SIDE_PARAMETERS%
	cd ..
)

REM   --------------  CLEAN WORLDS  -----------------------
if /i "%WORLD_PARAMETERS%" NEQ "NOTHING" (
	echo Worlds\clean %CLEAN_PLATFORM%
	cd Worlds
	call clean.bat %CLEAN_PLATFORM% %WORLD_PARAMETERS%
	cd ..
)

REM   --------------  CLEAN SOUNDS  -----------------------
if %CLEAN_SOUND% EQU 1 (
	echo Sound\clean %CLEAN_PLATFORM%
	cd Sound
	call clean.bat %CLEAN_PLATFORM%
	cd ..
)



goto END


REM   --------------  PRINT SCRIPT USAGE AND EXIT  -----------------------
:PRINT_USAGE_AND_EXIT
echo "Usage: clean [/PLATFORM [PC|PS2|XBOX]]
echo "             [/LANGUAGE [ENGLISH|UK|FRENCH|GERMAN|JAPANESE|ITALIAN|SPANISH]]
echo "             [/WORLD [EVERYTHING|NOTHING|<world1> <world2> ...]] 
echo "             [/SIDE [EVERYTHING|NOTHING|<side1> <side2> ...]] 
echo "             [/LOAD] [/SOUND] [/COMMON] [/SHELL] [/MOVIES] [/LOCALIZE]
echo "
echo "Options:
echo "  If no parameters are specified then everything is cleaned.
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

REM   --------------  EXIT SCRIPT -----------------------
:END

endlocal

