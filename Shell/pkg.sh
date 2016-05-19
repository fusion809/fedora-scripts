function update {
	sudo pkg update && sudo pkg upgrade
}

function pkin {
	sudo pkg install -y $@
}

function pkrm {
	sudo pkg remove -y $@
}
