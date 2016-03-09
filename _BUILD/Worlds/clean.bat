@echo off
setlocal enabledelayedexpansion

set MUNGE_WORLD_DIRS=
if "%MUNGE_PLATFORM%"=="" set MUNGE_PLATFORM=PC

REM see if any of the parameters specify a platform, if so remove it
for %%A in (%*) do ( 
  if /i "%%A"=="PC" ( 
	set MUNGE_PLATFORM=PC
  ) else if /i "%%A"=="PS2" (
	set MUNGE_PLATFORM=PS2
  ) else if /i "%%A"=="XBOX" (
	set MUNGE_PLATFORM=XBOX
  ) else (
	set MUNGE_WORLD_DIRS=%%A !MUNGE_WORLD_DIRS!
  )
)

REM see if NOTHING was specified then just exit the script
set FOR_PARAMETER=
for %%A in (%*) do ( 
  if /i "%%A"=="NOTHING" ( 
    goto END 
  ) else if /i "%%A"=="EVERYTHING" (
	set MUNGE_WORLD_DIRS=*
	set FOR_PARAMETER=/D
  )
)

REM for each subdirectory
for %FOR_PARAMETER% %%A in (%MUNGE_WORLD_DIRS%) do (

	REM check to see if %%A is a directory
	set IS_DIRECTORY=%%~aA
	if /i "!IS_DIRECTORY:~0,1!" NEQ "d" ( 
		echo "
		echo "Error (Invalid Parameter): %%A
		echo "
		goto PRINT_USAGE_AND_EXIT
	)

	REM it is valid directory so munge it
	echo Worlds\%%A\clean %MUNGE_PLATFORM%
	cd %%A
	call clean.bat %MUNGE_PLATFORM%
	cd ..
)

goto END

REM   --------------  PRINT SCRIPT USAGE AND EXIT  -----------------------
:PRINT_USAGE_AND_EXIT
echo "Usage: clean [PC|PS2|XBOX] [<world1> <world2> ...]

:END

endlocal

