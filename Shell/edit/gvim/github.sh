function gvfgi {
	pushd $FGI
	gvim
	popd
}

alias gvblog=gvfgi

function gvgm {
	pushd $GHUBM/$1
	gvim
	popd
}

function gvgo {
	pushd $GHUBO/$1
	gvim
	popd
}

function gvoct {
	pushd $SCR/GNU_Octave
	gvim
	popd
}

function gvjs {
	pushd $JS
	gvim
	popd
}

function gvpy {
        pushd $PY
	gvim
	popd
}

function gvzt {
	pushd $SCR/zsh-theme
	gvim
	popd
}
