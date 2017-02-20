#!/bin/bash
#
# Copyright � 2015-2016, Akhil Narang "akhilnarang" <akhilnarang.1999@gmail.com>
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#

sudo apt-add-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get clean
sudo apt-get --download-only -y install git-core python gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev \
squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush \
schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev \
gcc-multilib liblz4-* pngquant ncurses-dev texinfo gcc gperf patch libtool \
automake g++ gawk subversion expat libexpat1-dev python-all-dev binutils-static bc libcloog-isl-dev \
libcap-dev autoconf libgmp-dev build-essential gcc-multilib g++-multilib pkg-config libmpc-dev libmpfr-dev lzma* \
liblzma* w3m android-tools-adb maven ncftp figlet
sudo cd /var/cache/apt/archives
sudo zip -r -y dependecies-rom-amd64.zip *
sudo wput dependencies-rom-amd64.zip ftp://"$USER":"$PASSWD"@"$HOST"/