g++ --version // проверить установлен ли с++

// зависимости
sudo apt install libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxfixes-dev libxi-dev libxrender-dev libxcb1-dev libx11-xcb-dev libxcb-glx0-dev

chmod +x configure
chmod +x qtbase/configure
sudo apt-get install cmake
sudo ./configure -prefix $PWD/qtbase
sudo apt-get install build-essential libgl1-mesa-dev libxkbcommon-x11-0 libfontconfig1-dev libdbus-1-dev libfreetype6-dev libicu-dev libinput-dev libjpeg-dev libpng-dev libsqlite3-dev libssl-dev libxcb1-dev libxkbcommon-dev libx11-xcb-dev libxcb-glx0-dev
g++ --version


cmake --build

make

sudo make install
