ARG G='\033[0;32m'
ARG N='\033[0;37m'

FROM tensorflow/tensorflow:nightly-gpu-py3 
ENV TZ America/Los_Angeles

RUN echo -e "${G}Updating apt db..${N}"
RUN apt-get update
RUN echo -e "${G}Installing apt packages..${N}"
RUN apt-get install -y wget cmake build-essential vim htop git xfce4 xfce4-goodies cuda-toolkit-10-0
RUN apt-get install -y scons libx11-dev xorg-dev libglu1-mesa-dev freeglut3-dev libglew1.5 libglew1.5-dev libglu1-mesa libglu1-mesa-dev libgl1-mesa-glx libgl1-mesa-dev
RUN echo -e "${G}Installing VirtualGL..${N}"
RUN wget https://sourceforge.net/projects/virtualgl/files/2.6.4/virtualgl_2.6.4_amd64.deb;dpkg -i virtualgl_2.6.4_amd64.deb
RUN echo -e "${G}Installing fish shell.. ${N}"
RUN apt-get install -y libncurses5-dev libncursesw5-dev
RUN wget https://github.com/fish-shell/fish-shell/releases/download/3.1.2/fish-3.1.2.tar.gz
RUN tar xvf fish-3.1.2.tar.gz
RUN cd fish-3.1.2; cmake .; make; make install
RUN echo -e "${G}Installing TurboVNC..${N}"
RUN wget https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb; dpkg -i turbovnc_2.2.5_amd64.deb
RUN echo -e "${G}Installing Godot engine..${N}"
RUN wget https://downloads.tuxfamily.org/godotengine/3.2.2/Godot_v3.2.2-stable_x11.64.zip; unzip Godot*

RUN echo -e "${G}Configuring VirtualGL server..${N}"
#vglserver_config


