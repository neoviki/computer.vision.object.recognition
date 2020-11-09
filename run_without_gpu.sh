VIDEO_FILE=$1

cd src/

################   VIDEO INPUT [ FROM WEBCAM ]    #############

#7 Frames per second on i7 CPU
#./darknet detector demo cfg/coco.data cfg/yolov3-tiny_tested_1.cfg weights/yolov3-tiny.weights 


#1.5 Frames per second on i7 CPU [good accuracy]
./darknet detector demo cfg/coco.data cfg/yolov3-tiny_tested_2.cfg weights/yolov3-tiny.weights 

#./darknet detector demo cfg/coco.data cfg/yolov3-tiny.cfg weights/yolov3-tiny.weights 


################   VIDEO INPUT [ FROM FILE ]    #############


#./darknet detector demo cfg/coco.data cfg/yolov3-tiny_tested_2.cfg weights/yolov3-tiny.weights $VIDEO_FILE
