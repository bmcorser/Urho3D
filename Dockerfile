FROM bmcorser/cppbase
RUN apt update
RUN apt install -y libiodbc2-dev libdirectfb-dev libasound2-dev libpulse-dev libdbus-1-dev libreadline-dev libxext-dev libaudio-dev libesd0-dev libroar-dev libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev

WORKDIR /src
ENV URHO3D_VERSION 1.6
RUN git clone https://github.com/bmcorser/Urho3D.git
WORKDIR /src/Urho3D
RUN git checkout $URHO3D_VERSION
# RUN ./cmake_generic.sh .
# RUN make
