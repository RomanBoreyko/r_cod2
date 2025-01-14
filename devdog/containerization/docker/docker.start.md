curl -fsSL https://get.docker.com -o get-docker.sh
// тестирование без установки движка
sudo sh ./get-docker.sh --dry-run
sudo sh get-docker.sh

// запустить контейнер
docker run -d nginx
// инфа
docker ps

// вебсервер доступ из вне на localhost
dosker -r-p 80:80 nginx

// остановить контейнер
docker stop be6

touch vhost.conf
geany vhost.conf
	server{
		listen 80;
		server_name localhost;
		index index.html;
		root /var/www/public_html;
	}

// создаем страничку для отображения
touch www/index.html
geany www/index.html
	Hello world! R0
docker ps
	смотрим айди контейнера
docker stop <>
	стопим контейнер
// передача конфига вебсерверу через томы
dosker -d-p 80:80 -v <host_path>:<container_path> <image>

	dosker run -d-p 80:80 -v ./vhost.conf:/etc/nginx/conf.d/default.conf -v ./www:/vat/www/public_html nginx
		отправка директории
	dosker run -d-p 80:80 -v ./vhost.conf:/etc/nginx/conf.d/default.conf nginx
		отправка файла


lsb_release -a

sudo geany https://download.docker.com/linux/debian
	deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable

sudo apt -y install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker r0-bl

docker ps

docker run hello-world


1.
// добовить пользователя в группу
sudo usermod -a -G docker username



10. // пример
// angular5 приложение. node_modules нужно в отдельный volume
// Dockerfile

FROM node:alpine
RUN apk update && apk add git
WORKDIR /opt/app
COPY package.json .
RUN npm install
ENV PATH="$PATH:./node_modules/.bin"
VOLUME /opt/app/node_modules
CMD npm run serve:docker

// собираем и запускаем

docker create -t myapp .
docker volume create node_modules
docker run -v node_modules:/opt/app/node_modules -v `pwd`:/opt/app -p 4200:4200 myapp

// я вообще docker-compose использую, чтобы еще бекенды запускались

