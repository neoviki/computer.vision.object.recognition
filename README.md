### Computer Vision - Object Recognition

This project aims to recognize realworld objects using Convolutional Neural Networks. I used darknet neural network framework system and Microsoft COCO dataset to acheive the results.  


#### Prerequisite

    1. Ubuntu 16.04
    2. Python 3
    3. CUDA 8
    4. OpenCV 3.4
    5. NVIDIA 384
    
#### How to compile darknet framework to run on CPU?
   
     $./build_without_gpu.sh

#### Test Object Detection [ This demo uses laptop's webcam as its input source ] 

     $./run_without_gpu.sh


#### How to compile darknet framework to run on GPU?

    1. Install suitable NVIDIA Driver for your GPU and CUDA ToolKit. 
       For my case it is Nvidia 384 and CUDA 8 [ which can be installed by executing the following script]
            
		$cd ./scripts    
		$./install_nvidia_cuda_ubuntu16.04.sh
        $cd ..

    2. Compile darknet source with gpu
    
   		$./build_with_gpu.sh



#### Test Object Detection [ This demo uses laptop's webcam as its input source ] 
     
	$./run_with_gpu.sh

#### reference
	 
	https://pjreddie.com/darknet/



