docker build -t my-neovim-build-test -f test.Dockerfile .

docker container rm neovim-appimage-test

docker run -it --privileged -v /dev/fuse:/dev/fuse --network none --name neovim-appimage-test my-neovim-build-test /bin/bash 
