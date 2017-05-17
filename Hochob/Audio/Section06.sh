set -x

killall -9 stream2chromecast.py

IAM=`whoami`

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Triki"
        #DEVICE="Eek'"
else
        IPATH="/home/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Triki"
        #DEVICE="Eek'"
fi

./stream2chromecast.py -devicename $DEVICE -setvol 1.0

./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/06IntelGDC.mp3
./stream2chromecast.py -devicename $DEVICE -stop
