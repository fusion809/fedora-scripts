function trigger {
  bash <(curl -s https://raw.githubusercontent.com/fusion809/AppImages/master/trigger.sh) "$1"
}

function vimup {
  bash <(curl -s https://raw.githubusercontent.com/fusion809/GVim.AppImage/master/trigger.sh)
}
