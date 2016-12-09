alias emacs="$HOME/Programs/AppImages/GNU_Emacs-25.1.90.glibc2.15-x86_64.AppImage"

for i in $HOME/Shell/edit/emacs/github/*.sh
do
  . "$i"
done
