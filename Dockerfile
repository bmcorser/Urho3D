FROM ubuntu:16.04
RUN apt update
RUN apt install -y git cmake libiodbc2-dev libdirectfb-dev libasound2-dev libpulse-dev libdbus-1-dev libreadline-dev libxext-dev libaudio-dev libesd0-dev libroar-dev libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev
RUN git clone https://github.com/urho3d/Urho3D.git
WORKDIR Urho3D
RUN ./cmake_generic.sh .
RUN make
