# minecraft-docker

Dockerised Minecraft Forge server for running locally or remote server.

# Requirements

- [Docker engine](https://docs.docker.com/engine/install/) or [Docker desktop](https://docs.docker.com/desktop/)

# Usage

Start the server:

```
docker compose up -d
```

When run locally, you can join the server over localhost via port 25565 (i.e. enter `localhost:25565` as the server IP addr in Minecraft).

To administer commands to the server, run:

```
docker attach mc-server
```

This should bring up an interaction terminal where you can run server commands such as /whitelist and /op to administer your server.

## Config

server.properties enforces whitelisting.
