FROM quay.io/fedora-ostree-desktops/silverblue:38

RUN rpm-ostree override remove \
    firefox \
    gnome-software \
    gnome-tour \
    gnome-terminal \
    yelp \
    firefox-langpacks \
    gnome-software-rpm-ostree \
    gnome-terminal-nautilus \
    NetworkManager \
    NetworkManager-adsl \
    NetworkManager-bluetooth \
    NetworkManager-cloud-setup \
    NetworkManager-config-connectivity-fedora \
    NetworkManager-config-server \
    NetworkManager-dispatcher-routing-rules \
    NetworkManager-fortisslvpn \
    NetworkManager-fortisslvpn-gnome \
    NetworkManager-initscripts-ifcfg-rh \
    NetworkManager-initscripts-updown \
    NetworkManager-iodine \
    NetworkManager-iodine-gnome \
    NetworkManager-l2tp \
    NetworkManager-l2tp-gnome \
    NetworkManager-libnm \
    NetworkManager-libnm \
    NetworkManager-libnm-devel \
    NetworkManager-libnm-devel \
    NetworkManager-libreswan \
    NetworkManager-libreswan-gnome \
    NetworkManager-openconnect \
    NetworkManager-openconnect-gnome \
    NetworkManager-openvpn \
    NetworkManager-openvpn-gnome \
    NetworkManager-ovs \
    NetworkManager-ppp \
    NetworkManager-pptp \
    NetworkManager-pptp-gnome \
    NetworkManager-ssh \
    NetworkManager-ssh-gnome \
    NetworkManager-sstp \
    NetworkManager-sstp-gnome \
    NetworkManager-strongswan \
    NetworkManager-strongswan-gnome \
    NetworkManager-team \
    NetworkManager-tui \
    NetworkManager-vpnc \
    NetworkManager-vpnc-gnome \
    NetworkManager-wifi \
    NetworkManager-wwan \
    PackageKit \
    gnome-packagekit

RUN rpm-ostree install \
    gdm \
    gnome-shell \
    gnome-system-monitor \
    gnome-tweaks \
    alacritty \
    distrobox \
    zsh \
    iwd \
    wireguard-tools

RUN rpm-ostree cleanup -m

RUN ostree container commit
