# dockcross-node
Node for dockcross

# Usage
```
docker build -t octoblu/dockcross-node-linux-armv7 linux-armv7
docker run --rm dockcross/linux-armv7 > dockcross-linux-armv7
chmod +x dockcross-linux-armv7
dockcross-linux-armv7 --image octoblu/dockcross-node-linux-armv7 bash -c 'env HOME=/tmp/cache yarn install'
```
