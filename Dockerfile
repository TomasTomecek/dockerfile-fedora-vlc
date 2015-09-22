FROM fedora
RUN rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
RUN dnf install -y vlc gtk2 gtk3 mesa-dri-drivers xorg-x11-server-utils strace
ENV HOME /home/vlc
RUN useradd --create-home --home-dir $HOME vlc \
    && chown -R vlc:vlc $HOME \
    && usermod -a -G audio,video vlc

WORKDIR $HOME
USER vlc

# QT_GRAPHICSSYSTEM {native, raster, opengl}
CMD QT_GRAPHICSSYSTEM=native vlc
