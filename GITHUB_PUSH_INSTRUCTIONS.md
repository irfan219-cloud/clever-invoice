# GitHub Push Instructions

This document provides instructions on how to push this project to GitHub using the automated scripts provided.

## Prerequisites

1. **GitHub Account**: You need a GitHub account. If you don't have one, [sign up here](https://github.com/join).

2. **Personal Access Token**: You need a GitHub Personal Access Token with the `repo` scope.
   - Go to [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens)
   - Click "Generate new token"
   - Give it a name (e.g., "Clever Invoice Push")
   - Select the `repo` scope
   - Click "Generate token"
   - **Copy the token immediately** as you won't be able to see it again

## Automatic Push Method

### Using the Batch File (Windows)

1. Simply double-click the `push-to-github.bat` file in the project directory.
2. Follow the prompts to enter your GitHub username, repository name, visibility preference, and personal access token.
3. The script will create the repository and push the code automatically.

### Using the PowerShell Script Directly

1. Right-click on `push-to-github.ps1` and select "Run with PowerShell".
2. If you get an execution policy error, you can run PowerShell as administrator and execute:
   ```
   Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
   ```
3. Then navigate to the script location and run:
   ```
   .\push-to-github.ps1
   ```
4. Follow the prompts to enter your GitHub username, repository name, visibility preference, and personal access token.

## Manual Push Method

If the automatic scripts don't work for any reason, you can follow these manual steps:

1. Create a new repository on GitHub:
   - Go to [GitHub](https://github.com/) and sign in
   - Click the "+" icon and select "New repository"
   - Name your repository (e.g., "clever-invoice")
   - Choose visibility (public or private)
   - Do NOT initialize with README, .gitignore, or license
   - Click "Create repository"

2. Connect your local repository to GitHub (run these commands in the project directory):
   ```
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
   git push -u origin master
   ```
   (Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name)

## Troubleshooting

- **Authentication Issues**: If you encounter authentication problems, make sure your personal access token has the correct permissions and hasn't expired.
- **Push Errors**: If you get errors during push, try pushing with the `-f` flag (force push) if you're sure you want to overwrite any remote changes:
  ```
  git push -f -u origin master
  ```
- **Script Execution Policy**: If PowerShell prevents script execution, you may need to adjust your execution policy as mentioned above.