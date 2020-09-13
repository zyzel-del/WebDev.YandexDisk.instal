# WebDav yandex.disk skript by Vonny
apt-get update
apt-get install davfs2 -y
mkdir /mnt/yandex.disk
echo ====================================================
echo
echo ====================Autorisation====================
echo
echo ====================================================
sleep 3
mount -t davfs https://webdav.yandex.ru /mnt/yandex.disk/
df -h && sleep 3
touch /etc/mi.yandex.disk.sh
echo sleep 60 >> /etc/mi.yandex.disk.sh
echo mount -t davfs https://webdav.yandex.ru /mnt/yandex.disk/ >> /etc/mi.yandex.disk.sh
echo echo mi.yandex.disk OK  >> /etc/mi.yandex.disk.sh
chmod 775 /etc/mi.yandex.disk.sh
echo sh /etc/mi.yandex.disk.sh >> /etc/rc.local
echo exit 0 >> /etc/rc.local
#sh /etc/mi.yandex.disk.sh
mount -t davfs https://webdav.yandex.ru /mnt/yandex.disk/ && df -h
#exit