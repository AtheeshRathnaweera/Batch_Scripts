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

::get the user input
set /p name="Enter the name: "

:loop

::exit if i and len is equal
if %i% equ %len% goto :eof

::looping through the names[]
for /f "usebackq delims== tokens=2" %%j in (`set names[%i%]`) do (

::call success founction if the input and the names[x] if equal
	if %%j==%name% goto :success
	
)

::Increment i by +1
set /A i=%i%+1
goto loop

:success

::start the firefox session if the name and the names[] equals
setlocal enableDelayedExpansion
start firefox.exe !url[%i%]!
endlocal
exit


::start firefox.exe https://github.com/AtheeshRathnaweera

