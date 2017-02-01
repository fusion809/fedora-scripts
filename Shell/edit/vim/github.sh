function vfgi {
	pushd $FGI
	vim
	popd
}

alias vblog=vfgi

function vgm {
	pushd $GHUBM/$1
	vim
	popd
}

function vgo {
	pushd $GHUBO/$1
	vim
	popd
}

function voct {
	pushd $SCR/GNU_Octave
	vim
	popd
}

function vjs {
	pushd $JS
	vim
	popd
}

function vpy {
        pushd $PY
	vim
	popd
}

function vzt {
	pushd $SCR/zsh-theme
	vim
	popd
}