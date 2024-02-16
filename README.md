This is a script to automatically move .step files from your downloads folder to a working directory. 
This is useful for Sites like grabCAD or McMaster Carr where you can easily download 3D CAD files but then need to move them from Downloads to your CAD library. 
(or you can change to some other file type)
This script runs in PowerShell and is called automatically by the task scheduler on windows.
Copy the "MoveStepFiles" script and save to "C:\Windows\System32\..."
Set up a new task in the task scheduler and add a trigger and action 
The action uses powershell.exe as the program to run the script and the argument is  'ExecutionPolicy Bypass -File "C:\Windows\System32\MoveStepFiles.ps1"'
