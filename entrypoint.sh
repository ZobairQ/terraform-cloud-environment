#!/bin/bash
set -e

mkdir -p ~/terraform-projects && cd ~/terraform-projects

code-server --install-extension equinusocio.vsc-material-theme-icons --install-extension hashicorp.terraform --install-extension equinusocio.vsc-material-theme
code-server --install-extension k--kato.intellij-idea-keybindings
code-server --bind-addr 0.0.0.0:8080

exec "$@"
