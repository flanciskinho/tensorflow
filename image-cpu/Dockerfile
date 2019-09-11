FROM tensorflow/tensorflow:1.14.0-py3

COPY requirements.txt /tmp

### install dependencies with pip
### update pip
RUN pip install --quiet --upgrade pip \
 && pip install --quiet cython \
 && pip install --quiet -r /tmp/requirements.txt \
 && rm /tmp/requirements.txt

