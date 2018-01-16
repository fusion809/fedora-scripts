function nixup {
    if `which nix-channel > /dev/null 2>&1`; then
         nix-channel --update && nix-env --upgrade
    fi
}
