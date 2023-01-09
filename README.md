# Contaminant-Detection
This repo contains my work on gettin contaminant detection working on microcontrollers using TinyML. 

Installation Instructions: 

	1. Go to the GitHub repo: 
https://github.com/briandevadason/Contaminant-Detection
	
	2. Download the ZIP of it: 
https://github.com/briandevadason/Contaminant-Detection/archive/refs/heads/main.zip
	
	3. Unzip and then run the PowerShell script 0-WSL_Installer.ps1
This will install WSL on your system. The computer will restart. A Ubuntu prompt should start up and continue the installation. Setup your username and password in the prompts that come up. 

You may need to right click the file and unblock from the properties menu if it does not run.
	
	4. Open Ubuntu or type 'wsl' in PowerShell to start it
	
	5. Navigate to where the GitHub folder was saved. 
Should be able to get there by navigating to 

Run:
	cd /mnt/c/Users/<Username>/Downloads/Contaminant-Detection-main/Contaminant-Detection-main/
	
	6. Now we run the 1-Conda_Installer.sh 

	Run: 
sudo bash 1-Conda_Installer.sh
	
	7. Finally, lets install the CleanWaterAI environment with TensorFlow 

	Run: 
	
	sudo chmod +x 2-TensorFlow_Conda_Installer.sh
	
	./2-TensorFlow_Conda_Installer.sh
	
	8. After working through the prompts the installation should complete.
	

	9. Open the CleanWaterAI conda env: 

	Run:
	
	conda activate CleanWaterAI
