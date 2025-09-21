# Set the base directory for the new project
Set-Location .
$basePath = (Get-Location).Path

# Define the directories to create
$directories = @(
    "$basePath",
    "$basePath\.github\workflows",
    "$basePath\src",
    "$basePath\tests"
)

# Define the empty files to create
$files = @(
    "$basePath\README.md",
    "$basePath\requirements.txt",
    "$basePath\.github\workflows\reusable-python-workflow.yml",
    "$basePath\.github\workflows\main-workflow.yml",
    "$basePath\src\your_python_code.py",
    "$basePath\tests\test_your_code.py"
)

# --- Process ---

# 1. Create all directories
# The -Force parameter creates parent directories if they don't exist
Write-Host "Creating directories..."
foreach ($dir in $directories) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

# 2. Create all files
Write-Host "Creating files..."
foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force | Out-Null
}

Write-Host "Project structure created successfully at $basePath"