@echo off

title WIFI password finder

::Create the main function
:main

::change the text color
color 0A

::clear the screen content
cls
::shows all the connected wifi networks
netsh wlan show profiles

::get user input( wifi name)
set /p wifiName=WIFI name :

::set and get the wifi profile details
netsh wlan show profile name="%wifiName%" key=clear

::for /f "delims=" %%A IN ('netsh wlan show profiles name^="%wifiName%" key^=clear') do echo %%A

::pause the script to avoid closing
pause

::loop through the main founction
goto main


