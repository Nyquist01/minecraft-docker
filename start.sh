#! /bin/bash

read -p "Enter server type (forge, paper, vanilla): " SERVER_TYPE
read -p "Enter server version: " SERVER_VERSION

export SERVER_TYPE=$SERVER_TYPE
export SERVER_VERSION=$SERVER_VERSION

docker compose build

docker compose up -d
