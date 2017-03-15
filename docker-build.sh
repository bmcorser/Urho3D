#!/bin/bash
docker create -v /libs --name libs bmcorser/cppbase:2 /bin/true
docker build -t bmcorser/urho3d:1.6 .
docker run --rm -i --volumes-from libs bmcorser/urho3d:1.6 /bin/bash -c "./cmake_generic.sh .; make; cp -r /src/Urho3D /libs"
