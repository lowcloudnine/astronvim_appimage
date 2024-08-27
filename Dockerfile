# Stage 1: build devs && Python3.12
# Use an debian base image
FROM debian:bullseye AS build-deps

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    cmake \
    python3 \
    python3-pip \
    nodejs \
    npm \
    ripgrep \
    xz-utils \
    libtool-bin \
    appimagetool \
    appimagekit \
    fuse \
    software-properties-common \
    && apt-get clean

#
# RUN mkdir -p /AppDir/usr/bin /AppDir/usr/share /AppDir/usr/lib /AppDir/usr/share/nvim/runtime
#
# COPY ./nvim.appimage /AppDir/usr/bin/nvim.appimage
# RUN chmod +x /AppDir/usr/bin/nvim.appimage
# RUN ln -s /AppDir/usr/bin/nvim /AppDir/usr/bin/nvim.appimage 
#
# ENV XDG_CONFIG_HOME="/AppDir/usr/share/config"
# ENV XDG_DATA_HOME="/AppDir/usr/share/local/state"
# ENV XDG_STATE_HOME="/AppDir/usr/share/local/share"
#
#
# # Set up Neovim configuration
# COPY ~/.config/nvim /AppDir/usr/share/config/
#
# # Install Python dependencies
# RUN pip3 install pynvim
#
# # Install Node.js dependencies (like pyright)
# RUN npm install -g pyright
#
#
# # Install Neovim plugins
# RUN nvim --headless +PlugInstall +qall
#
#
#
# RUN wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
# RUN chmod +x appimagetool-x86_64.AppImage
#
#
#
# # Copy AppRun script (used by AppImage)
# COPY AppRun /AppDir/AppRun
# RUN chmod +x /AppDir/AppRun
#
# # Copy the AppImageTool to create the AppImage
# COPY appimagetool-x86_64.AppImage /usr/local/bin/appimagetool
#
# # Build the AppImage
# RUN appimagetool /AppDir /neovim.AppImage
#
