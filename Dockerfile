FROM python:2.7.18-buster 

# based on: https://stackoverflow.com/questions/36862589/install-opencv-in-a-docker-container
MAINTAINER Carlos Alberto Pereira Gomes <carlos@apgomes.com>

RUN mkdir -p /usr/src/app 
WORKDIR /usr/src/app 

# Various Python and C/build deps
RUN apt-get update && apt-get install -y \ 
    wget \
    build-essential \ 
    cmake \ 
    git \
    unzip \ 
    pkg-config \
    python-dev \ 
    libjpeg-dev \ 
    libpng-dev \ 
    libtiff-dev \ 
    libgtk2.0-dev \ 
    python-numpy \ 
    python-pycurl \ 
    libatlas-base-dev \
    gfortran \
    webp \ 
    libvtk6-dev \ 
    zlib1g-dev \ 
    libboost-all-dev \
    libboost-python-dev


COPY packages.txt /usr/src/app/
RUN pip install --no-cache-dir -r packages.txt

COPY . /usr/src/app 
