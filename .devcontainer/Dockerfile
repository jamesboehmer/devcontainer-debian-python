ARG VARIANT=bullseye
FROM mcr.microsoft.com/vscode/devcontainers/python:3.12-${VARIANT}

COPY dockerfiles/ /
RUN apt-get update && /create-apt-sources.sh
RUN DEBIAN_FRONTEND=noninteractive /install-apt-packages.sh
RUN pipx install poetry && poetry self add poetry-dynamic-versioning

RUN mkdir -p /run/dbus && \
usermod -s /bin/zsh vscode

USER vscode
