#/bin/sh

# get linuxdeploy-x86_64.AppImage
wget -nv -c https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
chmod +x linuxdeploy-x86_64.AppImage

# get source code
git clone https://github.com/ioquake/ioq3.git

# add appimage sources
cp -ax Sources/appimage.* AppDir/usr/bin ioq3/code/qcommon

# apply appimage patch and compile
cd ioq3
patch -p1 < ../patches/0002-ioquake3-AppImage.patch
make -j4

# remove temp stuff
cd ..
rm -fr ioq3/build/release-linux-x86_64/{autoupdater,client,ded,renderergl1,renderergl2,tools}
rm -fr ioq3/build/release-linux-x86_64/baseq3/{cgame,game,qcommon,ui,vm}
rm -fr ioq3/build/release-linux-x86_64/missionpack/{cgame,game,qcommon,ui,vm}

# copy files
cp -ax ioq3/build/release-linux-x86_64/* AppDir/usr/bin
cp -ax Img/ioquake3.jpg AppDir/usr/bin

# create appimage
SIGN=1 ./linuxdeploy-x86_64.AppImage --executable AppDir/usr/bin/ioquake3.x86_64 --desktop-file AppDir/usr/share/applications/org.ioquake3.ioquake3.desktop --icon-file AppDir/usr/share/icons/hicolor/128x128/apps/quake3.png --appdir AppDir --output appimage

# rename appimage
mv ioquake3-x86_64.AppImage ioquake3-1.36_GIT-x86_64.AppImage
chmod +x ioquake3-1.36_GIT-x86_64.AppImage
