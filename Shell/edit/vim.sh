function vdk {
  vim Dockerfile
}

function vfgi {
  vim $FGI
}

function vsp {
  vim *.spec
}

for i in $HOME/Shell/edit/vim/*.sh
do
  . "$i"
done
