ARG IMAGE_ARCH=arm32v7
FROM torizon/$IMAGE_ARCH-debian-wayland-base:buster

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    apt-utils \
    libwayland-dev \  
    && apt-mark hold dash && apt-get -y upgrade && apt-mark unhold dash \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/Crank

COPY --chown=777 Crank /usr/Crank/

CMD /usr/Crank/launch_sbengine.sh /usr/Crank/AddressBook/AddressBook.gapp
