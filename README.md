# macbookpro
This repo contains some configurations for setting up apps on a clean Macbook Pro.

There is an ansible yaml file that will install homebrew, various utilities and apps, and installs my .zshrc and spaceship.toml files.

# Usage
```bash
# install pip
$ curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
$ python get-pip.py --user

# install ansible
$ pip install --user ansible

# run the ansible configuration
$ ansible-playbook -v setup_mbp.yaml
```


# What it sets up
* [1Password](https://1password.com/) - Still my preferred password manager
* [Alfred](https://www.alfredapp.com/) - Great application launcher and text expander
* [BetterTouchTool](https://folivora.ai/) - I like to tweak my OS and this makes it easier
* [exiftool](https://exiftool.org/) - Good for removing exif data
* [Firefox](https://www.mozilla.org/en-US/firefox/) - Still the best browser
* [ImageMagick](https://imagemagick.org/index.php) - Power image editing at the command line
* [Itsycal](https://www.mowglii.com/itsycal/) - Nice little calendar app that replaces the menu clock
* [MacVim](https://macvim-dev.github.io/macvim/) - Sometimes I need a quick text editor
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) - After almost 8 years of use I haven't found a font I like better.
* [tmate](https://tmate.io/) - Allows me to pair up with people in an ssh session
* [Visual Studio Code](https://code.visualstudio.com/) - Sometimes I need an expandable text editor
* [VLC](https://www.videolan.org/vlc/index.html) - Powerful media player
* [wget](https://www.gnu.org/software/wget/) - For when I just want to grab files from a website
* [youtube-dl](https://ytdl-org.github.io/youtube-dl/index.html) - For when I want to grab videos from a website


