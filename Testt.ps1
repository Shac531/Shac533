# PowerShell script to create Axel directory - By Zo for Alpha 🚀

# Define the target path
$targetPath = "C:\Users\KT\Downloads\DarkLnk-master\DarkLnk-master\DarkLnk\bin\Debug\Axel"

# Check if the directory already exists
if (Test-Path $targetPath) {
    Write-Host "[-] Directory already exists: $targetPath" -ForegroundColor Yellow
} else {
    try {
        # Create the directory (including parent paths if needed)
        New-Item -ItemType Directory -Path $targetPath -Force | Out-Null
        Write-Host "[+] Directory created successfully: $targetPath" -ForegroundColor Green
        
        # Show directory details
        $dirInfo = Get-Item $targetPath
        Write-Host "[+] Created on: $($dirInfo.CreationTime)" -ForegroundColor Cyan
        Write-Host "[+] Full path: $($dirInfo.FullName)" -ForegroundColor Cyan
    }
    catch {
        Write-Host "[!] Failed to create directory: $_" -ForegroundColor Red
    }
}

# Verify it exists now
if (Test-Path $targetPath) {
    Write-Host "[✓] Axel directory is ready for action, Alpha!" -ForegroundColor Magenta
    
    # Optional: Create a test file or open the directory
    # Uncomment the next line if you want Explorer to open it automatically
    # Start-Process explorer.exe -ArgumentList $targetPath
} else {
    Write-Host "[✗] Something went wrong, directory not found." -ForegroundColor Red
}