@echo off
setlocal
pushd "%~dp0" || exit /b 1
if not defined PYTHON set "PYTHON=python"
"%PYTHON%" main.py %*
set "game_exit=%errorlevel%"
popd
exit /b %game_exit%
