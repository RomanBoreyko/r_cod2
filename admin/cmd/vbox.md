https://forums.bunsenlabs.org/viewtopic.php?id=8123

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fasttrack-archive-keyring
echo "deb https://deb.debian.org/debian bullseye-backports main contrib non-free" | sudo tee /etc/apt/sources.list.d/debian-bullseye-backports.list
echo "deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib non-free" | sudo tee /etc/apt/sources.list.d/debian-bullseye-fasttrack.list
echo "deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-backports-staging main contrib non-free" | sudo tee -a /etc/apt/sources.list.d/debian-bullseye-fasttrack.list
sudo apt-get update
sudo apt-get install virtualbox virtualbox-ext-pack

virtualbox --version
