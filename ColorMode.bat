@echo off
SET hour=%time:~0,2%

IF %hour% geq 9 SET darkmode=False
IF %hour% geq 20 SET darkmode=True 

IF %darkmode%==True (
    powershell -Command "start-process -filepath 'C:\Users\Richard\AppData\Local\Microsoft\Windows\Themes\ventura_dark.theme'; timeout /t 3; taskkill /im 'systemsettings.exe' /f"
)
IF %darkmode%==False (
    powershell -Command "start-process -filepath 'C:\Users\Richard\AppData\Local\Microsoft\Windows\Themes\oem.theme'; timeout /t 3; taskkill /im 'systemsettings.exe' /f"
)
