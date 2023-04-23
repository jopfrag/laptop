FROM quay.io/fedora-ostree-desktops/silverblue:38

RUN rpm-ostree install alacritty gnome-tweaks zsh distrobox
RUN ostree container commit
