@echo mkdir IncludeHere
@echo for /f "tokens=2 delims=|" %%i in (a.txt) do copy %%i.*  IncludeHere
for /r C:\Users\Tsher\Desktop\Excel\  %%i in (*.xlsx) do echo %%i

pause 