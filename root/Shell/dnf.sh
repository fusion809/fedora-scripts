function diy {
	dnf install -y $@
}

function duy {
	dnf update -y
}

function update {
	dnf update -y --refresh
}

alias duyr=update

function ds {
	dnf search "$@"
}
