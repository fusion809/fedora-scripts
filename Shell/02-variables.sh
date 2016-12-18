export PATH=/bin:/sbin:/usr/bin:/usr/lib64/ccache:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/games
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

# FS
export FS=$SCR/fedora-scripts
if ! [[ -d $FS ]]; then
  git clone https://github.com/fusion809/fedora-scripts $FS
fi

# FGI
export FGI=$WEB/fusion809.github.io
if ! [[ -d $FGI ]]; then
  git clone https://github.com/fusion809/fusion809.github.io $FGI
fi
