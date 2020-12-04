#!/bin/bash

echo "sha256 | sha1 | md5 | file type"
echo "------ | ---- | --- | ---------"
for f in *; do
  if [ ${f: -3} != ".md" ]; then
	  sha2=$f
	  sha1=$(shasum -a 1 $f | cut -d' ' -f 1)
	  md5=$(md5sum $f | cut -d' ' -f 1)
		file=$(file $f | cut -d' ' -f 2-)
		echo "[$sha2]($f) | [$sha1]($f) | [$md5]($f) | $file"
	fi
done
