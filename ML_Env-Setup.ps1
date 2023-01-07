set-executionpolicy -scope CurrentUser -executionPolicy Bypass -Force
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}

Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

wsl --set-default-version 2

Restart-Computer

# Enable the VirtualMachinePlatform feature
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

# Set the WSL version to 2
wsl --set-default-version 2

# Restart the computer
Restart-Computer

#wsl --install 
#shutdown.exe /r /t 10
