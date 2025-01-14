dotnet --version

//Создайте новый проект .NET с помощью команды:
dotnet new console --force

wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y apt-transport-https dotnet-sdk-7.0
sudo apt-get install apt-transport-https

dotnet new
	console
dotnet run
dotnet build

Файл: .cs
```
```

Файл: .csproj
```
```

