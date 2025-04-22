# DWM Config That Doesn't Suck 😎

This is my customized build of [dwm](https://dwm.suckless.org/) — the dynamic window manager from suckless.org — with some tweaks and quality-of-life improvements that *actually make it usable*. 🧫✨

---

## ⚙️ Features

- Tiled, monocle, and floating layouts.
- Custom keybindings (see `config.def.h` for complete list).
- Gaps, better colors, and patches included.
- Web app manager used to make YouTube and ChatGPT native apps.
- Lightweight, fast, and minimal.

---

## 🛡️ Dependencies

Make sure you install these first:

```bash
sudo pacman -S base-devel xorg xorg-xinit libx11 libxft libxinerama freetype2 fontconfig webapp-manager
```

> If you're not on Arch, install equivalent packages using your distro's package manager.

---

## 🛠️ Build & Install

```bash
git clone https://github.com/Sahiljangra115/Dwm-dots.git
cd Dwm-dots

# Make changes to config.def.h, not config.h!
# Then run:
sudo cp config.def.h config.h
sudo make clean install
```

> ⚠️ **Always** edit `config.def.h`, then copy to `config.h` before building.

---

## 🚀 Autostart (xinitrc)

Create a `.xinitrc` in your home directory:

```bash
#!/bin/sh
exec dwm
```

Make it executable:

```bash
chmod +x ~/.xinitrc
```

Then start DWM with:

```bash
startx
```

---

## 🔐 Login Shell Setup

Create `.zprofile` or `.bash_profile` to launch `startx` on login:

```bash
# ~/.zprofile or ~/.bash_profile
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
```

---

## 🥉 Extras

### 🛡 WebApp Manager

Used to turn sites like YouTube and ChatGPT into app-like experiences. Can be installed via:

```bash
yay -S webapp-manager  # if you use an AUR helper
```

Then launch it and follow the GUI to set up your apps.

---

## 🔁 Making Changes?

Always edit `config.def.h`!

```bash
sudo cp config.def.h config.h
sudo make clean install
```

Then log out and log back in to apply changes.

---

## 📸 Screenshots

_Include screenshots here later if you want._

---

## 🧠 Credits

Based on [dwm from suckless](https://dwm.suckless.org/), plus some personal touches.

