#!/usr/bin/python3

from pathlib import Path
from hashlib import sha1, sha256, md5

f0 = open('README.md', 'w')
f1 = open('sha1.txt', 'w')
f2 = open('sha256.txt', 'w')
f3 = open('md5.txt', 'w')

print('sha256 | sha1 | md5 | bytes', file=f0)
print('------ | ---- | --- | -----', file=f0)

for i in range(256):
    for j in range(256):
        b = bytearray([i,j])
        h1 = sha1()
        h1.update(b)
        h1str = h1.hexdigest()
        h2 = sha256()
        h2.update(b)
        h2str = h2.hexdigest()
        h3 = md5()
        h3.update(b)
        h3str = h3.hexdigest()
        print('{} | {} | {} | {}'.format(h2str,h1str,h3str,b.hex()), file=f0)
        print(h1str, file=f1)
        print(h2str, file=f2)
        print(h3str, file=f3)

f0.close()
f1.close()
f2.close()
f3.close()
