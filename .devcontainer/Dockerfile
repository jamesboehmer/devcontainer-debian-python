ARG VARIANT=bullseye
FROM mcr.microsoft.com/vscode/devcontainers/python:3.10-${VARIANT}

ENV POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_CREATE="false" \
    POETRY_VIRTUALENVS_IN_PROJECT="true"

COPY dockerfiles/ /
RUN apt update && /create-apt-sources.sh
RUN DEBIAN_FRONTEND=noninteractive /install-apt-packages.sh
RUN /install-poetry.sh && ${POETRY_HOME}/venv/bin/pip install poetry-dynamic-versioning

RUN mkdir -p /run/dbus && \
usermod -s /bin/zsh vscode

USER vscode
