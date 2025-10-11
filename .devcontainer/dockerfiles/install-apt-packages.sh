#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get -y install xdg-utils # enables opening URLs automatically in vscode devcontainer
