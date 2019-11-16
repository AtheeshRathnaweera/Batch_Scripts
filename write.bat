::save in text file
@echo off

::Save current date and time in log.txt file in My Logs folder
:: ( >> )  create a new line without clearing & ( > ) will erase the whole and add the new line
echo Text from write.txt : line 1 : %DATE% :%TIME% > "D:\My Logs\log1.txt"
echo Text from write.txt : line 2 : %DATE% :%TIME% > "D:\My Logs\log1.txt"

echo Text from write.txt : line 1 : %DATE% :%TIME% >> "D:\My Logs\log2.txt"
echo Text from write.txt : line 2 : %DATE% :%TIME% >> "D:\My Logs\log2.txt"

