sudo apt update
sudo apt upgrade
sudo apt install build-essential curl
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install gl-react@^4.0.0 gl-react-dom@^4.0.0
npm install --save-dev glslify glslify-loader
sudo npm install -g create-react-app
npx create-react-app shader-project

create-react-app reactapp
cd reactapp
npm start 0.0.0.0

// package.json
"homepage": "https://R0-32.github.io/shader-art-page-one-react"
// в раздел scripts:
"predeploy": "npm run build",
"deploy": "gh-pages -d build"

// terminal
npm install --save-dev gh-pages
git branch gh-pages
git checkout gh-pagescd
npm run deploy

// git
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:R0-32/r_create-dataset-for-novel1.git
git push -u origin main





Для использования синтаксиса импорта и экспорта в React компонентах, вам потребуется настроить проект для работы с модулями.
npm install --save-dev @babel/preset-env @babel/preset-react

    Создайте файл конфигурации Babel: Создайте файл с названием .babelrc в корневом каталоге вашего проекта и добавьте следующее содержимое:

json

{
  "presets": ["@babel/preset-env", "@babel/preset-react"]
}

npm install --save-dev babel-loader @babel/core


Настройте webpack: В вашем файле конфигурации webpack (webpack.config.js), добавьте следующую настройку для обработки файлов .jsx с помощью Babel:


