ARG VARIANT=trixie
FROM mcr.microsoft.com/vscode/devcontainers/python:3-${VARIANT}

COPY dockerfiles/ /
RUN /create-apt-sources.sh

# enables opening URLs automatically in vscode devcontainer
RUN apt-get update && apt-get -y install xdg-utils socat

RUN mkdir -p /run/dbus && \
usermod -s /bin/zsh vscode

USER vscode
