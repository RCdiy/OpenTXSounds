#!/bin/sh
# License https://www.gnu.org/licenses/gpl-3.0.en.html
# Mac OpenTX Sound Pack Generator
# SOUNDS
# Place this file in the root of the SD Card copy on your computer
#
# Author: RC diy
# Web: http://RCdiy.ca
#
# Instructions
#
# Place this file, SoundPackGenerator.sh and SD Card contents zip file
#  in the same folder.
#  Edit this file and update "version="
#  Execute this script

version="2.2V0009"
sdcard="sdcard-horus-"$version
unzip -q $sdcard.zip -d temp
pack=sounds-`echo $sdcard | cut -d - -f 2,3`
mkdir $pack
mv temp/SOUNDS $pack/SOUNDS
cp temp/opentx.sdcard.version $pack/
rm -rf temp
cd $pack
cp */*/*/*.csv .
rm -rf SOUNDS
../SoundPackGenerator.sh de-DE-taranis.csv
../SoundPackGenerator.sh en-US-taranis.csv
../SoundPackGenerator.sh es-ES-taranis.csv
../SoundPackGenerator.sh fr-FR-taranis.csv
../SoundPackGenerator.sh it-IT-taranis.csv
cd ..

sdcard="sdcard-taranis-x7-"$version
unzip -q $sdcard.zip -d temp
pack=sounds-`echo $sdcard | cut -d - -f 2,3`
mkdir $pack
mv temp/SOUNDS $pack/SOUNDS
cp temp/opentx.sdcard.version $pack/
rm -rf temp
cd $pack
cp */*/*/*.csv .
rm -rf SOUNDS
../SoundPackGenerator.sh de-DE-taranis.csv
../SoundPackGenerator.sh en-US-taranis.csv
../SoundPackGenerator.sh es-ES-taranis.csv
../SoundPackGenerator.sh fr-FR-taranis.csv
../SoundPackGenerator.sh it-IT-taranis.csv
cd ..

sdcard="sdcard-taranis-x9-"$version
unzip -q $sdcard.zip -d temp
pack=sounds-`echo $sdcard | cut -d - -f 2,3`
mkdir $pack
mv temp/SOUNDS $pack/SOUNDS
cp temp/opentx.sdcard.version $pack/
rm -rf temp
cd $pack
cp */*/*/*.csv .
rm -rf SOUNDS
../SoundPackGenerator.sh de-DE-taranis.csv
../SoundPackGenerator.sh en-US-taranis.csv
../SoundPackGenerator.sh es-ES-taranis.csv
../SoundPackGenerator.sh fr-FR-taranis.csv
../SoundPackGenerator.sh it-IT-taranis.csv
cd ..
