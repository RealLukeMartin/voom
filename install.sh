#!/bin/bash
set -e

# Clone and install slacktee
if [ ! -f /usr/local/bin/slacktee.sh ]; then
  git clone https://github.com/course-hero/slacktee.git ~/slacktee
  echo 'installing slacktee...'
  bash ~/slacktee/install.sh
fi

# Clone voom
if [[ ! -d ~/.voom ]]; then
    git clone https://github.com/RealLukeMartin/voom.git ~/.voom
fi

# Install voom
if [[ ! -L /usr/local/bin/voom ]]; then
    echo 'installing voom...'
    sudo ln -s ~/.voom/voom /usr/local/bin/voom
fi
