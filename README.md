# OpenTx Sounds
Mac applications and scripts to produce OpenTx text to speech audio files.
OpenTx sound packs produced using the Mac Tessa voice.

http://RCdiy.ca

info@RCdiy.ca

## GUI Applications
- Sound Pack Generator.app
- Text To Wav.app

## Scripts
- SoundPackGenerator.sh
- Text To Wav.sh

## Mac Text To Speech
Producing text to speech wav files is easy on a Mac.
- say --file-format=WAVE --data-format=LEI16@32000 -v $VOICE -o $FILEOUT $PHRASE
- say --file-format=WAVE --data-format=LEI16@32000 -v Tessa -o tada.wav Welcome

## OpenTx Sound Mapping Files
OpenTx uses a simple semicolon separated file to map out the directory path,
file name and spoken phrase.
- path;name.wav;spoken phrase
- SOUNDS/en;fm-thr.wav;flight mode!, thermal right

## Awk
AWK is a programming language designed for text processing and typically used as a data extraction and reporting tool. It is a standard feature of most Unix-like operating systems.
