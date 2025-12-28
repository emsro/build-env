FROM ghcr.io/emsro/build-env:latest

# Install packages for CI only
RUN apk add --no-cache openssh rsync 

RUN apk add --no-cache automake autoconf libtool

RUN git clone https://github.com/STMicroelectronics/OpenOCD/ 

WORKDIR OpenOCD

RUN ./bootstrap
RUN ./configure --disable-werror
RUN make
RUN make install

WORKDIR /


