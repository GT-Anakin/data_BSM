@rem Save the starting directory
@for /F %%A in ('cd') do @set STARTDIR=%%A

@if %1x==x goto nocleandir
@if %2x==x goto noleveldir

@set MUNGEDIR=%STARTDIR%\%1
@set LEVELFILE=%STARTDIR%\%2

@rem Should we munge this level ?
@if /i not "%SOUNDLVL%"=="" (
	@for %%A in (%SOUNDLVL%) do @if /i "%%A"=="%3" @goto cleanit
	@goto exit
)
:cleanit

@if EXIST %MUNGEDIR% goto cleanmunged
@goto skipcleanmunged

:cleanmunged
cd %MUNGEDIR%
del /q *.config
del /q *.str
del /q *.bnk
del /q *.lvl

:skipcleanmunged

@if EXIST %LEVELFILE% goto cleanlevel
@goto skipcleanlevel

:cleanlevel
del /q %LEVELFILE%

:skipcleanlevel

@goto exit

:nocleandir
@echo Clean directory must be specified as the first argument
@goto exit
:noleveldir
@echo Level directory must be specified as the second argument
@goto exit
:exit
@cd %STARTDIR%