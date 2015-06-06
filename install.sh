#!/bin/bash
set -e

install_path=/usr/local/bin/

# Install slacktee
if [ ! -f /usr/local/bin/slacktee.sh ]; then
  echo 'installing slacktee...'
  git clone https://github.com/course-hero/slacktee.git ~/slacktee
  bash ~/slacktee/install.sh
fi


