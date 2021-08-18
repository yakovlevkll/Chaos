# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.191.0/containers/python-3/.devcontainer/base.Dockerfile

FROM ubuntu:20.04

MAINTAINER jozo <hi@jozo.io>

ENV DEBIAN_FRONTEND=noninteractive

# Add user
RUN adduser --quiet --disabled-password qtuser && usermod -a -G audio qtuser

# This fix: libGL error: No matching fbConfigs or visuals found
ENV LIBGL_ALWAYS_INDIRECT=1

# Install Python 3, PyQt5
RUN apt-get update && apt-get install -y python3-pyqt5 python3-venv python3-pip

WORKDIR /app

# [Choice] Python version: 3, 3.9, 3.8, 3.7, 3.6
# ARG VARIANT="3.9"
# FROM mcr.microsoft.com/vscode/devcontainers/python:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends curl ffmpeg libsm6 libxext6

# Poetry package manager
# USER vscode
# ARG INSTALL_POETRY="true"
# ARG POETRY_VERSION="1.1.6"
# RUN if [ "${INSTALL_POETRY}" = "true" ]; then curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version ${POETRY_VERSION}; fi
# ENV PATH "/home/vscode/.poetry/bin:$PATH"

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1