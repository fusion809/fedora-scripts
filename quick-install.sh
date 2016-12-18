# Create GitHub directory
if ! [[ -d $HOME/GitHub/mine/scripts ]]; then
  mkdir -p $HOME/GitHub/mine/scripts
fi

export FS="$HOME/GitHub/mine/scripts/fedora-scripts"
export ZSH="$HOME/GitHub/mine/scripts/zsh-theme"
export OH="$HOME/.oh-my-zsh"

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
  cp -a $ZSH/*.zsh-theme $OH/themes/
else
  cd $ZSH
  git pull origin master
  cd -
  cp -a $ZSH/*.zsh-theme $OH/themes/
fi

if ! [[ -d $OH/plugins/zsh-syntax-highlighting ]]; then
  # Get zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $OH/plugins/zsh-syntax-highlighting
fi

if ! [[ -d $OH/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search $OH/plugins/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
