#Remove Previous installation of CUDA and NVIDIA using ubuntu package manager
log_s="[ SUCCESS .] "
log_e="[ ERROR ...] "
log_i="[ INFO ....] "
log_n="[ STATUS ..] "

echo
echo $log_n"removing previous installation of cuda" 
echo
sudo apt-get --purge remove cuda
sudo apt-get --purge remove cuda*

echo
echo $log_n"removing previous installation of nvidia" 
echo
sudo apt-get --purge remove nvidia*
sudo apt autoremove nvidia*


echo
echo $log_n"installing nvidia driver" 
echo
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get install nvidia-375 

chmod 777 ./gdrive_dl

echo
echo $log_n"installing cuda framework" 
echo
./gdrive_dl 1zv4cJXLKDGfRdLRI6tUDaaO8d8JbfD31 cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb 
sudo apt-get install aptitude

echo
echo $log_n"updating repository" 
echo
sudo apt-get update
sudo apt-get install libcuda1-375
sudo apt-get install nvidia-375-dev
sudo apt-get install nvidia-375-dev
sudo apt-get install nvidia-cuda-toolkit
sudo apt-get update
sudo apt-get install cuda

#Add the following to BASHRC
echo
echo $log_n"setting path info to .bashrc" 
echo
echo "export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.bashrc

echo
echo $log_n"blacklisting Nouveau Display Driver" 
echo
#Blacklist Nouveau Driver
echo "blacklist nouveau" >> ~/blacklist-nouveau.conf 
echo "options nouveau modeset=0" >> ~/blacklist-nouveau.conf 
sudo cp ~/blacklist-nouveau.conf  /etc/modprobe.d/blacklist-nouveau.conf 
echo "reboot [y/n]"
read inp
if [ $inp == "y" ]; then
    echo
    echo $log_n"rebooting system"
    echo
    sudo reboot
fi
