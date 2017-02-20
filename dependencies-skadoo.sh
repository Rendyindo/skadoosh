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

sudo add-apt-repository ppa:wine/wine-builds
sudo apt-get update
sudo apt-get clean
sudo apt-get --download-only install winehq-devel
cd /var/cache/apt/archives
sudo zip -r -y dependencies-rom-amd64.zip *
sudo wput dependencies-rom-amd64.zip ftp://"$USER":"$PASSWD"@"$HOST"/