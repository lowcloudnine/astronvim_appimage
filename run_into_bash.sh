# stage 1
# docker build --target build-deps -t my-neovim-build-deps .
#
# stage 2
docker build --target build_neovim -t my-neovim-build-deps .

# cp your config folder in the current wokring dir
mkdir -p ./config
cp -r ~/.config/nvim ./config

# run
docker run -it --privileged -v /dev/fuse:/dev/fuse my-neovim-build-deps /bin/bash
