@echo off
REM 
SET maxvalue=11
SET minvalue=1

SETLOCAL 
SET /A tmpRandom=((%RANDOM%)%%(%maxvalue%))+(%minvalue%)
echo ========================================================
echo ========================================================
echo Hello,
echo Welcome to the virtual deck! I am JokerBot, 
echo I will draw the cards for you
echo ========================================================
echo ========================================================
echo The card you drew is : %tmpRandom%
echo ========================================================
echo ========================================================
CHOICE /C YN /M "Do you want to daw another card?"
IF %ERRORLEVEL%==1 GOTO yes
IF %ERRORLEVEL%==2 GOTO ending
GOTO ending
:yes
set /A tmpRandom=((%RANDOM%)%%(%maxvalue%))+(%minvalue%)
echo ========================================================
echo ========================================================
echo your second card is : %tmpRandom%
echo ========================================================
echo ========================================================
echo I can only draw 2 cards at a time, start again if you want to draw another 2!
GOTO ending

:ending
echo ========================================================
echo ========================================================
echo Rememeber: Gains take time :)
echo bye bye!
echo -
echo -
echo Ramy Kila, Jokerbot, v1.0003
GOTO end

:end
ENDLOCAL

pause