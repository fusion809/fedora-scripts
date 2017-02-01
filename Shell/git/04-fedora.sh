## Update local fedora-scripts repo

function cps {
	sudo rm -rf $FS/Shell $FS/root/Shell
	mkdir -p $FS/Shell
	chmod +x $HOME/Shell/{*,*/*,*/*/*/*,*/*/*/*/*,*/*/*/*/*/*}.sh
	cp -a $HOME/Shell/* $FS/Shell
	cp -a $HOME/.{bash,zsh}rc $FS/
	sudo cp -a /root/{Shell,.{bash,zsh}rc} $FS/root/
	sudo chmod +x $FS/root/Shell/*.sh
}

## Update fedora-scripts GitHub repo
function shup {
	cps && cdfs && push "$1" && szsh && cd -
}
