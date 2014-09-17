#! /bin/bash
# Originally, i create this script for my ombilin repos
# i bought that repos from an online shop, and make it 
# as an offline repo for my workstation.

# either i386 or amd64
arch=amd64

# distribution codename
code=trusty

# create the Packages.gz for every component
# this file is an index for every packages in every component
for c in {main,extras,multiverse,restricted,universe};
do
	# first create the target folder
	echo "Creating directory dists/$code/$c/binary-$arch"; 
	mkdir -p dists/$code/$c/binary-$arch;

	# create package index
	echo "Creating package index for $c in dists/$code/$c/binary-$arch/Packages.gz";
	dpkg-scanpackages pool/$c /dev/null | gzip -9c > dists/$code/$c/binary-$arch/Packages.gz ;
	sleep 3
	echo "All DONE!";
done
exit 0
