function sdiy {
	sudo dnf install -y "$@"
}

function sdiyr {
	sdiy --refresh "$@"
}

function sdry {
	sudo dnf remove -y "$@"
}

function sduy {
	sudo dnf update -y
}

function sduyr {
	sudo dnf update -y --refresh
}

function sds {
	sudo dnf search "$@"
}

function sdbd {
	sudo dnf builddep -y "$@"
}
