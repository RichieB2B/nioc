#!/usr/bin/python3

from pathlib import Path
from hashlib import sha1, sha256, md5

def create_file(topdir, name, content):
    path = '{}/{}/{}/{}'.format(topdir,name[:1],name[1:2],name[2:3])
    Path(path).mkdir(parents=True, exist_ok=True)
    fname = '{}/{}'.format(path,name)
    with open(fname, 'wb') as f:
        f.write(b)


print('sha256 | sha1 | md5 | content')
print('------ | ---- | --- | -------')

for i in range(255):
    for j in range(255):
        for k in range(255):
            b = bytearray([i,j,k])
            h1 = sha1()
            h1.update(b)
            h1str = h1.hexdigest()
            create_file('sha1', h1str, b)
            h2 = sha256()
            h2.update(b)
            h2str = h2.hexdigest()
            create_file('sha256', h2str, b)
            h3 = md5()
            h3.update(b)
            h3str = h3.hexdigest()
            create_file('md5', h3str, b)
            print('{} | {} | {} | {}'.format(h2str,h1str,h3str,b.hex()))
