#!/bin/sh

find */sha256 -type f | sed -e 's#^.*/##' | sort -u > nioc-sha256.txt
find */sha1   -type l | sed -e 's#^.*/##' | sort -u > nioc-sha1.txt
find */md5    -type l | sed -e 's#^.*/##' | sort -u > nioc-md5.txt
