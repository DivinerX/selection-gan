FILE=$1

if [[ $FILE != "market_data" && $FILE != "fashion_data"]]; 
	then echo "Available datasets are market_data, fashion_data"
	exit 1
fi


echo "Specified [$FILE]"

URL=http://disi.unitn.it/~hao.tang/uploads/datasets/SelectionGAN/$FILE.tar.gz
TAR_FILE=./datasets/$FILE.tar.gz
TARGET_DIR=./datasets/$FILE/
wget -N $URL -O $TAR_FILE
mkdir -p $TARGET_DIR
tar -zxvf $TAR_FILE -C ./datasets/
rm $TAR_FILE