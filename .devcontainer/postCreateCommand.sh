#!/bin/bash
sudo git config --system core.editor 'code --wait'
docker compose -f $HOME/environment/docker-compose.yml up -d
