export FEDORA_VERSION=$(cat /etc/fedora-release | cut -d " " -f 3)
export CFE=$HOME/Documents/CodeLite/CPP-Math-Projects/Simple-Pendulum
export CMP=$HOME/Documents/CodeLite/CPP-Math-Projects
export NIX_SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt
export XDG_DATA_DIRS=$HOME/.nix-profile/share:$XDG_DATA_DIRS
export NIX_PATH=nixpkgs=/nix/var/nix/profiles/per-user/fusion809/channels/nixpkgs
