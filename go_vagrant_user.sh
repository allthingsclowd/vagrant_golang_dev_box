#!/usr/bin/env bash

# Idempotency hack - if this file exists don't run the rest of the script
if [ -f "$HOME/.vagrant_go_user" ]; then
    exit 0
fi

touch $HOME/.vagrant_go_user
mkdir -p ~/code/go/src
echo "export GOPATH=$HOME/code/go" >> $HOME/.bash_profile
source $HOME/.bash_profile
go env
go get -u github.com/golang/lint/golint
go get $GO_REPOSITORY