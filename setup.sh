#!/bin/bash

if ! [ -x "$(command -v go)" ]; then
       wget https://golang.org/dl/go1.16.2.linux-amd64.tar.gz
       sudo tar -C /usr/local -xzf go1.16.2.linux-amd64.tar.gz 
       mkdir -p "${HOME}/go"
       export GOROOT=/usr/local/go/
       export GOPATH=$HOME/go
       export PATH=$GOPATH/bin:$GOROOT/bin:$PATH    
       echo "export GOROOT=/usr/local/go/" >> ${HOME}/.bashrc
       echo "export GOPATH=\$HOME/go" >> ${HOME}/.bashrc
       echo "export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH" >> ${HOME}/.bashrc
       source ${HOME}/.bashrc
       sleep 1  
fi

go get -u -v github.com/tomnomnom/gron
go get -u -v github.com/tomnomnom/httprobe
go get -u -v github.com/tomnomnom/assetfinder
go get -u -v github.com/tomnomnom/meg
go get -u -v github.com/tomnomnom/gf
go get -u -v github.com/tomnomnom/unfurl
go get -u -v github.com/tomnomnom/anew
go get -u -v github.com/hakluke/hakrawler
go get -u -v github.com/lc/gau

export GO111MODULE=on

go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
go get -u -v github.com/projectdiscovery/chaos-client/cmd/chaos
go get -u -v github.com/hahwul/dalfox/v2
go get -u -v github.com/zricethezav/gitleaks/v7
go get -u -v github.com/projectdiscovery/notify/cmd/notify
go get -u -v github.com/projectdiscovery/notify/cmd/intercept

echo "Script execution finished"
