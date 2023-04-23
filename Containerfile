FROM quay.io/fedora-ostree-desktops/base:38

RUN rpm-ostree install gdm gnome-shell alacritty gnome-tweaks zsh distrobox
RUN ostree container commit
