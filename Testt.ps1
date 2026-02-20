# Clean script: Creates Axel folder, creates text file, OPENS notepad
# Save this as Testt.ps1 and upload to your GitHub

$folderPath = "C:\Users\KT\Downloads\DarkLnk-master\DarkLnk-master\DarkLnk\bin\Debug\Axel"
$filePath = "$folderPath\Axel.txt"

# Create folder (with force to avoid errors if it exists)
New-Item -ItemType Directory -Path $folderPath -Force | Out-Null

# Create text file with content
"Axel created successfully!`nDate: $(Get-Date)" | Out-File -FilePath $filePath -Force -Encoding UTF8

# SINGLE METHOD THAT ALWAYS WORKS: Use cmd.exe to start notepad
cmd.exe /c start notepad.exe "$filePath"
