CURRENT_DIR=$(pwd)
CURRENT_USER=$(echo $SUDO_USER)
sudo apt install flatpak
sudo mkdir games
cd games

## Open TTD install
wget https://cdn.openttd.org/openttd-releases/14.1/openttd-14.1-linux-generic-amd64.tar.xz
tar xf openttd-14.1-linux-generic-amd64.tar.xz 
cd openttd-14.1-linux-generic-amd64
printf "[Desktop Entry]\nName= OpenTTD\nExec=${CURRENT_DIR}/games/openttd-14.1-linux-generic-amd64/openttd\nTerminal=false\nType=Application" > /home/$CURRENT_USER/Desktop/openttd.desktop
cd "$CURRENT_DIR/games"

## tux racing install
wget https://github.com/supertuxkart/stk-code/releases/download/1.4/SuperTuxKart-1.4-linux-x86_64.tar.xz
tar xf SuperTuxKart-1.4-linux-x86_64.tar.xz
cd SuperTuxKart-1.4-linux-x86_64
printf "[Desktop Entry]\nName=Super Tux Racing\nExec=${CURRENT_DIR}/games/SuperTuxKart-1.4-linux-x86_64/run_game.sh\nTerminal=false\nType=Application" > /home/$CURRENT_USER/Desktop/Tux_Racing.desktop

## install for Battle for Wesnoth
sudo flatpak install flathub org.wesnoth.Wesnoth

## install and build for OpenRA
cd "$CURRENT_DIR/games"
wget https://github.com/OpenRA/OpenRA/releases/download/release-20250330/OpenRA-Red-Alert-x86_64.AppImage
printf "[Desktop Entry]\nName=OpenRA\nExec=${CURRENT_DIR}/games/OpenRA-Red-Alert-x86_64.AppImage\nTerminal=false\nType=Application"  > /home/$CURRENT_USER/Desktop/OpenRA.desktop
sudo chmod +x OpenRA-Red-Alert-x86_64.AppImage
cd "$CURRENT_DIR/games"

## install Freeciv
wget https://files.freeciv.org/packages/appimage/Freeciv-gtk3.22-3.1.5-x86_64.AppImage
chmod +x Freeciv-gtk3.22-3.1.5-x86_64.AppImage
printf "[Desktop Entry]\nName=Freeciv\nExec=${CURRENT_DIR}/games/Freeciv-gtk3.22-3.1.5-x86_64.AppImage\nTerminal=false\nType=Application" > /home/$CURRENT_USER/Desktop/Open_Civ.desktop

## Installing 0 a.d
sudo deb https://deb.debian.org/debian bullseye-backports main
sudo apt update
sudo apt install -t bullseye-backports 0ad

## intall endless sky
wget https://github.com/endless-sky/endless-sky/releases/download/v0.10.12/Endless_Sky-v0.10.12-x86_64.AppImage
printf "[Desktop Entry]\nName=Endless Sky\nExec=${CURRENT_DIR}/games/v0.10.12/Endless_Sky-v0.10.12-x86_64.AppImage\nTerminal=false\nType=Application" > /home/$CURRENT_USER/Desktop/Endless_Sky.desktop
chmod +x Endless_Sky-v0.10.12-x86_64.AppImage

sudo apt remove firefox
sudo snap remove firefox

