function cda {
    cd $HOME/AUR/$1
}

function cdd {
    cd $HOME/Documents/$1
}

function cdcfe {
    cdd "CodeLite/CPP-Math-Projects/Simple-Pendulum/$1"
}

function cdtx {
    cdd "Text files/$1"
}

function cdm {
    cd $HOME/Music/$1
}

function cdp {
    cd $HOME/Programs/$1
}

function cdpr {
    cdp "rpm/$1"
}

function cdpd {
    cdp "Deb/$1"
}

function cdpa {
    cdp "AppImages/$1"
}

function cdpi {
    cd "$HOME/Pictures/$1"
}

function cdps {
    cdpi "Screenshots/$1"
}

function cdrpm {
    cd $HOME/rpmbuild/$1
}

# cd to SPECS
function cdsp {
    cdrpm "SPECS/$1"
}

function cddo {
    cd $HOME/Downloads/$1
}

function cdobs {
    cd "$HOME/OBS/$1"
}

function cdobsh {
    cdobs "home:fusion809/$1"
}

# cd to Shell
function cdsh {
    cd $HOME/Shell/$1
}

function cdv {
    cd $HOME/Videos/$1
}

function cdvs {
    cdv "SO/$1"
}

function cdvi {
    cd $HOME/"VirtualBox VMs"/ISOs
}

