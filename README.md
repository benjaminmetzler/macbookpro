# macbookpro
This repo contains some configurations for setting up apps on a clean Macbook Pro.

There is an ansible yaml file that will install homebrew, various utilities and apps, and installs my .zshrc and spaceship.toml files.

# Usage
```bash

# update pip and install ansible
sudo pip3 install --upgrade pip
sudo pip3 install -Iv ansible

# run the ansible configuration
$ ansible-playbook -v setup_mbp.yaml --ask-become-pass
```
