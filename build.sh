#!/bin/fish

set label $argv[1]
rm -r /run/media/$USER/$label/\*.cur
pio run -e STM32F429ZG_btt
cp .pio/build/STM32F429ZG_btt/firmware.bin /run/media/$USER/$label/
sync

echo DONE!
