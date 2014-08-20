#!/bin/bash
# we download this repos from http://kambing.ui.ac.id/iso/ubuntu-repository/14.04/
# put the downloaded file in a folder.

# asuming all the downloaded file in current folder
# create a temporary folder
TEMP=/tmp/repo/fromiso
for x in {1..15};
	do
		mkdir -p $TEMP$x; 
		echo "Creating $TEMP$x";
	done

# now mount the iso files to the temporary folder
# Beware! by default, ubuntu only has 8 loop devices
# You can add more loop devices by adding "loop max_loop=64"
# to the /etc/modules

for x in {1..15}; 
	do 
		sudo mount -o loop -t iso9660 'ubuntu-14.04-repository-i386-'$x'_contrib.iso' $TEMP$x;
	done
# create a target directory to put your repos
TARGET=/path/to/your/target

mkdir -p $TARGET

# move to $TARGET directory
cd $TARGET

# copy all packages under pool directory to $TARGET
for x in {1..15};
	do 
		rsync -avH --progress $TEMP$x/pool . ;
	
	done
exit 0
# ALL DONE
