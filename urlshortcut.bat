@echo off

::Change the text color
color B

::Initialize the len variable for hold the array size
set len=5

::initializing names array
set names[0]=github
set names[1]=linkedin
set names[2]=cal
set names[3]=google
set names[4]=youtube

::initializing url array
set url[0]=https://github.com/AtheeshRathnaweera
set url[1]=https://www.linkedin.com/in/atheeshrathnaweera/
set url[2]=https://cal2.kln.ac.lk/login/index.php
set url[3]=https://www.google.com/
set url[4]=https://www.youtube.com/

::Create the variable i
set /A i=0

::Print the link list function
:print_list
if %i% equ %len% goto :main
for /f "usebackq delims== tokens=2" %%j in (`set names[%i%]`) do (

	call echo %i% : %%names[%i%]%%
	
)
set /A i=i+1
goto print_list


::main function
:main
::set i to 0
set /A i=0
::Print an empty line
echo[
::get the user input
set /p index="Enter the index number : "


:validate_the_index
if %index% lss 0 goto invalid_input
if %index% geq %len% goto invalid_input


:success
::start the firefox session if the name and the names[] equals
setlocal enableDelayedExpansion
start firefox.exe !url[%index%]!
endlocal
exit


::go to main function if invalid
:invalid_input
echo invalid input
goto main


