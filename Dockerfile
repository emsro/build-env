FROM alpine:latest

# Install base
RUN apk add --no-cache python3 git openocd bash

# Install build tools
RUN apk add --no-cache make cmake ccache ninja 

# Install compilers
RUN apk add --no-cache gcc gcc-arm-none-eabi clang 

# Install protobuf
RUN apk add --no-cache protobuf

# Install other dependencies
RUN apk add --no-cache gtest gtest-dev boost nlohmann-json 

# Install packages for CI only
RUN apk add --no-cache openssh rsync 

