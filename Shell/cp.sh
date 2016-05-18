function cpsh {
  cp -a $HOME/GitHub/fedora-scripts/Shell/* $HOME/Shell/
  cp -a $HOME/GitHub/fedora-scripts/.bashrc $HOME/.bashrc
  sudo cp -a $HOME/GitHub/fedora-scripts/root/{Shell,.bashrc} /root/
}
