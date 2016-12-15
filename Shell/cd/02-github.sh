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
	cd $ATO/$1
}

alias cdga=cdato

function cdsc {
	cd $SCR/$1
}

function cdwb {
	cd $WEB/$1
}

function cdins {
	cdgm "installers/$1"
}

function cdvsi {
	cdins "vscode-installer/$1"
}

function cdfgi {
	cdwb "fusion809.github.io/$1"
}

alias cdblog=cdfgi

function cdgn {
	cdsc "GNU_Octave/$1"
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

function cdpy {
	cdsc "python-scripts/$1"
}

function cdjs {
	cdsc "JScripts/$1"
}

function cded {
	cd $EDT/$1
}

function cdem {
	cded "emacs/$1"
}
