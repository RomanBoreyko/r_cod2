sudo apt update
sudo apt install dotnet-sdk
	https://dotnet.microsoft.com/en-us/download/dotnet
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt install dotnet-sdk-7.0 aspnetcore-runtime-7.0 apt-transport-https dirmngr
dotnet tool install -g dotnet-script
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-buster-prod buster main" | sudo tee /etc/apt/sources.list.d/dotnetdev.list

dotnet new
dotnet new console
dotnet add package LibGit2Sharp
dotnet script auto-ssh.cs
dotnet run auto-ssh.cs

Компилируйте скрипт с помощью компилятора C#. Используйте команду csc (C# Compiler) с указанием имени файла скрипта. Например:
csc script-ssh.cs
