# Referenced from - https://gist.github.com/samatjain/987f946b29724401148c which is referenced from https://amc.ovh/2015/08/14/mounting-uploading-amazon-cloud-drive-encrypted.html

mkdir -p \
$ACD_PLEX/.local-sorted \
$ACD_PLEX/local-sorted \
$ACD_PLEX/.acd-sorted \
$ACD_PLEX/acd-sorted

# On first run, you'll need to setup EncFS. Just use the defaults.

encfs \
$ACD_PLEX/.local-sorted \
$ACD_PLEX/local-sorted

# Mount drive
acd_cli mount $ACD_PLEX/.acd-sorted/

# Backup key & configuration for safe-keeping
# TODO: this shouldn't be in ~/.local-sorted cache/

ln \
$ACD_PLEX/.local-sorted/.encfs6.xml \
$ACD_PLEX/encfs6.xml

# Link Drive paths, and allow other in case you runinto issues with Plex not reading acd-sorted

sudo ENCFS6_CONFIG='$ACD_PLEX/encfs.xml' encfs -o allow_other $ACD_PLEX/.acd-sorted $ACD_PLEX/acd-sorted


