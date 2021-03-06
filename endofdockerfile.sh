#/bin/bash
export TZ=America/Los_Angeles

G='\033[0;32m'
N='\033[0;37m'
echo -e "${G}Updating apt db..${N}"
apt-get update
echo -e "${G}Installing apt packages..${N}"
apt-get install -y wget cmake build-essential vim htop git xfce4 xfce4-goodies cuda-toolkit-10-0
apt-get install -y scons libx11-dev xorg-dev libglu1-mesa-dev freeglut3-dev libglew1.5 libglew1.5-dev libglu1-mesa libglu1-mesa-dev libgl1-mesa-glx libgl1-mesa-dev
echo -e "${G}Installing VirtualGL..${N}"
wget https://sourceforge.net/projects/virtualgl/files/2.6.4/virtualgl_2.6.4_amd64.deb
dpkg -i virtualgl_2.6.4_amd64.deb
echo -e "${G}Installing fish shell.. ${N}"
apt install -y libncurses5-dev libncursesw5-dev
wget https://github.com/fish-shell/fish-shell/releases/download/3.1.2/fish-3.1.2.tar.gz
tar xvf fish-3.1.2.tar.gz
cd fish-3.1.2
cmake .; make; make install
cd ..
echo -e "${G}Installing TurboVNC..${N}"
wget https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb
dpkg -i turbovnc_2.2.5_amd64.deb
#echo "\nxfce4-session &\n" > ~/.vnc/xstartup.turbovnc

echo -e "${G}Installing Godot engine..${N}"
wget https://downloads.tuxfamily.org/godotengine/3.2.2/Godot_v3.2.2-stable_x11.64.zip
unzip Godot*

echo -e "${G}Configuring VirtualGL server..${N}"
vglserver_config


