#!/bin/sh
# wget -q "--no-check-certificate" https://github.com/digiteng/xtra/raw/main/xtraEvent.sh -O - | /bin/sh
sleep 1
wget -q https://github.com/digiteng/xtra/releases/latest/download/xtraEvent.tar.gz -P /tmp
echo "Downloading the latest plugin version..."
sleep 1
#rm -rf /usr/lib/enigma2/python/Plugins/Extensions/xtraEvent
#rm -rf /usr/lib/enigma2/python/Components/Converter/xtra*
#rm -rf /usr/lib/enigma2/python/Components/Renderer/xtra*
#rm -rf /usr/share/enigma2/xtra
echo "old version is removed..."
sleep 1
#if [ -f /tmp/xtraEvent.tar.gz ]; then
#	tar -xzf /tmp/xtraEvent.tar.gz -C /
#fi
#sleep 1
#rm -rf /tmp/xtraEvent.tar.gz
echo "new version installed..."
sleep 1
echo "e2 restarting..."
sleep 1
#killall -9 enigma2
exit 0
