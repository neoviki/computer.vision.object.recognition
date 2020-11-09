#Installing in Ubuntu 16.04

#Select GPU as NVIDIA Discrete [In the boot menu]
#Follow the instructions to enable NVIDIA 
#https://www.linuxbabe.com/desktop-linux/switch-intel-nvidia-graphics-card-ubuntu

#$lspci -k | grep -A 2 -i "VGA"
#$software-properties-gtk
#software & updates window. 
#Click the Additional Drivers tab
#Choose NVIDIA Binary Driver

#Installation Instructions:
#sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb
#sudo apt-key add /var/cuda-repo-<version>/7fa2af80.pub
#sudo apt-get update
#sudo apt-get install cuda
#export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH
#Change the following in make file
#ifeq ($(GPU), 1) 
#COMMON+= -DGPU -I/usr/local/cuda/include/
#CFLAGS+= -DGPU
#LDFLAGS+= -L/usr/local/cuda/lib64 -lcuda -lcudart -lcublas -lcurand
#endif

#Install NVIDIA CUDA Driver from the following line
#https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604&target_type=deblocal
wget https://pjreddie.com/media/files/yolov3-tiny.weights
wget https://pjreddie.com/media/files/yolov3.weights

make
