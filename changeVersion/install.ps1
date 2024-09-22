function Write-ColoredOutput($message, $color) {
    Write-Host $message -ForegroundColor $color
}

# $env:NVM_DIR = "$env:USERPROFILE\.nvm"
# . "$env:NVM_DIR\nvm.ps1"

Write-Host "Hello, welcome to changeVersion, here are the different versions of NodeJs available:"
Write-ColoredOutput "1. NodeJs v18.x" Green
Write-ColoredOutput "2. NodeJs v20.x" Green
Write-ColoredOutput "3. NodeJs v22.x" Green
Write-ColoredOutput "4. Specific version not listed" Green

while ($true) {
    $userInput = Read-Host "Which version of NodeJs do you want? (ex: 1)"
    switch ($userInput) {
        "1" {
            Write-ColoredOutput "You have chosen the NodeJs v18.x version" Green
            nvm install 18
            nvm alias default 18
            Write-ColoredOutput "Installation complete" Green
            Write-ColoredOutput "Exit all terminals and type node -v to check your version" Red
            break
        }
        "2" {
            Write-ColoredOutput "You have chosen the NodeJs v20.x version" Green
            nvm install 20
            nvm alias default 20
            Write-ColoredOutput "Installation complete" Green
            Write-ColoredOutput "Exit all terminals and type node -v to check your version" Red
            break
        }
        "3" {
            Write-ColoredOutput "You have chosen the NodeJs v22.x version" Green
            nvm install 22
            nvm alias default 22
            Write-ColoredOutput "Installation complete" Green
            Write-ColoredOutput "Exit all terminals and type node -v to check your version" Red
            break
        }
        "4" {
            Write-ColoredOutput "You have requested the installation of a non-listed version" Green
            & "$PSScriptRoot\specificVersion.ps1"
            break
        }
        default {
            Write-ColoredOutput "Please enter a valid option" Red
        }
    }
    if ($userInput -match '^[1-4]$') { break }
}
