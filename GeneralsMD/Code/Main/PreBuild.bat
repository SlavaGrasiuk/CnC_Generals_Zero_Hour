:: 1st arg 	- directory with tools binaries
@echo off
set GeneratedDir=%1..\..\gen\include\
mkdir %GeneratedDir%
%1\versionUpdate.exe %GeneratedDir%GeneratedVersion.h
%1\buildVersionUpdate.exe %GeneratedDir%BuildVersion.h
exit 0
