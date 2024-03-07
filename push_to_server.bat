@echo off
echo Running Git commands...

REM Set the absolute path to the directory containing the script
set script_directory="C:\path\to\directory\containing\script"

echo 1

echo 2

REM Replace "repository_path" with the path to where you stored the repository
set "repository_path=\"%~dp0""

echo 3

set /p commit_message=Enter the commit message: 

echo 4

"C:\Program Files\Git\bin\bash.exe" -c "cd %repository_path% && git add ."
echo %repository_path%
"C:\Program Files\Git\bin\bash.exe" -c "cd %repository_path% && git commit -m '%commit_message%'"
echo 6
"C:\Program Files\Git\bin\bash.exe" -c "cd %repository_path% && git push origin main"
echo 7

pause