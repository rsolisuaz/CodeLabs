set -x

killall -9 stream2chromecast.py

IAM=`whoami`

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Juum"
        #DEVICE="Eek'"
else
        IPATH="/home/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Juum"
        #DEVICE="Eek'"
fi

eog -sf $IPATH/Images/Corporate* &
mpg123 $IPATH/Audio/01BienvenidaYProtocoloDeSeguridad.mp3
killall -9 eog

#./stream2chromecast.py -devicename $DEVICE -setvol 1.0
#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/Mayas.mp3
#./stream2chromecast.py -devicename $DEVICE -stop

#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/SectionOne01.mp3
#./stream2chromecast.py -devicename $DEVICE -stop
#sleep 10
#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/SectionOne02.mp3
#./stream2chromecast.py -devicename $DEVICE -stop
#sleep 5
#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/SectionOne03.mp3
#./stream2chromecast.py -devicename $DEVICE -stop
#sleep 3
#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/SectionOne04.mp3
#./stream2chromecast.py -devicename $DEVICE -stop
