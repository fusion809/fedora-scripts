function update {
	printf '\e[1;34m%-0s\e[m' "Running dnf update..."
	printf "\n"
	sduyr
	printf '\e[1;34m%-0s\e[m' "Updating Flatpaks..."
	printf "\n"
	flatup
	printf '\e[1;34m%-0s\e[m' "Updating Atom packages and themes..."
	printf "\n"
	apmup
	printf '\e[1;34m%-0s\e[m' "Updating Arch Linux packages..."
	printf "\n"
  archup
	printf '\e[1;34m%-0s\e[m' "Updating Ubuntu packages..."
	printf "\n"
	ubuntuup
}
