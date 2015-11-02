@echo off

rem ============================================================================
rem 
rem Builder for MapBasic projects.
rem 
rem All you need is to change list of source files (%fileList%), projects
rem (%projList%), and relative path to libraries (%libPath%)
rem in "./setenv.bat" file.
rem 
rem Libraries directory also contains "setenv.bat" file which enlists
rem all the library files. It is called from here to compile libraries along
rem with this project.
rem 
rem ============================================================================

setlocal

del /f/q *.err *.mbx *.mbo > nul 2>&1

if exist *.mbx (
	echo Some executables are occupied
	
	goto eof
)

if not exist setenv.bat (
	echo Initialization file "setenv.bat" not found in current directory.
	echo.
	echo Create this file and put there something like this:
	echo.
	echo     set libPath=../lib/
	echo     set fileList=MyModule1.mb MyModule2.mb MyModule3.mb
	echo     set projList=MyProject1.mbp
	echo.
	echo ... to let the builder know what and where to build.
	
	goto eof
)

call setenv.bat

if not exist %libPath%\setenv.bat (
	echo Initialization file "setenv.bat" not found in "%libPath%" directory.
	echo.
	echo Check the "libPath" variable in "setenv.bat" file, and, if it
	echo is incorrect - fix it. Otherwise create such file and set there
	echo a variable named "allLibs" which will reference all the existing
	echo library modules.
	
	goto eof
)

call %libPath%\setenv.bat %libPath%

rem Append current project's file list with library files
set fileList=%fileList% %allLibs%
set errCount=0
set errExt=err

echo Project: %projName%
echo Started at: %TIME%
echo Compiling sources...

mapbasic -d %fileList%

echo Done

for %%i in (*.err) do (
	set /a errCount+=1
)

if %errCount% gtr 0 (
	echo There are %errCount% errors
	goto eof
)

if not "%projList%"=="" (
	echo Building projects...
	
	mapbasic -l %projList%
	
	set errCount=0
	
	for %%i in (*.err) do (
		set /a errCount+=1
	)
	
	if %errCount% gtr 0 (
		echo There are errors in projects
	) else (
		echo Done
	)
)

echo.

:eof

endlocal
