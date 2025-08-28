@echo off
echo Running PowerShell script to push to GitHub...
powershell -ExecutionPolicy Bypass -File "%~dp0push-to-github.ps1"
pause