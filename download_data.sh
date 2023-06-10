#!/usr/bin/bash
DATADIR=/materials/images

mkdir -p $DATADIR
wget -O test.zip https://drive.google.com/file/d/1yKyKgxcnGMIAnA_6Vr2ilbpHMc9COg-v/view?usp=drive_link
wget -O train.zip https://drive.google.com/file/d/107FTosYIeBn5QbynR46YG91nHcJ70whs/view?usp=drive_link
wget -O images_evaluation.zip https://drive.google.com/file/d/107FTosYIeBn5QbynR46YG91nHcJ70whs/view?usp=drive_link
unzip test.zip -d $DATADIR
unzip train.zip -d $DATADIR
unzip dev.zip -d $DATADIR
mv $DATADIR/test/* $DATADIR/
mv $DATADIR/train/* $DATADIR/
mv $DATADIR/dev/* $DATADIR/
rmdir $DATADIR/test
rmdir $DATADIR/train
rmdir $DATADIR/dev
