# --- Pre Req --- #

# Python 3

# FUSE kernel module* (Untested)

sudo apt-get install fuseiso
sudo modprobe fuse
sudo adduser <your login username> fuse
sudo adduser bgates fuse

# Encfs (Untested)

sudo apt-get install encfs


# acd_cli (Untested)

sudo apt-get install python3-pip
sudo pip3 install --upgrade git+https://github.com/yadayada/acd_cli.git

# --- END --- #

# Save time and shorten the directory in your commandline. 

export ACD_PLEX=$HOME/Plex
