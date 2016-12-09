function edpk {
  atom $PKG/$1
}

for i in $HOME/Shell/GitHub/mine/packaging/*.sh
do
  . "$i"
done
