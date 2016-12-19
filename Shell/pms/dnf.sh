function sdiy {
	sudo dnf install -y "$@"
}

function sdry {
	sudo dnf remove -y "$@"
}

function update {
	sudo dnf update -y
	flatpak update
	apmup
}

function sds {
	sudo dnf search "$@"
}

function sdbd {
	sudo dnf builddep -y "$@"
}
