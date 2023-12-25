FROM archlinux:latest

# Install base
RUN pacman -Sy python git openocd openssh --noconfirm

# Install build tools
RUN pacman -Sy make cmake ccache ninja --noconfirm

# Install compilers
RUN pacman -Sy gcc arm-none-eabi-gcc arm-none-eabi-newlib clang --noconfirm

# Install protobuf
RUN pacman -Sy protobuf python-protobuf python-setuptools --noconfirm

# Install other dependencies
RUN pacman -Sy gtest boost nlohmann-json --noconfirm

