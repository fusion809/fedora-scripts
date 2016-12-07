if ! `grep -qs "/mnt" /proc/mounts`; then
  sudo mount /dev/sdb1 /mnt
else
  printf "/dev/sdb1 is mounted on /mnt"
fi

if ! `grep -qs "/media/ubuntu" /proc/mounts`; then
  sudo mount /dev/sda2 /media/ubuntu
else
  printf "/dev/sda2 is mounted on /media/ubuntu"
fi
