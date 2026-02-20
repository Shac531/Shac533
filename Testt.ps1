# Creates folder and shows a pop-up message
$path = "C:\Users\KT\Downloads\DarkLnk-master\DarkLnk-master\DarkLnk\bin\Debug\Axel"
New-Item -ItemType Directory -Path $path -Force | Out-Null
[System.Windows.Forms.MessageBox]::Show("Axel folder created successfully!", "Success")