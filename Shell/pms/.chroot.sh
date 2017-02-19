function zpup {
  sudo chroot /mnt /usr/bin/zypper-fedora
}

alias zypup=zpup

function tumbroot {
  sudo arch-chroot /mnt /usr/bin/su-fusion809
}

function tumbup {
  sudo chroot /mnt /usr/bin/tumbup
}
