function sdiy {
	sudo dnf install -y $@
}

function sdry {
	sudo dnf remove -y $@
}

function update {
	sudo dnf update -y
}

function sds {
	sudo dnf search "$@"
}
