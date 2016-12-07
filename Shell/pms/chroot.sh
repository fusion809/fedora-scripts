function pacaup {
  sudo chroot /mnt /usr/bin/pacaur-ubuntu
}

function archroot {
  sudo mount /dev/sdb1 /mnt && sudo arch-chroot /mnt /usr/bin/su-fusion809
}

function archup {
  sudo chroot /mnt /usr/bin/update-ubuntu
}
