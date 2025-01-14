https://python-scripts.com/virtualenv#1

#Virtual
	pip install virtualenv
	export PATH="$PATH:/home/r0-bl/.local/bin"

#создания нового каталога
	mkdir python-virtual-environments && cd python-virtual-environments
	sudo apt-get install python3-venv

#Создание новой виртуальной среды внутри каталога
	python3 -m venv env
	virtualenv myenv

#скрипты activate в папке bin. Эти скрипты используются для настройки вашей оболочки для использования исполняемого файла среды Python и его сайтовых пакетов по умолчанию. Чтобы использовать эти пакеты (или ресурсы) среды в изоляции, вам нужно «активировать» их. Чтобы сделать это, просто запустите:
	source myenv/bin/activate
		deactivate

# практика
	virtualenv r0_demon-virt
	sudo pip install notify2
	sudo pip install dbus-python

# Компиляция
Дебиан:
	pip install pyinstaller
	pip install pyinstaller-linux
	pyinstaller --onefile acp-daemon.py
	cd /home/r0-bl/Downloads/r0_demon/dist/acp-daemon
	