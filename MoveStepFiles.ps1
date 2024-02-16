
$sourcePath = "$env:USERPROFILE\Downloads"
$destinationPath = "C:\XXXX\XXXX\XXXX" # Change this to your custom folder path

# Function to check if file is accessible and assumed complete
function Test-FileReady {
    param ([string]$path)
    $fileReady = $false
    try {
        $file = [System.io.File]::Open($path, 'Open', 'Read', 'None')
        if ($file) {
            $file.Close()
            $fileReady = $true
        }
    } catch {
        # File is not ready
        $fileReady = $false
    }
    return $fileReady
}

Get-ChildItem -Path $sourcePath -Filter "*.step" | ForEach-Object {
    $filePath = $_.FullName
    $destination = Join-Path -Path $destinationPath -ChildPath $_.Name
    # Check if the file is fully written and ready to be moved
    if (Test-FileReady -path $filePath) {
        Move-Item -Path $filePath -Destination $destination
        Write-Host "Moved: $($_.Name)"
    } else {
        Write-Host "Not ready or in use: $($_.Name)"
    }
}