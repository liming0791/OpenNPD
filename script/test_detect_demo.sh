SH_FILE=$(readlink -f $0)
SH_DIR=$(dirname $SH_FILE)
cd $SH_DIR 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/../lib
../bin/test_detect ../models/frontal_face_detector.bin ../data/sample_images/facedetect_5.jpg
mkdir ../test_results
mv *.jpg ../test_results/
