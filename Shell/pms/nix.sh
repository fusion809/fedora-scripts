function nixup {
    nix-channel --update && nix-env --upgrade
}
