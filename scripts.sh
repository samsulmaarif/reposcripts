#! /bin/bash
dpkg-scanpackages pool/main /dev/null | gzip -9c > dists/ombilin/main/binary-i386/Packages.gz ;
dpkg-scanpackages pool/extras /dev/null | gzip -9c > dists/ombilin/extras/binary-i386/Packages.gz ;
dpkg-scanpackages pool/extras-restricted /dev/null | gzip -9c > dists/ombilin/extras-restricted/binary-i386/Packages.gz ;
dpkg-scanpackages pool/restricted /dev/null | gzip -9c > dists/ombilin/restricted/binary-i386/Packages.gz ;
exit 0
