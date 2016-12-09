function cdg {
	cd $HOME/GitHub/$1
}

function cdgo {
	cd $GHUBO/$1
}

function cdgm {
	cd $GHUBM/$1
}

function cdato {
	cd $ATO
}

function cdsc {
	cd $SCR/$1
}

function cdpk {
	cd $PKG/$1
}

function cdaim {
	cdpk "AppImages/$1"
}

function cdeam {
	cdpk "Emacs.AppImage/$1"
}

function cdgam {
	cdpk "GVim.AppImage/$1"
}

function cded {
	cd $EDT/$1
}

function cdem {
	cded "emacs/$1"
}
