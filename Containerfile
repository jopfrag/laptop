FROM quay.io/fedora-ostree-desktops/base:38

RUN rpm-ostree install \
    gdm \
    gnome-shell

RUN rpm-ostree install \
    gnome-online-accounts \
    gnome-software \
    gnome-system-monitor \
    gnome-tweaks

RUN rpm-ostree install \
    mousetweaks \
    xdg-user-dirs-gtk

RUN rpm-ostree install \
    NetworkManager \
    NetworkManager-openvpn-gnome \
    NetworkManager-wifi \
    wireguard-tools

RUN rpm-ostree install \
    alacritty \
    distrobox \
    zsh

RUN rpm-ostree install \
    xorg-x11-drv-amdgpu \
    amd-gpu-firmware \
    wayland-utils

RUN rpm-ostree override remove \
    nm-connection-editor \
    gnome-tour

RUN rm var/lib/gdm/.config/pulse/default.pa

RUN rpm-ostree cleanup -m

RUN ostree container commit
