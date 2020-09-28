# syntax = docker/dockerfile:experimental

FROM tensorflow/tensorflow:1.14.0-gpu-py3

### install to use libxml
RUN apt-get update \
 && apt-get install -y --no-install-recommends libxml2-dev libxslt-dev python3-lxml \
 && rm -rf /var/lib/apt/lists/*

### install dependencies with pip
### update pip
RUN --mount=source=./,target=/tmp \
    pip install --no-cache-dir --quiet --upgrade pip \
 && pip install --no-cache-dir --quiet cython \
 && pip install --no-cache-dir --quiet -r /tmp/requirements.txt

