#!/bin/bash
export SCR="$HOME/GitHub/mine/scripts"
export FS="$SCR/fedora-scripts"
export ZSH="$SCR/zsh-theme"
export OH="$HOME/.oh-my-zsh"
export PLG="$OH/plugins"
export TH="$OH/themes"

# Create GitHub directory
if ! [[ -d $SCR ]]; then
  mkdir -p $SCR
fi

# Get openssh, if not pre-installed and Zsh
sudo dnf install -y git openssh zsh util-linux-user hub

# Clone fedora-scripts repo
if ! [[ -d $FS ]]; then
  git clone https://github.com/fusion809/fedora-scripts $FS
  # Copy across
  cp -a $FS/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $FS/root/{Shell,.bashrc,.zshrc} /root/
elif [[ -d $FS ]]; then
  cd $FS
  git pull origin master
  cd -
  # Copy across
  cp -a $FS/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $FS/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
  cd $HOME/.oh-my-zsh
  git pull origin master
  cd -
fi

if ! [[ -d $ZSH ]]; then
# Get my self-made zsh-themes
  git clone https://github.com/fusion809/zsh-theme $ZSH
  cp -a $ZSH/*.zsh-theme $TH
else
  cd $ZSH
  git pull origin master
  cd -
  cp -a $ZSH/*.zsh-theme $TH
fi

if ! [[ -d $PLG/zsh-syntax-highlighting ]]; then
  # Get zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $PLG/zsh-syntax-highlighting
fi

if ! [[ -d $PLG/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search $PLG/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
