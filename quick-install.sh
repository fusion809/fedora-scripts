# Create GitHub directory
if ! [[ -d $HOME/GitHub ]]; then
  mkdir $HOME/GitHub
fi

# Get openssh, if not pre-installed and Zsh
sudo dnf install -y git openssh zsh

# Clone fedora-scripts repo
if ! [[ -d $HOME/GitHub/fedora-scripts ]] || ! [[ -d $HOME/GitHub/mine/fedora-scripts ]]; then
  git clone https://github.com/fusion809/fedora-scripts $HOME/GitHub/mine/fedora-scripts
  # Copy across
  cp -a $HOME/GitHub/mine/fedora-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/fedora-scripts/root/{Shell,.bashrc,.zshrc} /root/
elif [[ -d $HOME/GitHub/fedora-scripts ]]; then
  cd $HOME/GitHub/fedora-scripts
  git pull origin master
  cd -
  # Copy across
  cp -a $HOME/GitHub/fedora-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/fedora-scripts/root/{Shell,.bashrc,.zshrc} /root/
elif [[ -d $HOME/GitHub/mine/fedora-scripts ]]; then
  cd $HOME/GitHub/mine/fedora-scripts
  git pull origin master
  cd -
  # Copy across
  cp -a $HOME/GitHub/mine/fedora-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/fedora-scripts/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
  cd $HOME/.oh-my-zsh
  git pull origin master
  cd -
fi

if ! [[ -d $HOME/GitHub/{,mine/}zsh-theme ]]; then
# Get my self-made zsh-themes
  git clone https://github.com/fusion809/zsh-theme $HOME/GitHub/mine/zsh-theme
  cp -a $HOME/GitHub/mine/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
else
  cd $HOME/GitHub/{,mine/}zsh-theme
  git pull origin master
  cd -
  cp -a $HOME/GitHub/{,mine/}zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
  # Get zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/plugins/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
