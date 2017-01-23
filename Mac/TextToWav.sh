#!/bin/sh
# License https://www.gnu.org/licenses/gpl-3.0.en.html
# Mac OpenTx Sound File Generator
# SOUNDS
# Place this file in the root of the SD Card copy on your computer
#
# Author: RC diy
# Web: http://RCdiy.ca
#
# Description
# Produces a wav sound file with the filename and spoken text provided.
# After creating the file it is played back for you to hear.
# File names are to be up to 8 characters plus .wav
# Move the file to the appropriate folder
#     Sounds/en/
#     Sounds/en/system
#     Sounds/en/<model_name>
#       <model_name> folder
#         name.wav (When the model is selected this file gets played)
#         SA-down.wav, SA-mid.wav, SA-up.wav asn so on.
#         L1-on.wav, L1-off.wav and so on.
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
VOICE=Tessa
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

FILEOUT=$1.wav
PHRASE=$2

if [ "$2" == "" ]; then
 echo
 echo Usage:
 echo "\t $0 file phrase"
 echo "\t file - Desired file name without extension"
 echo "\t phrase - \"Text to be converted to speech\""
 echo
 echo Example:
 echo "\t $0 test \"this is a test\""
 echo "\t A file test.wav will be created."
 echo
else
 # Create Voice File
 say --file-format=WAVE --data-format=LEI16@32000 -v $VOICE -o $FILEOUT $PHRASE

 afplay $FILEOUT


 # Remove unneeded AIFF voice voice file
 # rm $FILEOUT
fi
