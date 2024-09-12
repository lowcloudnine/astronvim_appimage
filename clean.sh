docker rmi $(docker image ls -f "dangling=true" -q)
docker ps -a -q --filter "ancestor=my-neovim-build-test" | xargs -r docker rm -f
docker ps -a -q --filter "ancestor=my-neovim-build-deps" | xargs -r docker rm -f
docker image rm my-neovim-build-test
docker image rm my-neovim-build-deps

