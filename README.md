#Jack's Ruby Development Setup

###NOTE: IT WILL OVERWRITE YOUR OLD CONFIGS.

This is the configs of Jack Wu.
This script is tested in Ubuntu, and it requires you have git on you system.

### What is included

A install script is included it can help you setup:
- zsh
- vim
- rbenv

```bash
git clone git@github.com:xuwupeng2000/terminology.git
cd terminology && bash ./install.sh

```

### After run the command above you should already have:
- zsh with oh-my-zsh plugins
- vim with configs
- rbenv, ruby-build

### To finish vim configs
- Enter vim
- Enter command mode
- Enter the following command (From Vundle)
```bash
BundleInstall

```

### To install Ruby language do this:
```bash
rbenv install 2.1.3
rbenv install 1.9.3

```

### To install hubflow do this:
```bash
cd ./hubflow
sudo ./install

```
