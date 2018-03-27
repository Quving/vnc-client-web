#!/bin/bash
echo $REMOTE_SERVER
echo $REMOTE_SERVER_PORT
cd noVNC && \
    bash utils/launch.sh --vnc $REMOTE_SERVER:$REMOTE_SERVER_PORT
