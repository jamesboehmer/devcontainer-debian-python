#!/bin/bash

apt -y install curl git;

export POETRY_HOME="/opt/poetry";
export POETRY_VERSION="2.0.1";
POETRY_INSTALLER_COMMIT_HASH="329cc8d004808d48a4776e753cf6356702646f22";
POETRY_INSTALLER_SHA256SUM="963d56703976ce9cdc6ff460c44a4f8fbad64c110dc447b86eeabb4a47ec2160";

tmpdir="$(mktemp -d)";
cd "${tmpdir}";

curl -fsSL -O https://raw.githubusercontent.com/python-poetry/install.python-poetry.org/${POETRY_INSTALLER_COMMIT_HASH}/install-poetry.py;
printf "${POETRY_INSTALLER_SHA256SUM}  install-poetry.py" | sha256sum -c -;
python3 ./install-poetry.py;
ln -sf ${POETRY_HOME}/venv/bin/poetry /usr/local/bin/poetry;

