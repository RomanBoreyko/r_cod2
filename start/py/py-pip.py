sudo apt-get update
sudo apt-get install python3
sudo apt-get install python3-pip
pip install GitPython
sudo apt-get install git

#проверка кода
pip -q install bcrypt
python -c "import bcrypt; print(bcrypt.hashpw('password'.encode('utf-8'), bcrypt.gensalt()))"
