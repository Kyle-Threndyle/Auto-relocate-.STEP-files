This script runs in PowerShell and is called automatically by the task scheduler on windows.
Copy the "MoveStepFiles" script and save to "C:\Windows\System32\..."
Set up a new task in the task scheduler and add a trigger and action 
The action uses powershell.exe as the program to run the script and the argument is  'ExecutionPolicy Bypass -File "C:\Windows\System32\MoveStepFiles.ps1"'
