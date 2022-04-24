#!/usr/bin/env bash
set -e
set -u

url="https://go-boringcrypto.storage.googleapis.com/go$1.linux-amd64.tar.gz"

wget -q -O go.tgz "$url"

sudo tar -C /usr/local -xzf boring-go.tgz
rm boring-go.tgz

export GOROOT=/usr/local/go
export PATH="$GOROOT/bin:$PATH"

echo "Version of Boring Go installed:"
go version
