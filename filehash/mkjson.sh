#!/bin/bash

LIST=list.json

cat <<EOT > $LIST
{
  "description": "Event contains one or more benign files based on known hashes, see https://github.com/RichieB2B/nioc",
  "list": [
EOT

echo -n "    \"$(head -1 nioc-md5.txt)\"" >> $LIST
cat nioc-md5.txt nioc-sha1.txt nioc-sha256.txt | tail -n +2 | while read h; do
  echo ","
  echo -n "    \"$h\""
done >> $LIST

cat <<EOT >> $LIST

  ],
  "matching_attributes": [
    "md5",
    "sha1",
    "sha256",
    "filename|md5",
    "filename|sha1",
    "filename|sha256"
  ],
  "name": "List of known hashes for benign files",
  "type": "string",
  "version": 1
}
EOT
