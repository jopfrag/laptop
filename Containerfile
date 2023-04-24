FROM quay.io/fedora-ostree-desktops/silverblue:38

RUN rpm-ostree override remove \
    firefox \
    gnome-software \
    gnome-tour \
    gnome-terminal \
    yelp

RUN rpm-ostree install \
    gnome-system-monitor \
    gnome-tweaks \
    alacritty \
    distrobox \
    zsh

RUN rpm-ostree cleanup -m

RUN ostree container commit
