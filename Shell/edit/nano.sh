if ! [[ -f /usr/bin/nano ]]; then
  sdiy nano
fi

function ngit {
  nano .gitignore
}

function nmf {
  nano Makefile
}

function npk {
  nano package.json
}

function nps {
  sudo nano /etc/sddm.conf
}

function nsp {
  nano *.spec
}

function nsh {
  nano *.sh
}
