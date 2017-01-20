if ! [[ -f /usr/bin/nano ]]; then
  sdiy nano
fi

function nbash {
  nano $HOME/.bashrc
}

function ndc {
  sudo nano /etc/dnf/dnf.conf
}

function nps {
  sudo nano /etc/sddm.conf
}

function ngit {
  nano .gitignore
}

function nmf {
  nano Makefile
}

function npk {
  nano package.json
}

function nsp {
  nano *.spec
}

function nsh {
  nano *.sh
}

function nvim {
  nano $HOME/.vimrc
}

function nzsh {
  nano $HOME/.zshrc
}
