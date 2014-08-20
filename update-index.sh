#! /bin/bash
# Originally, i create this script for my ombilin repos
# i bought that repos from an online shop, and make it 
# as an offline repo for my workstation.

# first create the target folder
mkdir -p dists/trusty/{main,extras,multiverse,restricted,universe}/binary-i386;

# create the Packages.gz for every component
# this file is an index for every packages in every component
dpkg-scanpackages pool/main /dev/null | gzip -9c > dists/trusty/main/binary-i386/Packages.gz ;
dpkg-scanpackages pool/extras /dev/null | gzip -9c > dists/trusty/extras/binary-i386/Packages.gz ;
dpkg-scanpackages pool/multiverse /dev/null | gzip -9c > dists/trusty/multiverse/binary-i386/Packages.gz ;
dpkg-scanpackages pool/restricted /dev/null | gzip -9c > dists/trusty/restricted/binary-i386/Packages.gz ;
dpkg-scanpackages pool/universe /dev/null | gzip -9c > dists/trusty/universe/binary-i386/Packages.gz ;
exit 0
