docker build --target build-deps -t my-neovim-build-deps .
docker run -it --privileged -v /dev/fuse:/dev/fuse my-neovim-build-deps /bin/bash
