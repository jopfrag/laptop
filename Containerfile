FROM quay.io/fedora-ostree-desktops/base:rawhide

# RUN rpm-ostree override remove \
#     firefox \
#     gnome-software \
#     gnome-tour \
#     gnome-terminal \
#     yelp \
#     firefox-langpacks \
#     gnome-software-rpm-ostree \
#     gnome-terminal-nautilus

RUN rpm-ostree install \
    gdm \
    gnome-shell \
    gnome-system-monitor \
    gnome-tweaks \
    alacritty \
    distrobox \
    zsh

RUN rpm-ostree cleanup -m

RUN ostree container commit
