function fix-perms-uid {
    sudo find /data -uid 0 -exec chown fusion809:wheel {} +
    sudo find /data -uid 10 -exec chown fusion809:wheel {} +
    sudo find /data -uid 993 -exec chown fusion809:wheel {} +
    sudo find /data -uid 1050 -exec chown fusion809:wheel {} +
}

function fix-perms {
    sudo find /data -exec chown fusion809:wheel {} +
}
