function vfs {
    vim /etc/fstab
}

function vps {
    vim /etc/sddm.conf
}

function vsh {
    pushd $HOME/Shell
    vim
    popd
}
