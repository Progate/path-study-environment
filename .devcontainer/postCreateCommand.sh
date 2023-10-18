#!/bin/bash

sudo git config --system core.editor 'code --wait'
cd ./environment && docker-compose up -d
