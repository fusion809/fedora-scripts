function cdd {
	cd $HOME/Documents/$1
}

function cdcfe {
	cdd "CodeLite/CPP-Math-Projects/Simple-Pendulum/$1"
}

function cdp {
	cd $HOME/Programs/$1
}

function cdrpm {
	cd $HOME/rpmbuild/$1
}

# cd to SPECS
function cdsp {
	cdrpm "SPECS/$1"
}

alias cdobs=cdsp

# cd to Shell
function cdsh {
	cd $HOME/Shell
}

function cdv {
	cd $HOME/Videos
}

function cdvs {
	cd $HOME/Videos/SO
}
