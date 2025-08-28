# PowerShell script to create a GitHub repository and push code

# Get GitHub username
$username = Read-Host -Prompt "Enter your GitHub username"

# Get repository name (default to clever-invoice)
$repoName = Read-Host -Prompt "Enter repository name (press Enter for 'clever-invoice')"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    $repoName = "clever-invoice"
}

# Get repository visibility (public/private)
$isPrivate = Read-Host -Prompt "Make repository private? (y/n, default: n)"
$isPrivate = $isPrivate.ToLower() -eq 'y'

# Get GitHub personal access token
$token = Read-Host -Prompt "Enter your GitHub personal access token" -AsSecureString
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($token)
$plainToken = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

# Create repository on GitHub
Write-Host "Creating repository $repoName on GitHub..."

$privateFlag = if ($isPrivate) { "true" } else { "false" }

$body = @{
    name = $repoName
    private = $isPrivate
    description = "Clever Invoice application"
} | ConvertTo-Json

$headers = @{
    Authorization = "token $plainToken"
    Accept = "application/vnd.github.v3+json"
}

try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Body $body -Headers $headers -ContentType "application/json"
    Write-Host "Repository created successfully!" -ForegroundColor Green
    
    # Add remote origin
    Write-Host "Adding remote origin..."
    git remote add origin "https://github.com/$username/$repoName.git"
    
    # Set up credentials for push
    Write-Host "Setting up credentials for push..."
    $remote = "https://$username:$plainToken@github.com/$username/$repoName.git"
    
    # Push to GitHub
    Write-Host "Pushing code to GitHub..."
    git push -u $remote master
    
    Write-Host "Code successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "Repository URL: https://github.com/$username/$repoName"
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
    Write-Host "Failed to create repository or push code." -ForegroundColor Red
    Write-Host "Please check your credentials and try again." -ForegroundColor Red
}

# Clean up - remove token from memory
[System.Runtime.InteropServices.Marshal]::ZeroFreeBSTR($BSTR)