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
