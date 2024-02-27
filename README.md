ioquake3-appimage
-----------------
[![Build status](https://github.com/tx00100xt/ioquake3-appimage/actions/workflows/cibuild.yml/badge.svg)](https://github.com/tx00100xt//ioquake3-appimage/actions/)
[![License: GPL v2](https://img.shields.io/badge/License-GPL_v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/tx00100xt/ioquake3-appimage)](https://github.com/tx00100xt/ioquake3-appimage/releases/tag/1.36_GIT)
[![Github downloads](https://img.shields.io/github/downloads/tx00100xt/ioquake3-appimage/total.svg?logo=github&logoColor=white&style=flat-square&color=E75776)](https://github.com/tx00100xt/ioquake3-appimage/releases/)

<h1 align="center">
  <img src="https://raw.githubusercontent.com/tx00100xt/ioquake3-appimage/main/AppDir/usr/share/icons/hicolor/128x128/apps/quake3.png" alt="AppImage for ioquake3">
  <br/>
</h1>
<p align="center"><b>This is a AppImage for ioquake3</b>

## Why?
AppImage is a format for distributing portable software on Linux without needing superuser permissions to install the application  It tries also to allow Linux distribution-agnostic binary software deployment for application developers, also called Upstream packaging. Released first in 2004 under the name klik, it was continuously developed, then renamed in 2011 to PortableLinuxApps and later in 2013 to AppImage. [wikipedia](https://en.wikipedia.org/wiki/AppImage)

## Upstream
All credits here:  
https://ioquake3.org/  
https://github.com/ioquake/ioq3
## Running
Download the AppImages from the release page! Then, make the AppImage an executable by entering `chmod +x $FILE` in a terminal or by right-clicking the file then selecting "Properties" then "Permissions", and checking the executable checkbox. Then, double-`click the AppImage to run **ioquake3**. To launch Team Arena, use the game menu or enter in the terminal:
```
./ioquake3-1.36_GIT-x86_64.AppImage +set fs_game missionpack
```

## Game data
This package only provides the engine, you need a valid copy of the (proprietary) game data to launch the game.
When you first start the game, you will be asked to place your game data along the following paths:
```
    ~/.q3a/baseq3
```
```
    ~/.q3a/missionpack
```
You can place game data in these paths before starting the game. Then the game will start immediately.

## Verify
All AppImages are signed, including those compiled using GitHub Action.  
You can check the application signature by running the command in the terminal:
```
./ioquake3-1.36_GIT-x86_64.AppImage --appimage-signature
```
Get keyid and verify:  
```
./ioquake3-20240226-1.36_GIT-x86_64.AppImage --appimage-signature | gpg --list-packets | grep keyid

```
```
:signature packet: algo 1, keyid CDC41982C027BAAA
```
```
gpg --recv-keys --keyserver keyserver.ubuntu.com  CDC41982C027BAAA

```

### Build status
|CI|Platform|Compiler|Configurations|Platforms|Status|
|---|---|---|---|---|---|
|GitHub Actions|Ubuntu|GCC|Release|x64|![GitHub Actions Build Status](https://github.com/tx00100xt/ioquake3-appimage/actions/workflows/cibuild.yml/badge.svg)

You can download a the automatically build based on the latest commit.  
To do this, go to the [Actions tab], select the top workflows, and then Artifacts.

License
-------

* ioquake3 is licensed under the GNU GPL v2 (see LICENSE file).

[Actions tab]: https://github.com/tx00100xt//ioquake3-appimage/actions "Download Artifacts"
