#!/bin/bash

# Get the current directory in WSL format
current_dir=$(pwd)

# Convert the WSL path to a Windows path
ps_cleanup_script_path=$(wslpath -w "$current_dir/cleanup.ps1")

# Execute the PowerShell cleanup script from WSL2 with ports as argument
/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command "Start-Process -Verb RunAs powershell -ArgumentList '-ExecutionPolicy Bypass -File $ps_cleanup_script_path $1'"
