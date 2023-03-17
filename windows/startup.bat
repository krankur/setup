@echo off
doskey gvim=START /MAX gvim $1

rem to enable c/c++ compiler cl
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64

doskey nvmini=set XDG_DATA_HOME=D:\workspace\nvim-data\nvim-mini-data^&set XDG_CACHE_HOME=D:\workspace\nvim-data\nvim-mini-data^&set XDG_CONFIG_HOME=D:\workspace\setup\nvim-mini^&nvim

doskey nvmain=set XDG_DATA_HOME=D:\workspace\nvim-data\nvim-main-data^&set XDG_CACHE_HOME=D:\workspace\nvim-data\nvim-main-data^&set XDG_CONFIG_HOME=D:\workspace\setup\nvim-main^&nvim