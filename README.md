# minecraft-docker

Dockerised Minecraft Forge server for running locally or remote server.

# Requirements

- [Docker engine](https://docs.docker.com/engine/install/) or [Docker desktop](https://docs.docker.com/desktop/)

# Usage

Run start.sh and enter the server type and server version you want to run:

```
bash start.sh 
Enter server type (forge, paper, vanilla): paper
Enter server version: 1.21.1
```

When run locally, you can join the server over localhost via port 25565 (i.e. enter `localhost:25565` as the server IP addr in Minecraft).

To administer commands to the server, run:

```
docker attach mc-server
```

This should bring up an interaction terminal where you can run server commands such as /whitelist and /op to administer your server.

## How to find server version

- Forge: e.g. 1.21.11-61.1.0 https://files.minecraftforge.net/net/minecraftforge/forge/index_1.21.11.html
- Paper: e.g. 1.21.1

## World persistance

The world/ directories are mounted to volumes to enable persistance between containers.

If you want to load a backup of a world, just change the bind mount in docker-compose.yaml to map your backup directory to the /minecraft/world directory inside the container.
