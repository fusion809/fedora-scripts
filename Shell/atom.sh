function apmi {
  apm install "$@" --no-confirm || (printf "Package installation failed" && exit)
}

function apmr {
  apm remove "$@" --no-confirm || (printf "Package removal failed" && exit)
}

function apms {
  apm search "$@"
}
