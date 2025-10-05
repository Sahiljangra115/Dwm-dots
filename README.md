<!-- README.md for Dwm-dots by Sahiljangra115 -->

<div align="center">
  <img src="screenshots/desktop.png" alt="dwm setup" width="600"/>
  <h1 align="center">✨ Dwm-dots ✨</h1>
  <p align="center">
    <b>A minimal, efficient, and aesthetic window manager configuration for <a href="https://dwm.suckless.org/">dwm</a>.</b>
    <br>
    <sub>Custom colors, smooth startup scripts, and utility tweaks for an elegant Linux experience.</sub>
  </p>
  <br>
  <img src="https://img.shields.io/badge/License-MIT-blue.svg"/>
  <img src="https://img.shields.io/badge/dwm-6.4-blue?logo=linux"/>
  <img src="https://img.shields.io/badge/made%20with-love-red"/>
</div>

---

## ✨ Features

- **dwm:** Dynamic Window Manager with <b>custom color scheme</b>
- **.xinitrc:** Automated startup for essential apps and services
- **Picom:** Compositor for transparency and shadow effects
- **Pywal:** Dynamic color extraction from wallpapers
- **Libinput Gestures:** Smooth touchpad gesture support
- **Redshift:** Eye-friendly color temperature adjustments
- **Slstatus:** Lightweight and customizable status bar

---

## 📦 Dependencies

Install these packages (for Arch Linux):

```sh
sudo pacman -S --needed \
    base-devel xorg xorg-xinit \
    libx11 libxft libxinerama \
    feh picom redshift \
    python-pywal \
    slstatus \
    libinput-gestures
```

---

## ⚙️ Installation

**1. Clone the repo**
```sh
git clone https://github.com/Sahiljangra115/Dwm-dots.git
cd Dwm-dots
```

**2. Build and install dwm**
```sh
cd dwm
sudo make clean install
```

---

## 🚀 Getting Started

Ensure your `~/.xinitrc` includes (already configured here):

```sh
#!/bin/sh

export XDG_CURRENT_DESKTOP=GNOME
eval "$(dbus-launch --sh-syntax)"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/usr/local/bin"

wal -n -i ~/Pictures/arch2.png &
[ -f ~/.Xresources ] && xrdb ~/.Xresources
feh --bg-fill ~/Pictures/shriji\ pics/nice.jpg &

picom --config ~/.config/picom.conf &
slstatus &
redshift &
libinput-gestures &

exec dwm
```

**To start dwm:**
```sh
startx
```

---

## 🎨 Color Scheme

Defined in `config.def.h`:

```c
[SchemeNorm] = { "#c2b280", "#1a1a1a" }, // Spice Sand on Deep Shadow
[SchemeSel]  = { "#fdf6e3", "#004f6e" }, // Pale Sand on Atreides Blue
[SchemeOut]  = { "#000000", "#ff4500" }, // Black on Burning Spice Orange
```

---


## 🛠️ Customization

- **Change fonts** in `config.def.h`:
    ```c
    static const char *fonts[] = { "monospace:size=10" };
    ```
- **Modify colors** in `config.def.h` under `colors[]`
- **Tweak .xinitrc** to your workflow and preferred apps

---

## 💡 Pro Tips

After modifying dwm's configuration, rebuild and install:

```sh
cd dwm
sudo make clean install
```

---

## 🙌 Credits

- [dwm](https://dwm.suckless.org/)
- [picom](https://github.com/yshui/picom)
- [pywal](https://github.com/dylanaraps/pywal)
- [libinput-gestures](https://github.com/bulletmark/libinput-gestures)
- [redshift](http://jonls.dk/redshift/)
- [slstatus](https://tools.suckless.org/slstatus/)

---

<div align="center">
  <b>Enjoy your minimal and beautiful Linux desktop!<br>
  ⭐ Star this repo if you like it!</b>
</div>
