#First check to see if there is no dependencee problems before continuing the updating process of packages.  
sudo apt-get check;
#Check if there is any updates to package versions in the repos that are set in the system.  
sudo apt-get update;
#Start the update process of packages that have a new version available.  
sudo apt-get upgrade;
#Remove packages that are no longer used or required.  Purge the configuration files of these packages that are being removed.  
sudo apt-get autoremove --purge;
#Clean up any downloaded temporary installation deb/files during the updating process, rather than waiting till the next system restart or when the system automatically removes these files from time to time.  
sudo apt-get clean;
