@cd ..\..

@if "%1"=="" (
 @call soundclean.bat PS2
 @del _LVL_PS2\Sound\common.bnk
 @call soundclean.bat PC
 @del _LVL_PC\Sound\common.bnk
 @call soundclean.bat XBOX
 @del _LVL_XBOX\Sound\common.bnk
) else (
 @call soundclean.bat %1
 @del _LVL_%1\Sound\common.bnk
)

@cd _BUILD\Sound