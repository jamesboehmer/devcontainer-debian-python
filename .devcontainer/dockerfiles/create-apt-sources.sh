#!/bin/bash

ARCH="$(dpkg --print-architecture)";
. /etc/os-release;

# curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > "/etc/apt/trusted.gpg.d/openvpn-repo-pkg-key.gpg";
# curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor > "/etc/apt/trusted.gpg.d/cloud.google.gpg";
# curl -fsSL https://pkgs.tailscale.com/stable/debian/${VERSION_CODENAME}.gpg | gpg -dearmor > "/etc/apt/trusted.gpg.d/tailscale-archive-keyring.gpg"; 
# curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor > "/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg";
# curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg > "/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg";
# curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | gpg --dearmor > "/etc/apt/trusted.gpg.d/apt.llvm.org.gpg";

echo "deb [arch=${ARCH} signed-by=/etc/apt/trusted.gpg.d/openvpn-repo-pkg-key.gpg] https://swupdate.openvpn.net/community/openvpn3/repos ${VERSION_CODENAME} main" > "/etc/apt/sources.list.d/openvpn3.list";
echo "deb [arch=${ARCH} signed-by=/etc/apt/trusted.gpg.d/tailscale-archive-keyring.gpg] https://pkgs.tailscale.com/stable/debian ${VERSION_CODENAME} main" > "/etc/apt/sources.list.d/tailscale.list";
echo "deb [arch=${ARCH} signed-by=/etc/apt/trusted.gpg.d/apt.postgresql.org.gpg] http://apt.postgresql.org/pub/repos/apt ${VERSION_CODENAME}-pgdg main" > "/etc/apt/sources.list.d/pgdg.list";
echo "deb [arch=${ARCH} signed-by=/etc/apt/trusted.gpg.d/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > "/etc/apt/sources.list.d/google-cloud-sdk.list";
echo "deb [arch=${ARCH} signed-by=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" > "/etc/apt/sources.list.d/github-cli.list";
echo "deb [arch=${ARCH} signed-by=/etc/apt/trusted.gpg.d/apt.llvm.org.gpg] http://apt.llvm.org/${VERSION_CODENAME}/ llvm-toolchain-${VERSION_CODENAME}-18 main" > "/etc/apt/sources.list.d/apt.llvm.org.list";
