# check for and install hub
if ! [[ -f /usr/bin/hub ]]; then
  sdiy hub
  szsh
fi
