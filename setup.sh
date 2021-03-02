#!/bin/bash

if [[ -z "$GOPATH" ]];then
    wget https://dl.google.com/go/go1.16.linux-amd64.tar.gz
    sudo tar -xvf go1.16.linux-amd64.tar.gz
    sudo mv go /usr/local
    export GOROOT=/usr/local/go
    export GOPATH=$HOME/go
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
    echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
    echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
    echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
    source ~/.bash_profile
    sleep 1
fi

go get -u github.com/tomnomnom/gron
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/meg
go get -u github.com/tomnomnom/gf
go get -u github.com/tomnomnom/unfurl
go get -u github.com/tomnomnom/anew
go get github.com/hakluke/hakrawler
go get -u -v github.com/lc/gau

export GO111MODULE=on

go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get -v github.com/projectdiscovery/httpx/cmd/httpx
go get -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
go get -v github.com/hahwul/dalfox/v2
go get -v github.com/zricethezav/gitleaks/v7
