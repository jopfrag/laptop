FROM quay.io/fedora-ostree-desktops/base:rawhide

RUN rpm-ostree install \
  ModemManager \
  NetworkManager-adsl \
  NetworkManager-openconnect-gnome \
  NetworkManager-openvpn-gnome \
  NetworkManager-ppp \
  NetworkManager-pptp-gnome \
  NetworkManager-ssh-gnome \
  NetworkManager-vpnc-gnome \
  NetworkManager-wwan \
  adobe-source-code-pro-fonts \
  at-spi2-atk \
  at-spi2-core \
  avahi \
  dconf \
  fprintd-pam \
  gdm \
  glib-networking \
  gnome-backgrounds \
  gnome-bluetooth \
  gnome-browser-connector \
  gnome-classic-session \
  gnome-color-manager \
  gnome-control-center \
  gnome-disk-utility \
  gnome-initial-setup \
  gnome-remote-desktop \
  gnome-session-wayland-session \
  gnome-session-xsession \
  gnome-settings-daemon \
  gnome-shell \
  gnome-software \
  gnome-system-monitor \
  gnome-terminal \
  gnome-terminal-nautilus \
  gnome-user-docs \
  gnome-user-share \
  gvfs-afc \
  gvfs-afp \
  gvfs-archive \
  gvfs-fuse \
  gvfs-goa \
  gvfs-gphoto2 \
  gvfs-mtp \
  gvfs-smb \
  libproxy-duktape \
  librsvg2 \
  libsane-hpaio \
  mesa-dri-drivers \
  mesa-libEGL \
  nautilus \
  orca \
  polkit \
  rygel \
  systemd-oomd-defaults \
  tracker \
  tracker-miners \
  xdg-desktop-portal \
  xdg-desktop-portal-gnome \
  xdg-desktop-portal-gtk \
  xdg-user-dirs-gtk \
  yelp

RUN rpm-ostree install \
  fedora-release-silverblue \
  desktop-backgrounds-gnome \
  gnome-shell-extension-background-logo \
  pinentry-gnome3 \
  qgnomeplatform-qt5 \
  evince-thumbnailer \
  evince-previewer \
  totem-video-thumbnailer

RUN rm var/lib/gdm/.config/pulse/default.pa

RUN rpm-ostree cleanup -m

RUN ostree container commit
