#!/usr/bin/env zsh
# https://typeof.net/Iosevka/customizer
brew install --cask docker
open /Applications/Docker.app
# then start it. Then:
docker run -it -v $PWD:/build avivace/iosevka-build ttf::iosevka-custom
cp dist/iosevka-custom/ttf/*.ttf /Library/Fonts/
rm -r dist
rm package-lock.json
