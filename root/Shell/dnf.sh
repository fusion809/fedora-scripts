function diy {
	dnf install -y $@
}

function update {
	dnf update -y
}

function ds {
	dnf search "$@"
}
