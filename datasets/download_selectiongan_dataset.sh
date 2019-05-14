FILE=$1

if [[ $FILE != "dayton_ablation" && $FILE != "dayton" && $FILE != "cvusa" && $FILE != "ego2top" ]]; 
	then echo "Available datasets are dayton_ablation, dayton, cvusa, ego2top"
	exit 1
fi


echo "Specified [$FILE]"

URL=http://efrosgans.eecs.berkeley.edu/pix2pix/datasets/$FILE.tar.gz
TAR_FILE=./datasets/$FILE.tar.gz
TARGET_DIR=./datasets/$FILE/
wget -N $URL -O $TAR_FILE
mkdir -p $TARGET_DIR
tar -zxvf $TAR_FILE -C ./datasets/
rm $TAR_FILE