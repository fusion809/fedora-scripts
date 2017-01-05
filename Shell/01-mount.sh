# Mount Ubuntu
if ! `grep -qs "/media/ubuntu" /proc/mounts`; then
  sudo mount /dev/sda2 /media/ubuntu
  sudo mount -t proc proc /media/ubuntu/proc
  sudo mount --rbind /dev /media/ubuntu/dev
  sudo mount --make-rslave /media/ubuntu/dev
  sudo mount --rbind /sys /media/ubuntu/sys
  sudo mount --make-rslave /media/ubuntu/sys
  sudo mount --rbind /tmp /media/ubuntu/tmp
  sudo cp -L /etc/resolv.conf /media/ubuntu/etc
else
  printf "/dev/sda2 is mounted on /media/ubuntu\n"
fi


# Mount Arch Linux
if ! `grep -qs "/mnt" /proc/mounts`; then
  sudo mount /dev/sdb1 /mnt
  sudo mount -t proc proc /mnt/proc
  sudo mount --rbind /dev /mnt/dev
  sudo mount --make-rslave /mnt/dev
  sudo mount --rbind /sys /mnt/sys
  sudo mount --make-rslave /mnt/sys
  sudo mount --rbind /tmp /mnt/tmp
  sudo cp -L /etc/resolv.conf /mnt/etc
else
  printf "/dev/sdb1 is mounted on /mnt\n"
fi

# Mount Ubuntu14.04
function ubuntu14.04-mounts {
  sudo mount -t proc proc /var/chroot/ubuntu14.04/proc
  sudo mount --rbind /dev /var/chroot/ubuntu14.04/dev
  sudo mount --make-rslave /var/chroot/ubuntu14.04/dev
  sudo mount --rbind /sys /var/chroot/ubuntu14.04/sys
  sudo mount --make-rslave /var/chroot/ubuntu14.04/sys
  sudo mount --rbind /tmp /var/chroot/ubuntu14.04/tmp
  sudo cp -L /etc/resolv.conf /var/chroot/ubuntu14.04/etc
}
