# Mount Tumbleweed
if ! `grep -qs "/mnt" /proc/mounts`; then
  sudo mount /dev/sda3 /mnt
  sudo mount -t proc proc /mnt/proc
  sudo mount --rbind /dev /mnt/dev
  sudo mount --make-rslave /mnt/dev
  sudo mount --rbind /sys /mnt/sys
  sudo mount --make-rslave /mnt/sys
  sudo mount --rbind /tmp /mnt/tmp
  sudo cp -L /etc/resolv.conf /mnt/etc
else
  printf "/dev/sda3 is mounted on /mnt\n"
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
