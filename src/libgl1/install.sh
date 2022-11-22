#!/bin/sh
set -e

echo "Activating feature 'libgl1'"

export DEBIAN_FRONTEND=noninteractive

apt-get update \
  && apt-get install -y libgl1 \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*
