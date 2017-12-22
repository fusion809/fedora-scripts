function groot {
    if ! [[ -f /gentoo/proc/cpuinfo ]]; then
        sudo mount -t proc /proc /gentoo/proc
        sudo mount --rbind /dev /gentoo/dev
        sudo mount --make-rslave /gentoo/dev
        sudo mount --rbind /sys /gentoo/sys
        sudo mount --make-rslave /gentoo/sys
        sudo rm /gentoo/etc/resolv.conf
        sudo cp /etc/resolv.conf /gentoo/etc
        sudo chroot /gentoo /usr/local/bin/md
    fi

    sudo chroot /gentoo /usr/local/bin/su-fusion809
}

function aroot {
    if ! [[ -f /arch/proc/cpuinfo ]]; then
        sudo mount -t proc /proc /arch/proc
        sudo mount --rbind /dev /arch/dev
        sudo mount --make-rslave /arch/dev
        sudo mount --rbind /sys /arch/sys
        sudo mount --make-rslave /arch/sys
        sudo rm /arch/etc/resolv.conf
        sudo cp /etc/resolv.conf /arch/etc
    fi

    if ! [[ -d /arch/data/Documents ]]; then
         sudo mount /dev/sdb1 /arch/data
    fi

    sudo chroot /arch /usr/local/bin/su-fusion809
}

function genroot {
    if [[ -d $1/root/dev ]]; then
         root="$1/root"
    elif [[ -d $1/root00/dev ]]; then
         root="$1/root00"
    else
         root="$1"
    fi

    if ! [[ -f "$root/proc/meminfo" ]]; then
         sudo mount -t proc /proc "$root/proc"
         sudo mount --rbind /dev "$root/dev"
         sudo mount --make-rslave "$root/dev"
         sudo mount --rbind /sys "$root/sys"
         sudo mount --make-rslave "$root/sys"
         sudo rm "$root/etc/resolv.conf"
         sudo cp -L /etc/resolv.conf "$root/etc"
    fi

    if [[ -f $root/usr/local/bin/su-fusion809 ]]; then
         sudo chroot "$root" /usr/local/bin/su-fusion809
    elif [[ -f $root/bin/zsh ]]; then
         sudo chroot "$root" /bin/zsh
    else  
         sudo chroot "$root" /bin/bash
    fi

    if [[ -f $root/usr/bin/dnf ]]; then
         sudo touch "$root/.autorelabel"
    fi
}

function froot {
    if ! [[ -d /fedora-rawhide/root00/boot ]]; then
         sudo mount /dev/sda12 /fedora-rawhide
         sudo mount /dev/sda11 /fedora-rawhide/root00/boot
         sudo mount /dev/sda1 /fedora-rawhide/root00/boot/efi
    fi

    genroot /fedora-rawhide
}

function otroot {
    if ! [[ -d /opensuse/boot ]]; then
         sudo mount /dev/sda13 /opensuse
         sudo mount /dev/sda1 /opensuse/boot/efi
    fi

    genroot /opensuse
}
