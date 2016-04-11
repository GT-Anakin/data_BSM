@REM called from $\Animations
@if not exist %1 goto error

@set PWD=%CD%
@cd %1
 @call munge.bat
@cd %PWD%
@goto end

:error
@echo ERROR: Animation sub-directory %1 does not exist!
:end
