#First check to see if there is no dependencee problems before continuing the updating process of packages.  
sudo apt-get check;
#Check if there is any updates to package versions in the repos that are set in the system.  
sudo apt-get update;
#Start the update process of packages that have a new version available.  This does not ingnore the prompt yes or no prompt.
sudo apt-get upgrade;
#Ask the user if they would like to autoremove any automatically installed packaged that is no longer needed as it is no longer a dependency to another package.  
echo "Enter Y or y, if you would like to automatically remove packasges that were automatically installed previously as dependencies, but are no longer needed.  ";
read remInput;
if [[ "$remInput" = "Y" ]] || [[ "$remInput" = "y" ]]; then
  #Ask the user if they would like to purge the config contents of the package(s) that is being removed.  
  echo "Enter Y or y, if you would like to purge the config contents of the package(s) that are being removed.  ";
  read purInput;
  if [[ "$purInput" = "Y" ]] || [[ "$purInput" = "y" ]]; then
    #Remove packages that were automatically installed as an dependency to another package, however after the upgrade the dependency(ies) no longer exsists.  Purge the configuration files of these packages that are being removed.  
    #Yes or No prompt will still show for safety.  
    sudo apt-get autoremove --purge;
  else
    #Remove the package, but do not purge the config contents.  Yes or No prompt will still show for safety.  
    sudo apt-get autoremove;
  fi
fi
#Clean up any downloaded temporary installation deb/files during the updating process, rather than waiting till the next system restart or when the system automatically removes these files from time to time.  
sudo apt-get clean;
#Tell user that the update process is completed.  
echo "Update process complete.  ";
