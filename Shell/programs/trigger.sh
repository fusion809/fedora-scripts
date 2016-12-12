function trigger {
  bash <(curl -s https://raw.githubusercontent.com/fusion809/AppImages/master/trigger.sh) "$1"
}

function vimup {
  bash <(curl -s https://raw.githubusercontent.com/fusion809/GVim.AppImage/master/trigger.sh)
}

function codeup {
  bash <(curl -s https://raw.githubusercontent.com/fusion809/Code-OSS.AppImage/master/trigger.sh)
}

function emacsup {
  bash <(curl -s https://raw.githubusercontent.com/fusion809/Emacs.AppImage/master/trigger.sh)
}
