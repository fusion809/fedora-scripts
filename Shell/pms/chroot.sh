function pacaup {
  sudo chroot /mnt /usr/bin/pacaur-ubuntu
}

function archroot {
  sudo arch-chroot /mnt /usr/bin/su-fusion809
}

function archup {
  sudo chroot /mnt /usr/bin/update-ubuntu
}

function ubuntuup {
  sudo chroot /media/ubuntu /usr/bin/update-fedora
}
