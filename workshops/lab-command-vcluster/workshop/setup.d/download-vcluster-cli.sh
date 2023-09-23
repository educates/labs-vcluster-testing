#!/bin/bash

mkdir ~/bin

curl -L -o ~/bin/vcluster https://github.com/loft-sh/vcluster/releases/download/v0.15.7/vcluster-linux-${PLATFORM_ARCH}

chmod +x ~/bin/vcluster
