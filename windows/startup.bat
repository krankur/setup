@echo off
doskey gvim=START /MAX gvim $1

rem to enable c/c++ compiler cl
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
