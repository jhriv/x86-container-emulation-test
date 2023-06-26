# x86 Container Emulation Test

Timing how long it takes to build a basic, default, kernel in an
amd64 emulated architecture on an Apple M2 host

## Setup

`git clone https://github.com/jhriv/x86-container-emulation-test`

## Build the Container

`docker compose build`

## Compile the kernel

`docker compose run kernel`
