function update {
	sudo dnf update -y
}

function sdiy {
	sudo dnf install -y $@
}
