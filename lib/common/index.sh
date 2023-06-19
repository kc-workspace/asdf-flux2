#!/usr/bin/env bash

## Environment variables
## https://asdf-vm.com/plugins/create.html#environment-variables-overview

# shellcheck source-path=SCRIPTDIR/defaults.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/defaults.sh"
# shellcheck source-path=SCRIPTDIR/internal.sh
source "${KC_ASDF_PLUGIN_PATH:?}/lib/common/internal.sh"

## System information
KC_ASDF_OS="$(kc_asdf_get_os)"
KC_ASDF_ARCH="$(kc_asdf_get_arch)"
## Plugin information
KC_ASDF_ORG="kc-workspace"
KC_ASDF_NAME="asdf-flux2"
KC_ASDF_REPO="https://github.com/kc-workspace/asdf-flux2"
## Application information
KC_ASDF_APP_NAME="flux"
KC_ASDF_APP_DESC="open and extensible continuous delivery solution for Kubernetes."
KC_ASDF_APP_REPO="https://github.com/fluxcd/flux2"
## Download settings
KC_ASDF_DOWNLOAD_URL="https://github.com/fluxcd/flux2/releases/download/v{version}/flux_{version}_{os}_{arch}.tar.gz"
KC_ASDF_DOWNLOAD_NAME="flux_{version}_{os}_{arch}.tar.gz"
KC_ASDF_CHECKSUM_URL="https://github.com/fluxcd/flux2/releases/download/v{version}/flux_{version}_checksums.txt"
KC_ASDF_DOWNLOAD_LOC="flux"

## These are set on bin/* scripts
# export KC_ASDF_PLUGIN_ENTRY_PATH
# export KC_ASDF_PLUGIN_ENTRY_NAME
# export KC_ASDF_PLUGIN_PATH
export KC_ASDF_APP_NAME KC_ASDF_APP_DESC KC_ASDF_APP_REPO
export KC_ASDF_DOWNLOAD_URL KC_ASDF_DOWNLOAD_NAME KC_ASDF_DOWNLOAD_LOC
export KC_ASDF_CHECKSUM_URL
export KC_ASDF_ORG KC_ASDF_NAME KC_ASDF_REPO
export KC_ASDF_OS KC_ASDF_ARCH