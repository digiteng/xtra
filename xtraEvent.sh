#!/bin/sh
sleep 1
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/xtraEvent
rm -rf /usr/lib/enigma2/python/Components/Converter/xtra*
rm -rf /usr/lib/enigma2/python/Components/Renderer/xtra*
sleep 1
if [ -f /tmp/xtraEvent.tar.gz ]; then
	tar -xzf /tmp/xtraEvent.tar.gz -C /
fi
sleep 1
rm -rf /tmp/AudioPlus.tar.gz
sleep 1
init 4
echo ""
init 3
exit 0
