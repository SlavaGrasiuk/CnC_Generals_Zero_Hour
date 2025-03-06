:: 1st arg 	- directory with tools binaries
echo on
echo Incrementing version numbers held in GeneratedVersion.h BuildVersion.h
@echo off
set GeneratedDir=%1..\..\gen\include\
if not exist %GeneratedDir% mkdir %GeneratedDir%
%1\versionUpdate.exe %GeneratedDir%GeneratedVersion.h
%1\buildVersionUpdate.exe %GeneratedDir%BuildVersion.h
exit 0
