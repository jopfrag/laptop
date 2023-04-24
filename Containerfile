FROM quay.io/fedora-ostree-desktops/base:38

RUN rpm-ostree install \
    # gdm \
    # gnome-shell \
    gnome-system-monitor \
    gnome-tweaks \
    alacritty \
    distrobox \
    zsh \
    iwd \
    wireguard-tools \
    sway \
    waybar

RUN rm var/lib/gdm/.config/pulse/default.pa

RUN rpm-ostree cleanup -m

RUN ostree container commit
