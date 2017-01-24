# OpenTx Sounds
Mac applications and scripts to produce OpenTx text to speech audio files.
OpenTx sound packs produced using the Mac Tessa voice.

http://RCdiy.ca

info@RCdiy.ca

## GUI Applications
- Sound Pack Generator.app
  - A Finder window facilitates selecting the OpenTx sound mapping file.
  - Sound files and folders are generated and placed in the same directory as the sound mapping file.
  - A Finder window shows the location of the produced files.
- Text To Wav.app
  - A text entry windows accepts the phrase to be spoken.
  - A sound file is generated and placed in Downloads/RCdiy/.
  - The sound is played.

## Scripts
- SoundPackGenerator.sh
  - ./SoundPackGenerator.sh opentx-map-file.csv
  - Sound files and folders are generated and placed in the current working directory.
- TextToWav.sh
  - ./TextToWav.sh hello.wav "Welcome to open t x."
  - A sound file is generated and placed in the current working directory.

### Mac Text To Speech
Producing text to speech wav files is easy on a Mac.
- say --file-format=WAVE --data-format=LEI16@32000 -v $VOICE -o $FILEOUT $PHRASE
- say --file-format=WAVE --data-format=LEI16@32000 -v Tessa -o tada.wav Welcome

### OpenTx Sound Mapping Files
OpenTx uses a simple semicolon separated file to map out the directory path, file name and spoken phrase.
- path;name.wav;spoken phrase
- SOUNDS/en;fm-thr.wav;flight mode!, thermal right
- Location:
  - If you have a current stock sound pack look for a .csv file
under SOUNDS.
  - Companion > File > Download > Download Voice
