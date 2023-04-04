#!/usr/bin/env bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Check if VS Code is installed
if ! command -v code &> /dev/null
then
    echo "VS Code not found. Installing..."
    brew install --cask visual-studio-code
else
    echo "VS Code already installed"
fi

# Check if PowerShell is installed
if ! command -v pwsh &> /dev/null
then
    echo "PowerShell not found. Installing..."
    brew install powershell
else
    echo "PowerShell already installed"
fi

if ! command -v bicep &> /dev/null
then
    echo "Bicep not found. Installing..."
    brew tap azure/bicep
    brew install bicep
fi

# Install Azure Account extension for VS Code
if ! code --list-extensions | grep -q "ms-vscode.azure-account"
then
    echo "Azure Account extension not found. Installing..."
    code --install-extension ms-vscode.azure-account
fi

# Install Azure Pipelines extension for VS Code
if ! code --list-extensions | grep -q "ms-azure-devops.azure-pipelines"
then
    echo "Azure Pipelines extension not found. Installing..."
    code --install-extension ms-azure-devops.azure-pipelines
fi

# Install Bicep extension for VS Code
if ! code --list-extensions | grep -q "ms-azuretools.vscode-bicep"
then
    echo "Bicep extension not found. Installing..."
    code --install-extension ms-azuretools.vscode-bicep
fi

# Install YAML extension for VS Code
if ! code --list-extensions | grep -q "redhat.vscode-yaml"
then
    echo "YAML extension not found. Installing..."
    code --install-extension redhat.vscode-yaml
fi

# Install Azure Resource Manager extension for VS Code
if ! code --list-extensions | grep -q "msazurermtools.azurerm-vscode-tools"
then
    echo "Azure Resource Manager extension not found. Installing..."
    code --install-extension msazurermtools.azurerm-vscode-tools
fi

# Install PowerShell extension for VS Code
if ! code --list-extensions | grep -q "ms-vscode.powershell"
then
    echo "PowerShell extension not found. Installing..."
    code --install-extension ms-vscode.powershell 
fi

echo "-----******-----"
# Ask for Git username and email
echo "Please enter your Git username:"
read git_username

echo "Please enter your Git email address:"
read git_email

# Set Git username and email globally
# git config --global user.name "$git_username"
# git config --global user.email "$git_email"
