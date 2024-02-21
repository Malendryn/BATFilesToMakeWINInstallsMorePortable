@echo off

REM to allow for multiple version installs, we will use a <TOPROOT>\<PROGVERROOT> topology


REM the name of the ROOT folder the program is in, (EG C:\lcl\bin\Portable_Installs\<TOPROOT>)
set TOPROOT=Cura

REM the name of the ROOT folder the /versioned/ program is in UNDER the TOPROOT folder
set PROGVERROOT=Cura-5.6.0


REM ------------------------------------------------------------------------------------------
REM ---------------------- everything below here is (mostly) automated. ----------------------
REM ------------------------------------------------------------------------------------------
REM set CWD to where the root of all portable installs are installed
set CWD=C:\lcl\bin\Portable_Installs

REM set the name of the root of where temp (and cache?) files should go
set TMPROOT=D:\tmp\Portable_TmpFiles


REM --------------- set the basic temp and dataroot environment vars --------------------------
REM ---------------   and create the tempfile and __data folders     ---------------------------
cd %CWD%

set TMP=%TMPROOT%\%TOPROOT%\%PROGVERROOT%
REM set TEMP equal to TMP in case the software uses %TEMP% and/or %TMP%
set TEMP=%TMP%
mkdir %TMP%

set DATAROOT=%CWD%\__data\%TOPROOT%
mkdir DATAROOT
set DATAROOT=%DATAROOT%\%PROGVERROOT%
mkdir DATAROOT


REM --------- time to 'trick' windows into not using the user subdir for data storage ---------
REM NOTE: SOME of these vars seem pointless but are used by the software so DON'T PARE THEM OUT!

set USERPROFILE=%DATAROOT%\WindowsUser
set APPDATA=%USERPROFILE%\AppData\Roaming
set LOCALAPPDATA=%USERPROFILE%\AppData\Local
set PROGRAMDATA=%DATAROOT%\ProgramData

mkdir %USERPROFILE%
mkdir %APPDATA%
mkdir %LOCALAPPDATA%
mkdir %PROGRAMDATA%


REM ------ finally, do any last minute program-specific stuff before launching(if any) --------

REM === Yes, I renamed the actual .EXE to make SURE I never accidentally load it outside of this script! ===
set BIN=%CWD%\%TOPROOT%\%PROGVERROOT%\Ultimaker-Cura-BATLoadOnly.exe

start %BIN%

