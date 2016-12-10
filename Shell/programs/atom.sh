ATOM_INSTALLED_VERSION=$(atom --version | cut -d ':' -f 2 | head -n 1 | sed 's/ //g')
ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

if [[ $ATOM_INSTALLED_VERSION < $ATOM_LATEST_VERSION ]]; then
  sudo dnf install -y https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom.x86_64.rpm
elif [[ $ATOM_INSTALLED_VERSION > $ATOM_LATEST_VERSION ]]; then
  printf "Something is wrong in $HOME/Shell/programs/atom.sh. The version $ATOM_LATEST_VERSION is being calculated to the latest stable Atom release version.\n"
fi
