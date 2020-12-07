#!/bin/sh

(find */sha256 -type f -o -type l | sed -e 's#^.*/##'; cat */sha256.txt) | sort -u > nioc-sha256.txt
(find */sha1   -type f -o -type l | sed -e 's#^.*/##'; cat */sha1.txt  ) | sort -u > nioc-sha1.txt
(find */md5    -type f -o -type l | sed -e 's#^.*/##'; cat */md5.txt   ) | sort -u > nioc-md5.txt
