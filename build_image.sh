
# stage 1
docker build --target build-deps -t my-neovim-build-deps .

# stage 2
docker build --target build_neovim -t my-neovim-build-deps .
