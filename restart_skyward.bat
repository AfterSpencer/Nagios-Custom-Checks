if "%PROPATH%"=="" set PROPATH=D:\skyward
if "%DLC%"=="" set DLC=%PROPATH%\dlc
set PATH=%PATH%;%DLC%\bin

call %DLC%\bin\wtbman -name wsEAplus -stop

ping -n 3 127.0.0.1 
REM USED FOR SHORT PAUSE SO THE SERVICES CAN GET STOPPED

call %DLC%\bin\wtbman -name wsEAplus -start

@exit 0

