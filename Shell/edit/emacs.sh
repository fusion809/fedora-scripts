if ! [[ -f /usr/local/bin/emacs ]]; then
  FILENAME=$(curl -sL https://dl.bintray.com/fusion809/AppImages/ | grep "GNU_Emacs" | grep "\.AppImage<" | cut -d '"' -f 4 | cut -d ':' -f 2 | head -n 1)
  VERSION=$(echo $FILENAME | cut -d '-' -f 2)
  if ! [[ -f $HOME/Programs/AppImages/$FILENAME ]]; then
    printf "Creating $HOME/Programs/AppImages directory...\n"
    if ! [[ -d $HOME/Programs/AppImages ]]; then
      mkdir -p $HOME/Programs/AppImages
    fi
    printf "Downloading GNU Emacs $VERSION AppImage to $HOME\n"
    curl -L "https://dl.bintray.com/fusion809/AppImages/$FILENAME" > $HOME/Programs/AppImages/$FILENAME
  fi
  cat > emacs <<\EOF
  #!/bin/sh
  VERSION=$(ls /home/fusion809/Programs/AppImages | grep "Emacs" | cut -d "-" -f 2)
  "/home/fusion809/Programs/AppImages/GNU_Emacs-$VERSION-x86_64.AppImage" "$@"
EOF
sudo cp emacs /usr/local/bin
cat > $HOME/.local/share/applications/appimagekit-emacs.desktop <<\EOF
[Desktop Entry]
Name=GNU Emacs
GenericName=Text Editor
Comment=Edit text
MimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;
Exec="/home/fusion809/Programs/AppImages/GNU_Emacs-$VERSION-x86_64.AppImage" %U
Icon=emacs
Type=Application
Terminal=false
Categories=Development;TextEditor;
StartupWMClass=Emacs
Keywords=Text;Editor;
X-Desktop-File-Install-Version=0.23
TryExec=/home/fusion809/Programs/AppImages/GNU_Emacs-$VERSION-x86_64.AppImage
EOF
fi

for i in $HOME/Shell/edit/emacs/*.sh
do
  . "$i"
done
