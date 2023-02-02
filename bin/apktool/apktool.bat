@echo off
if "%PATH_BASE%" == "" set PATH_BASE=%PATH%
set PATH=%CD%;%PATH_BASE%;
echo %PATH%
echo %PATH_BASE%
echo %1
echo %2
echo %3
echo %4
echo %5
echo %6
echo %7
echo %8
echo %9

java -jar "%~dp0\apktool\apktool_2.7.0.jar" %1 %2 %3 %4 %5 %6 %7 %8 %9
