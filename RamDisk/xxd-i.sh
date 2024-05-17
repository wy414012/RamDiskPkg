#!/bin/bash

# FAIL: cat EFI-1_44MB.img | xxd -i > diskimage-1_44MB.h # fails because cat of a binary file drops some bytes.
# xxd -i EFI-1_44MB.img > diskimage-1_44MB.h
# xxd -i EFI-2_88MB.img > diskimage-2_88MB.h
# xxd -i EFI-16MB.img  > diskimage-16MB.h
# xxd -i EFI-512MB.img  > diskimage-512MB.h
xxd -i diskimage.img > diskimage.h

exit
