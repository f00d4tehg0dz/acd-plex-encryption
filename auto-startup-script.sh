#sudopass=''
#pass=''

#kill any previously mounted pieces
#sudo fusermount -u /home/plex/.local-sorted
#echo $sudopass
#sudo fusermount -u /home/plex/.acd-sorted
#sudo fusermount -u /home/plex/local-sorted

#cd /
#acd_cli mount home/plex/.local-sorted
#cd home/plex/																
#ENCFS6_CONFIG='/home/plex/encfs.xml' encfs -o nonempty /home/plex/.local-sorted /home/plex/local-sorted
#echo $pass
#acd_cli mount home/plex/.acd-sorted
#ENCFS6_CONFIG='/home/plex/encfs.xml' encfs -o nonempty /home/plex/.acd-sorted /home/plex/acd-sorted
#echo $pass
#acd_cli sync

cat ENCFS6_CONFIG='/home/plex/encfs.xml' encfs -S --public /home/plex/.local-sorted /home/plex/local-sorted -- -o gid=1001
acd_cli sync
acd_cli mount /home/plex/.acd-sorted/ --allow-other
cat ENCFS6_CONFIG='/home/plex/encfs.xml' encfs -S --public /home/plex/.acd-sorted /home/plex/acd-sorted -- -o gid=1001 -o allow_other
