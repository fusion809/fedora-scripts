function distro-func {
    ls -ld /dev/disk/by-label/* | grep -v "sdb1" | grep -v "boot"
}

function distro-count {
    distro-func | wc -l
}

function distro-list {
    distro-func | cut -d '/' -f 5 | cut -d ' ' -f 1 | sed 's/\\x20/ /g'
}

function distro-partition {
    distros=$(distro-list)
    count=$(distro-count)
    partition=$(distro-func | cut -d ' ' -f 11 | cut -d '/' -f 3 | sed 's|sda|/dev/sda|g')
    k=0
    for i in $(seq 1 $count)
    do 
         part=$(echo $partition | head -n $i | tail -n 1)
         distro=$(echo $distros | head -n $i | tail -n 1)
         printf '\e[1;33m%-6s\e[m' "$distro"
         if [[ $i == "1" ]]; then
              # Arch Linux
              printf "              "
         elif [[ $i == "2" ]]; then
              # Debian 9
              printf "                "
         elif [[ $i == "3" ]]; then
              # deepin
              printf "                  "
         elif [[ $i == "4" ]]; then
              # Fedora 27
              printf "               "
         elif [[ $i == "5" ]]; then
              # Gentoo Linux
              printf "            "
         elif [[ $i == "6" ]]; then
              # KDE neon git unstable
              printf "   "
         elif [[ $i == "7" ]]; then
              # Linux Mint 18.3 Cinnamon
              # No printf needed
         elif [[ $i == "8" ]]; then
              # Mageia 6
              printf "                "
         elif [[ $i == "9" ]]; then
              # NixOS 17.09
              printf "             "
         elif [[ $i == "10" ]]; then
              # openSUSE Tumbleweed
              printf "     "
         elif [[ $i == "11" ]]; then
              # PCLinuxOS
              printf "               "
         elif [[ $i == "12" ]]; then
              printf "          "
         elif [[ $i == "13" ]]; then
              printf "              "
         fi
         printf " -> "
         printf '\e[1;31m%-6s\e[m' "$part"
         printf "\n"
    done
}
