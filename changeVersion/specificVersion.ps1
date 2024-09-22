function Write-ColoredOutput($message, $color) {
    Write-Host $message -ForegroundColor $color
}

$env:NVM_DIR = "$env:USERPROFILE\.nvm"
. "$env:NVM_DIR\nvm.ps1"

Write-ColoredOutput "Which version do you want to install? (ex: 17.1.2 or 17.1 or 17)" Blue
$version = Read-Host

while ($true) {
    $userInput = Read-Host "Are you sure you want to install version '$version'? Please check if it exists (Y/N)"
    switch -regex ($userInput.ToLower()) {
        '^y(es)?' {
            Write-ColoredOutput "Installing version $version" Green
            nvm install $version
            nvm alias default $version
            Write-ColoredOutput "Version $version installation complete" Green
            Write-ColoredOutput "Exit all terminals and type node -v to check your version" Red
            break
        }
        '^n(o)?' {
            Write-ColoredOutput "Closing the program" Red
            break
        }
        default {
            Write-ColoredOutput "Please enter a valid option" Red
        }
    }
    if ($userInput -match '^(y(es)?|n(o)?)') { break }
}
