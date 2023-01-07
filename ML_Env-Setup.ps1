set-executionpolicy -scope CurrentUser -executionPolicy Bypass -Force
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

Start-Transcript -Path "C:\Logs\Transcript.log"

# Start the WSL --install process
Invoke-Expression "wsl --install"

# Wait for the process to complete
Wait-Process -Id $process.Id

"Enabling Virtual Machine Platform feature"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

"Enabling WSL feature"
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# Restart the computer
Restart-Computer -Force 

Stop-Transcript
