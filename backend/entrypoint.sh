#!/bin/sh
set -e

OUTDIR="/backend/out"
LIB_PATH="/pacman/usr/lib"

# clean up out dir
# using :? causes command to fail if the var is null or unset, protecting the root
rm -r "${OUTDIR:?}"/*

# deleting uneeded plugins libs
cd "$LIB_PATH/gstreamer-1.0/" && rm -f libgstneonhttpsrc.so libgstfaad.so libgstcacasink.so libgstaasink.so libgstspandsp.so libgstgme.so libgstteletext.so libgstshout2.so libgstchromaprint.so libgstkate.so libgstwildmidi.so libgstmusepack.so libgstmplex.so libgsttimecode.so libgstavtp.so libgstwebrtc.so libgsttwolame.so libgstmpeg2enc.so libgstopenmpt.so libgstdtsdec.so libgstzbar.so libgstresindvd.so libgstdc1394.so libgstsoundtouch.so libgstmicrodns.so libgstmpg123.so libgstrtmp.so libgstopenexr.so libgstfluidsynthmidi.so libgstsvthevcenc.so libgstwavpack.so libgstde265.so libgstsrtp.so libgstladspa.so libgstdv.so

# copying only the library files in the out folder
cd "$LIB_PATH"
find -L . -type f -name "*.so*" -exec cp --parents {} "$OUTDIR/" \;

# copying psutil
cp -r /psutil "$OUTDIR/"
