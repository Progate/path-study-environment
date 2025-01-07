#!/bin/bash

if [ -n "$CODESPACES" ]; then
  gh codespace ports visibility 3000:public -c $CODESPACE_NAME
  gh codespace ports visibility 8000:public -c $CODESPACE_NAME
fi
