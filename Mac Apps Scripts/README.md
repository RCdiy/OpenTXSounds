# Mac Apps & Scripts To Generate OpenTX Sounds
Mac applications and scripts to produce OpenTx text to speech audio files.

http://RCdiy.ca

info@RCdiy.ca

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
#### ./SoundPackGenerator.sh en-US-test.csv
- Reads in a file which contains the OpenTx text to speach definitions.
- Produces a wav sound file with the filename and spoken text provided.
- The files are placed in the appropriate folders as defined in the file.

#### ./SoundPackGenerator.sh en-US-test.csv Tessa
- Does the same as above using the Tessa voice.
- When the voice name is not provided a default voice is used.

### TextToWave.sh
- ./TextToWav.sh hello.wav "Welcome to open t x."
- A sound file is generated and placed in the current working directory.

## OpenTx text to speach definitions file format
 directory_path;name.wav;phrase
### Examples
 SOUNDS/en/SYSTEM;0000.wav;0

 SOUNDS/en;fm-thmr.wav;flight mode!, thermal right
### File Names
- SYSTEM folder's file names up to 8 characters plus .wav
- Other file names up to 6 characters plus .wav
