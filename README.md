Jack's Ruby development setup

This is the configs of Jack Wu.
This script is tested in Ubuntu, and it requires you have git on you system.

NOTE: iT WILL OVERWRITE YOUR OLD CONFIGS.

### What is included

A install script is included it can help you setup:
- zsh
- vim
- rbenv

```bash
git clone git@github.com:xuwupeng2000/terminology.git && cd terminology && bash ./install.sh

```

### After run the command above you should already have:
- zsh with oh-my-zsh plugins
- vim - fully configured
- rbenv, ruby-build

### to install Ruby language do this:
```bash
rbenv install 2.1.3
rbenv install 1.9.3

```

### to install bundler do this:
Before doing bundle install you need to install bundler
```bash
gem install bundler

```
