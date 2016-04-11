@REM called from $\Animations\type\subfolder\
@REM   all params are passed to zenasset
@REM   if there are more than 9 parameters to pass, you can enclose all params in double quotes
@setlocal

@set MUNGE_ROOT_DIR=..\..\..
@if "%MUNGE_BIN_DIR%"=="" (
	@set MUNGE_BIN_DIR=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin
	@set "PATH=%CD%\%MUNGE_ROOT_DIR%\..\ToolsFL\Bin;%PATH%"
)

zenasset /multimsh /writefiles %~1 > ZenAsset.log

@mkdir %MUNGE_ROOT_DIR%\%2\MUNGED
binmunge -inputfile *.zaa -chunkid zaa_ -ext zaabin -outputdir %MUNGE_ROOT_DIR%\%2\MUNGED\
binmunge -inputfile *.zaf -chunkid zaf_ -ext zafbin -outputdir %MUNGE_ROOT_DIR%\%2\MUNGED\
del *.zaa
del *.zaf
move *.anims %MUNGE_ROOT_DIR%\%2\MUNGED\
@endlocal