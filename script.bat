@echo off
break> wavList.txt
for %%f in (*.wav) do (
    if "%%~xf"==".wav" echo file '%%f'>> wavList.txt
)
ffmpeg -f concat -i wavList.txt -c copy output.wav
ffmpeg -i output.wav -ab 320k output.mp3
del output.wav
del wavList.txt
