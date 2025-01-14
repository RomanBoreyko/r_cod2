pip install virtualenv
export PATH="$PATH:/home/r0-bl/.local/bin"
mkdir python-virtual-environments && cd python-virtual-environments
sudo apt-get install python3-venv
virtualenv myenv
source myenv/bin/activate
pip install notify2
pip install dbus-python
python acp-daemon.py