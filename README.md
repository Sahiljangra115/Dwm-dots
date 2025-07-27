A minimal, efficient, and aesthetic window manager configuration built on dwm with custom colors, startup scripts, and utilities for a smooth experience.
✨ Features

    dwm: Dynamic Window Manager with custom color scheme.

    .xinitrc: Automated startup for essential apps and services.

    Picom: Compositor for transparency and shadows.

    Pywal: Dynamic colors from wallpapers.

    Libinput Gestures: Smooth touchpad gestures.

    Redshift: Eye-friendly color temperature adjustments.

    Slstatus: Lightweight status bar.

📦 Dependencies

Install these packages on Arch Linux:

sudo pacman -S --needed \
    base-devel xorg xorg-xinit \
    libx11 libxft libxinerama \
    feh picom redshift \
    python-pywal \
    slstatus \
    libinput-gestures

⚙️ Installation Steps

Clone your dotfiles repo and build dwm:

# 1. Clone your repo
git clone https://github.com/YOUR-USERNAME/dotfiles.git
cd dotfiles

# 2. Build dwm
cd dwm
sudo make clean install

🚀 Starting dwm

Add this to ~/.xinitrc (already configured in your setup):

#!/bin/sh

# Desktop environment compatibility
export XDG_CURRENT_DESKTOP=GNOME
eval "$(dbus-launch --sh-syntax)"

# Paths
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/usr/local/bin"

# Colors & Wallpaper
wal -n -i ~/Pictures/arch2.png &
[ -f ~/.Xresources ] && xrdb ~/.Xresources
feh --bg-fill ~/Pictures/shriji\ pics/nice.jpg &

# Compositor & status bar
picom --config ~/.config/picom.conf &
slstatus &
redshift &
libinput-gestures &

# Launch dwm
exec dwm

To start X and load dwm:

startx

🎨 Color Scheme

Defined in config.def.h:

[SchemeNorm] = { "#c2b280", "#1a1a1a" }, // Spice Sand on Deep Shadow
[SchemeSel]  = { "#fdf6e3", "#004f6e" }, // Pale Sand on Atreides Blue
[SchemeOut]  = { "#000000", "#ff4500" }, // Black on Burning Spice Orange

🖼 Screenshots

(Add your rice screenshots here)
Example:

![dwm setup](screenshots/desktop.png)

🛠 Customization

    Change fonts in config.def.h:

    static const char *fonts[] = { "monospace:size=10" };

    Modify colors in config.def.h under colors[].

💡 Pro Tip

To rebuild dwm after config changes:

    cd dwm
    sudo make clean install

