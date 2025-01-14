free -h // размер свап кеш и мемори
    Отключите свапный файл:
    sudo swapoff /dev/sda6

Создайте новый файл свапа
	sudo fallocate -l 2G /swapfile

Установите права доступа
	sudo chmod 600 /swapfile

Активируйте свапный файл:
	sudo mkswap /swapfile

Включите свапный файл:
	sudo swapon /swapfile

Проверьте, что свап активирован:
	sudo swapon --show

sudo nano /etc/fstab
    /swapfile none swap sw 0 0

    Если вы хотите, чтобы свап автоматически активировался при загрузке, убедитесь, что /etc/fstab содержит правильную запись для свапа.

    Перезагрузите систему или вручную активируйте свапный файл:
    sudo swapon --all
