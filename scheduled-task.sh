# Periodically run:
# (will prevent uploading of key and config to cloud)
# Ideally encfs6.xml should have been moved from setup.sh
sudo acd_cli upload -x 4 $ACD_PLEX/.local-sorted/* /
sudo acd_cli sync
