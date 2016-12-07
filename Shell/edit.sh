function edsh {
	atom $HOME/Shell
}

function edgm {
	atom $HOME/GitHub/mine/$1
}

function eded {
	edgm "editors/$1"
}

function edem {
	eded "emacs/$1"
}
