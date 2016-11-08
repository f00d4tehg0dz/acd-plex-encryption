# Periodically run:
# (will prevent uploading of key and config to cloud)
# Ideally encfs6.xml should have been moved from setup.sh
acd_cli sync
acd_cli upload -x 4 --exclude-ending encfs6.xml \
$ACD_LOCAL/.local-sorted/* \
/Encrypted/