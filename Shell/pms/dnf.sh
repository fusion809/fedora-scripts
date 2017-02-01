function sdiy {
	sudo dnf install -y "$@" --best --allowerasing
}

function sdgiy {
	sudo dnf groupinstall -y "$@"
}

function sdgiyr {
	sdgiy --refresh "$@"
}

function sdgl {
	sudo dnf grouplist
}

function sdiyr {
	sdiy --refresh "$@"
}

function sdry {
	sudo dnf remove -y "$@"
}

function sduy {
	sudo dnf update -y --best --allowerasing
}

function sduyr {
	sudo dnf update -y --refresh --best --allowerasing
}

function sds {
	sudo dnf search "$@"
}

function sdbd {
	sudo dnf builddep -y "$@"
}

function sdbdy {
	sdbd --refresh "$@"
}
