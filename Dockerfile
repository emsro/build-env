FROM alpine:latest

# Install base
RUN apk add --no-cache python3 git openocd bash

# Install build tools
RUN apk add --no-cache make cmake ccache ninja 

# Install compilers
RUN apk add --no-cache gcc g++ gcc-arm-none-eabi g++-arm-none-eabi clang 

# Install protobuf
RUN apk add --no-cache protobuf protobuf-dev py3-protobuf py3-grpcio py3-setuptools

# Install other dependencies
RUN apk add --no-cache gtest-dev boost-dev nlohmann-json 

# Install packages for CI only
RUN apk add --no-cache openssh rsync 

