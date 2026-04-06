#!/bin/sh

echo "Starting Minecraft Server, type=${SERVER_TYPE} version=${SERVER_VERSION}"

case "${SERVER_TYPE}" in
    "paper")
        exec java -jar server.jar nogui
        ;;
    "forge")
        exec java -jar forge-${SERVER_VERSION}-shim.jar nogui
        ;;
    *)
        echo "Unsupported server type ${SERVER_TYPE}"
        ;;
esac
