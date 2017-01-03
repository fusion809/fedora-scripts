if ! [[ -f /usr/bin/osc ]]; then
  sudo dnf config-manager --add-repo http://download.opensuse.org/repositories/openSUSE:Tools/Fedora_${FEDORA_VERSION}/openSUSE:Tools.repo
  sudo dnf install -y osc obs-service-download_files obs-service-format_spec_file obs-service-source_validator
fi

function ovimup {
  cdobsh $repo
  pkgver=$(wget -q https://github.com/vim/vim/releases -O - | grep "tar\.gz" | head -n 1 | cut -d '/' -f 5 | cut -d '"' -f 1 | sed 's/v//g' | sed 's/\.tar\.gz//g')
  baseversion=$(echo $pkgver | sed 's/\.[0-9]*$//g')
  patchversion=$(echo $pkgver | sed "s/$baseversion//g" | sed 's/\.//g')
  vim_baseversion=$(cat vim.spec | grep "%define baseversion" | sed 's/%define baseversion\s*//g' | head -n 1)
  vim_patchversion=$(cat vim.spec | grep "%define patchlevel" | sed 's/%define patchlevel\s*//g' | head -n 1)
  if [[ $baseversion != $vim_baseversion ]]; then
    sed -i -e "s|$vim_baseversion|$baseversion|g" vim.spec
  fi
  if [[ $patchversion != $vim_patchversion ]]; then
    sed -i -e "s|$vim_patchversion|$patchversion|g" vim.spec
  fi

  if [[ $baseversion != $vim_baseversion ]] || [[ $patchversion != $vim_patchversion ]]; then
    osc ci -m "Bumping version to $pkgver"
  fi
}

function vimup {
  ovimup vim
  ovimup vim-redhat
}
