if [[ -f /usr/bin/code ]]; then
  VSCODE_INSTALLED_VERSION=$(rpm -qi code | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
else
  VSCODE_INSTALLED_VERSION=""
fi
VSCODE_URL=$(wget -cq http://code.visualstudio.com/updates -O - | grep "rpm-x64" | cut -d '"' -f 8)
VSCODE_LATEST_VERSION=$(echo $VSCODE_URL | cut -d '/' -f 4)

if [[ $VSCODE_INSTALLED_VERSION < $VSCODE_LATEST_VERSION ]]; then
  wget -c $VSCODE_URL -O /tmp/code-${VSCODE_LATEST_VERSION}.x86_64.rpm || sudo dnf install -y /tmp/code-${VSCODE_LATEST_VERSION}.x86_64.rpm
fi
