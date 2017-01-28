#!/bin/sh
# License https://www.gnu.org/licenses/gpl-3.0.en.html
# Mac OpenTx Sound Pack Generator
# SOUNDS
# Place this file in the root of the SD Card copy on your computer
#
# Author: RC diy
# Web: http://RCdiy.ca
#
# Description
# Reads in a file which contains the OpenTx text to speach definitions.
# Produces a wav sound file with the filename and spoken text provided.
# The files are placed in the appropriate foldrs as provided.
#
# OpenTx text to speach definitions file format
#     directory_path;name.wav;phrase
#     Examples
#       SOUNDS/en/SYSTEM;0000.wav;0
#       SOUNDS/en;fm-thmr.wav;flight mode!, thermal right
# File names are to be up to 8 characters plus .wav
#
# To determine which voices are available
#   Mac System Preferences > Accessibility > Speech > System Voice:
#    OR
#    Terminal > say -v?
#
# To test voices
#   Terminal > say -v Alex
#     Then type in what you want spoken and press Enter
#     To exit press Ctrl + C
#
# To change the voice edit VOICE=Tessa below. E.g. VOICE=Alex
# The voice you use must be of the same langiage as the phrase
# To auto select vocie and language Voice=auto
Voice=$2
#
if [ "$Voice" == "" ] ; then
  Voice=auto
fi
# ------------------------------------------------------------------------------
FileIn=$1
# Usage check
if [ "$FileIn" == "" ] || ! [ -f "$FileIn" ] ; then
 echo
 echo Usage:
 echo "\t $0 file.csv [optional voice]"
 echo "\t\t where file.csv format path;file.wav;phrase"
 echo "\t\t path format */lang/*"
 echo "\t An OpenTx sound pack will be generated in the corresponding language."
 echo Example:
 echo "\t $0 english-taranis.csv"
 echo "\t $0 english-taranis.csv Tessa"
 echo
 exit 1
else
  if [ "$Voice" == "auto" ] ; then
    # Determine langauge
    Language=`head -n 1 $FileIn | cut -d / -f 2 `
    if [ "$Language" == "" ]; then
      echo "$Language Language not found"
      exit 1
    fi
    echo "Language is $Language"
    # Determine voice
    Under="_" #say -v? output has languages in the format en_UK
    Voice=`say -v? | grep "$Language$Under" | head -n 1 | cut -d " " -f1`
    if [ "$Voice" == "" ] ; then
      echo "Voice matching language not found."
      echo "To add voices > System Preferences > Accessibility > Speech"
      echo "\t System Voice > Customize (scroll to bottom)"
      exit 1
    fi
    echo "Voice being used $Voice"
  fi

  awk -F ";" -v Voice=$Voice '{
    FileOut=$1"/"$2
    Phrase=$3

    if(system("test -d " $1) > 0){
      print $1 " Folder(s) created"
      system("mkdir -p " $1)
    }

    system("say -v " Voice " -o " FileOut " --data-format=LEI16@32000  " "\""Phrase"\"")
    print FileOut
  }' $FileIn

fi
