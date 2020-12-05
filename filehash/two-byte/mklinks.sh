#!/bin/sh

for f in $(find sha256 -type f); do
  s=$(shasum $f | cut -d' ' -f 1)
	i=$(echo $s | cut -b 1)
	j=$(echo $s | cut -b 2)
	mkdir -p sha1/${i}/${j}
	ln -s ../../../$f sha1/${i}/${j}/$s

  s=$(md5sum $f | cut -d' ' -f 1)
	i=$(echo $s | cut -b 1)
	j=$(echo $s | cut -b 2)
	mkdir -p md5/${i}/${j}
	ln -s ../../../$f md5/${i}/${j}/$s
done
