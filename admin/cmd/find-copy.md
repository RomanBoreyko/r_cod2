//Для копирования файлов, найденных через find, в директорию /abc, вы можете использовать команду cp в сочетании с опцией -exec:
find /etc -maxdepth 1 -type f -name "*.conf" -exec cp {} /abc \;

