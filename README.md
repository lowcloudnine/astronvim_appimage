

# Purpose

I have a machine has restricted access to the Internet. It is really troublesome to copy the plugins and configs to the machine. Here is a method that pack all the configs and plugins into a singel AppImage which later should be able to executed once moved to the machine.

# Prerequisite

1. you should be a Neovim user
2. you have docker installed 
3. you are a macOS user
4. the target machine should have installed git (version > 2.0) ?

# Usage

1. run the `run_into_bash.sh`
2. copy ./output/nvim.AppImage to the target machine (usb or scp).
3. chmod +x nvim.AppImage, and execute the nvim.AppImage in the target machine





