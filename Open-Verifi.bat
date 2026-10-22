@echo off
rem Opens Verifi in Google Chrome (falls back to your default browser).
set "APP=%~dp0index.html"
for %%P in ("%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%LocalAppData%\Google\Chrome\Application\chrome.exe") do (
  if exist %%P (
    start "" %%P "%APP%"
    exit /b
  )
)
start "" "%APP%"
