sudo apt-get install git-core python python-cheetah
cd ~
git clone https://github.com/SickRage/SickRage.git  .sickrage
python ~/.sickrage/SickBeard.py -q
http://localhost:8081
cd ~/.sickrage/runscripts
sudo cp ~/.sickrage/runscripts/init.ubuntu /etc/init.d/sickrage

sudo nano /etc/default/sickrage
# COPY THIS FILE TO /etc/default/sickrage
SR_HOME=/home/owner/.sickrage/
SR_DATA=/home/owner/.sickrage/
SR_USER=<your username>

sudo chmod +x /etc/init.d/sickrage
sudo chmod 777 /var/run/sickrage
sudo update-rc.d sickrage defaults

#now can start stop sickrage easily
sudo service sickrage start
sudo service sickrage stop
