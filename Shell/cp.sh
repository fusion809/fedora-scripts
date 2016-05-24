function cpsh {
  cp -a ~/GitHub/fedora-scripts/Shell/* ~/Shell/
  cp -a ~/GitHub/fedora-scripts/.bashrc ~/.bashrc
  sudo cp -a ~/GitHub/fedora-scripts/root/{Shell,.bashrc} /root/
}
