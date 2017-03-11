# Mac Apps & Scripts To Generate OpenTX Sounds
Mac applications and scripts to produce OpenTx text to speech audio files.

http://RCdiy.ca

info@RCdiy.ca

## Download Instructions
Click on the links to get to the file you want. Click on the file.
- Zip file > Click on Download
- Text based files > Right click Raw > Save As, Download linked file.

## Mac GUI Applications
### Sound Pack Generator.app
  - A Finder window facilitates selecting the OpenTx sound mapping file.
  - Sound files and folders are generated and placed in the same directory as the sound mapping file.
  - A Finder window shows the location of the produced files.
### Text To Wav.app
  - A text entry windows accepts the phrase to be spoken.
  - A sound file is generated and placed in Downloads/RCdiy/.
  - The sound is played.

## Mac Terminal Scripts
### SoundPackGenerator.sh
  - ./SoundPackGenerator.sh opentx-map-file.csv
  - Sound files and folders are generated and placed in the current working directory.
TextToWav.sh
  - ./TextToWav.sh hello.wav "Welcome to open t x."
  - A sound file is generated and placed in the current working directory.
