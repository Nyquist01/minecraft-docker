#!/bin/sh
set -e

chown -R mc:mc /minecraft

exec java -jar forge-${SERVER_VERSION}-shim.jar nogui
