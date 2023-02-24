#!/bin/bash
# Set download directory
DOWNLOAD_DIR="/var/lib/libvirt/images"

# Create directory if it doesn't exist
sudo mkdir -p $DOWNLOAD_DIR

# Download Rocky Linux 9.1 ISO if it doesn't exist
if [ ! -f $DOWNLOAD_DIR/Rocky-9.1-x86_64-dvd.iso ]; then
  sudo wget -c https://download.rockylinux.org/pub/rocky/9/isos/x86_64/Rocky-9.1-x86_64-dvd.iso -P $DOWNLOAD_DIR
else
  echo "Rocky Linux 9.1 ISO already exists in $DOWNLOAD_DIR, skipping download."
fi

# Download Rocky Linux 8.7 ISO if it doesn't exist
if [ ! -f $DOWNLOAD_DIR/Rocky-8.7-x86_64-dvd1.iso ]; then
  sudo wget -c https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.7-x86_64-dvd1.iso -P $DOWNLOAD_DIR
else
  echo "Rocky Linux 8.7 ISO already exists in $DOWNLOAD_DIR, skipping download."
fi

# Download CentOS 6.10 LiveDVD ISO if it doesn't exist
if [ ! -f $DOWNLOAD_DIR/CentOS-6.10-x86_64-LiveDVD.iso ]; then
  sudo wget -c https://img.cs.montana.edu/linux/centos/6.8/isos/x86_64/CentOS-6.10-x86_64-LiveDVD.iso -P $DOWNLOAD_DIR
else
  echo "CentOS 6.10 LiveDVD ISO already exists in $DOWNLOAD_DIR, skipping download."
fi

# Download CentOS 7 x86_64 Everything ISO if it doesn't exist
if [ ! -f $DOWNLOAD_DIR/CentOS-7-x86_64-Everything-2009.iso ]; then
  sudo wget -c http://centos.mirror.far.fi/7.9.2009/isos/x86_64/CentOS-7-x86_64-Everything-2009.iso -P $DOWNLOAD_DIR
else
  echo "CentOS 7 x86_64 Everything ISO already exists in $DOWNLOAD_DIR, skipping download."
fi
