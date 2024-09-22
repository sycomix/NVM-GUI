function Write-ColoredOutput($message, $color) {
    Write-Host $message -ForegroundColor $color
}

Write-ColoredOutput "Your current NodeJs version is :" Blue
node -v

do {
    $userInput = Read-Host "Do you want to change your NodeJs version? (Y/N)"
    switch -regex ($userInput.ToLower()) {
        '^y(es)?' {
            & "$PSScriptRoot\changeVersion\install.ps1"
            break
        }
        '^n(o)?' {
            Write-ColoredOutput "Closing the program" Green
            break
        }
        default {
            Write-ColoredOutput "Please enter a valid option" Red
        }
    }
} while ($true)