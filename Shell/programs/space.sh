function datsp {
	df -h /
}

function space {
    sudo btrfs fi show | head -n 3 | grep "devid" | cut -d ' ' -f 9
}
