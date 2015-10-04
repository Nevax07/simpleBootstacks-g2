#!/bin/bash

clear

echo Choose output directories :
echo 1 - MEGA
echo 2 - Google Drive
echo 3 - ./output folder
echo 4 - custom path
read CHOOSE

echo -en '\n'
echo -en '\n'
echo -en '\n'

#Set variable
#Set the source path
GITHUBPATH=/home/nevax/GitHub/simpleBootstacks-g2
#My dir for upload
MEGADIR=/media/nevax/SSHD/MEGA/Android/MOD/simpleBootstacks-g2
DRIVEDIR=/home/nevax/Google\ Drive/Android/MOD/simpleBootstacks-g2
#Set local dir
LOCALDIR="$(pwd)"
#Set output folder, recommanded
OUTPUT=$LOCALDIR/output
#Set temp folder
TEMP=$LOCALDIR/tmp

if [ "$CHOOSE" = 1 ]
  then
  UPLOAD=$MEGADIR
  echo Set MEGA :
fi

if [ "$CHOOSE" = 2 ]
  then
  UPLOAD=$DRIVEDIR
  echo Set Google Drive :
fi

if [ "$CHOOSE" = 3 ]
  then
  UPLOAD=$OUTPUT
  echo Set ./output :
fi

if [ "$CHOOSE" = 4 ]
  then
  echo Set you custom path /your/path/output
  read UPLOAD
  echo Set cutstom path :
fi

echo -en '\n'
echo $UPLOAD
echo -en '\n'
echo -en '\n'

#Clean tmp folder
rm -R $TEMP/d8*
rm -R $TEMP/F*
rm -R $TEMP/*980

VARIANT=d800
VERSION=JB
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d800
VERSION=KK
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d800
VERSION=LP
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d800
VERSION=LP-Loki
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d800
VERSION=LP-Bump
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d801
VERSION=JB
BL=11B
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d801
VERSION=KK
BL=20E
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d801
VERSION=LP
BL=30B
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d801
VERSION=LP-Loki
BL=11B-30B
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d802_5_6
VERSION=JB
BL=10C
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d802_5_6
VERSION=KK
BL=20H
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d802_5_6
VERSION=LP
BL=30F
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d802_5_6
VERSION=LP-Loki
BL=10C-30F
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d802_5_6
VERSION=LP-Bump
BL=20H-30F
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d803
VERSION=JB
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=d803
VERSION=KK
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=F320x
VERSION=JB
BL=11E
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=F320x
VERSION=KK
BL=21W
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=F320x
VERSION=LP
BL=30D
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=F320x
VERSION=LP-Loki
BL=10E-30D
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=F320x
VERSION=LP-Bump
BL=21W-30D
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=ls980
VERSION=JB
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=ls980
VERSION=KK
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=ls980
VERSION=LP
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=ls980
VERSION=LP-Loki
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=ls980
VERSION=LP-Bump
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=vs980
VERSION=JB
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=vs980
VERSION=KK
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=vs980
VERSION=LP
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=vs980
VERSION=LP-Loki
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION

VARIANT=vs980
VERSION=LP-Bump
BL=
echo -----------------------------
echo $VARIANT / $VERSION
echo -----------------------------
#Make directories for VARIANT in tmp
mkdir $TEMP/$VARIANT
mkdir $TEMP/$VARIANT/$VERSION
#Copy META-INF folder to tmp/$varaint
cp -R $LOCALDIR/META-INF $TEMP/$VARIANT/$VERSION
#Copy binaries to TEMP folder
cp $LOCALDIR/bin/$VARIANT/nevax/$VERSION/* $TEMP/$VARIANT/$VERSION

cd $TEMP/$VARIANT/$VERSION
zip -r9 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" *
#Copy tools needed for building
cp $LOCALDIR/tools/SignApk/* $TEMP/$VARIANT/$VERSION
#Sign the zip file and change the name
java -jar signapk.jar testkey.x509.pem testkey.pk8 "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip"
sleep 1
#Create md5 on Uploader folder
md5sum "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-unsigned.zip" > "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5"
# Move to output/upload dir
mkdir $UPLOAD/$VARIANT
mkdir $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip" $UPLOAD/$VARIANT/$VERSION
cp "simpleBootstacks-$VARIANT-nevax-$VERSION-$BL-signed.zip.md5" $UPLOAD/$VARIANT/$VERSION
