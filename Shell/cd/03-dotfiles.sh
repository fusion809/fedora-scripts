function cdls {
  cd $HOME/.local/share/$1
}

function cdap {
	cdls "applications/$1"
}

function cdld {
	cdls "desktop-directories/$1"
}

function cdli {
  cdls "icons/$1"
}