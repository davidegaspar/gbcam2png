#!/bin/bash -ex

# works out of the box in codespaces

# install
# make

# upload save to codespaces

export ALBUM=$1

# list
./gbcam2png $ALBUM.sav -l

# extract all
./gbcam2png $ALBUM.sav -b $ALBUM -a

# compress
tar cvzf $ALBUM.tgz $ALBUM*

# cleanup
rm $ALBUM*.png $ALBUM.sav

# download

# extract
# tar xvzf sameboy.tgz