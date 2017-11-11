export GHUB=$HOME/GitHub
export GHUBM=$GHUB/mine

# GHUBO
export GHUBO=$GHUB/others
if ! [[ -d $GHUBO ]]; then
  mkdir -p $GHUBO
fi

# EDT
export EDT=$GHUBM/editors
if ! [[ -d $EDT ]]; then
  mkdir -p $EDT
fi

# SCR
export SCR=$GHUBM/scripts
if ! [[ -d $SCR ]]; then
  mkdir -p $SCR
fi

# PKG
export PKG=$GHUBM/packaging
if ! [[ -d $PKG ]]; then
  mkdir -p $PKG
fi

# WEB
export WEB=$GHUBM/websites
if ! [[ -d $WEB ]]; then
  mkdir -p $WEB
fi

# ATO
export ATO=$GHUBM/atom
if ! [[ -d $ATO ]]; then
  mkdir -p $ATO
fi

# INS
export INS=$GHUBM/installers
if ! [[ -d $INS ]]; then
  mkdir -p $INS
fi

export FS=$SCR/fedora-scripts

# FS
export DS=$SCR/debian-scripts

# JS
export JS=$SCR/JScripts

# PY
export PY=$SCR/python-scripts

# FGI
export FGI=$WEB/fusion809.github.io
