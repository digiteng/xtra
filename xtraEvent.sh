#!/bin/sh
# wget -q "--no-check-certificate" https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -O - | /bin/sh
sleep 1
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/xtraEvent
rm -rf /usr/lib/enigma2/python/Components/Converter/xtra*
rm -rf /usr/lib/enigma2/python/Components/Renderer/xtra*
sleep 1
if [ -f /tmp/xtraEvent.tar.gz ]; then
	tar -xzf /tmp/xtraEvent.tar.gz -C /
fi
sleep 1
rm -rf /tmp/xtraEvent.tar.gz
sleep 1
init 4
sleep 1
init 3
exit 0
