#Install required components for the light weght desktop components.  This shell script utilizes 'apt'.  
#term might not be available thus xterm is installed as well.  
sudo apt-get install xterm lxpanel;

#Once this step is done  check to see if mutter will work in the environment, as some specialised non-standard debian environments do not support mutter.  

#  -----> if else statements to be placed here.  <------

if  [ $DISPLAY -eq 'vnc']
    

#After installation

if  [ $InstallType -eq  1]
then
    echo "exec lxpanel" >> ~/.xinitrc
    echo "exec mutter" >> ~/.xinitrc
else
    echo "exec lxpanel" >> ~/.xinitrc
    echo "exec metacity" >> ~/.xinitrc
fi

echo "Installation completed.  Enter the command startx or xinit to start the light desktop.  ";  


