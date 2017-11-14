## Update local fedora-scripts repo

function cps {
        # Everything should be up as symlinks now.
	chmod +x $HOME/Shell/{*,*/*,*/*/*/*,*/*/*/*/*,*/*/*/*/*/*}.sh
	sudo chmod +x $FS/root/Shell/*.sh
}

## Update fedora-scripts GitHub repo
function shup {
	cps && cdfs && push "$1" && szsh && cd -
}
