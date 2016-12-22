function sdiy {
	sudo dnf install -y "$@"
}

function sdry {
	sudo dnf remove -y "$@"
}

function sduy {
	sudo dnf update -y
}

function update {
	sduy
	flatup
	apmup
}

function sds {
	sudo dnf search "$@"
}

function sdbd {
	sudo dnf builddep -y "$@"
}
