ATOM_INSTALLED_VERSION=$(rpm -qi atom | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

if [[ $ATOM_INSTALLED_VERSION < $ATOM_LATEST_VERSION ]]; then
  sudo dnf install -y https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom.x86_64.rpm
fi
