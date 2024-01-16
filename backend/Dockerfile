FROM ghcr.io/steamdeckhomebrew/holo-base:latest

# Installing gstreamer plugins for version 1.20.5, compatible with SteamOS 3.4.10
RUN mkdir /pacman && pacman -Udd --noconfirm --root /pacman --dbpath /var/lib/pacman \
    https://archive.archlinux.org/packages/g/gstreamer-vaapi/gstreamer-vaapi-1.20.5-5-x86_64.pkg.tar.zst \
    https://archive.archlinux.org/packages/g/gst-plugins-bad-libs/gst-plugins-bad-libs-1.20.5-5-x86_64.pkg.tar.zst \
    https://archive.archlinux.org/packages/g/gst-plugins-bad/gst-plugins-bad-1.20.5-5-x86_64.pkg.tar.zst \
    https://archive.archlinux.org/packages/g/gst-plugins-good/gst-plugins-good-1.20.5-5-x86_64.pkg.tar.zst \
    https://archive.archlinux.org/packages/g/gst-plugin-pipewire/gst-plugin-pipewire-1%3A0.3.63-5-x86_64.pkg.tar.zst

RUN cd /pacman/usr/lib/gstreamer-1.0/ && rm libgstneonhttpsrc.so libgstfaad.so libgstcacasink.so libgstaasink.so libgstspandsp.so libgstgme.so libgstteletext.so libgstshout2.so libgstchromaprint.so libgstkate.so libgstwildmidi.so libgstmusepack.so libgstmplex.so libgsttimecode.so libgstavtp.so libgstwebrtc.so libgsttwolame.so libgstmpeg2enc.so libgstopenmpt.so libgstdtsdec.so libgstzbar.so libgstresindvd.so libgstdc1394.so libgstsoundtouch.so libgstmicrodns.so libgstmpg123.so libgstrtmp.so libgstopenexr.so libgstfluidsynthmidi.so libgstsvthevcenc.so libgstwavpack.so libgstde265.so libgstsrtp.so libgstladspa.so libgstdv.so

RUN pacman -Sydd --noconfirm --dbpath /var/lib/pacman python-pip

RUN pip3 install psutil --target=/psutil

ENTRYPOINT [ "/backend/entrypoint.sh" ]
