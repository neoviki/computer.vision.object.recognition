VIDEO_FILE=$1

cd src/

################   VIDEO INPUT [ FROM WEBCAM ]    #############

./darknet detector demo cfg/coco.data cfg/yolov2-tiny.cfg weights/yolov2-tiny.weights

#./darknet detector demo cfg/coco.data cfg/yolov2-tiny-voc.cfg weights/yolov2-tiny-voc.weights 

################   VIDEO INPUT [ FROM FILE ]    #############

#./darknet detector demo cfg/coco.data cfg/yolov2-tiny.cfg weights/yolov2-tiny.weights $VIDEO_FILE
