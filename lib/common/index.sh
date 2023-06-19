#!/usr/bin/env bash

## Environment variables
## https://asdf-vm.com/plugins/create.html#environment-variables-overview

## These are set on bin/* scripts
# export KC_ASDF_PLUGIN_ENTRY_PATH
# export KC_ASDF_PLUGIN_ENTRY_NAME
# export KC_ASDF_PLUGIN_PATH
export KC_ASDF_APP_NAME="flux"
export KC_ASDF_APP_DESC="open and extensible continuous delivery solution for Kubernetes."
export KC_ASDF_APP_REPO="https://github.com/fluxcd/flux2"
export KC_ASDF_DOWNLOAD_URL="https://github.com/fluxcd/flux2/releases/download/v{version}/flux_{version}_{os}_{arch}.tar.gz"
export KC_ASDF_DOWNLOAD_NAME="flux_{version}_{os}_{arch}.tar.gz"
export KC_ASDF_CHECKSUM_URL="https://github.com/fluxcd/flux2/releases/download/v{version}/flux_{version}_checksums.txt"
export KC_ASDF_DOWNLOAD_LOC="flux"
export KC_ASDF_ORG="kc-workspace"
export KC_ASDF_NAME="asdf-flux2"
export KC_ASDF_REPO="https://github.com/kc-workspace/asdf-flux2"

# shellcheck source-path=SCRIPTDIR/defaults.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/defaults.sh"
# shellcheck source-path=SCRIPTDIR/internal.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/internal.sh"

export KC_ASDF_OS
KC_ASDF_OS="$(kc_asdf_get_os)"

export KC_ASDF_ARCH
KC_ASDF_ARCH="$(kc_asdf_get_arch)"
