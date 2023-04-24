FROM quay.io/fedora-ostree-desktops/buildroot:38

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
