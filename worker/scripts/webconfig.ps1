.\setEnvironmentVariables.ps1

.\dotnet-install.ps1

cd ..\
dotnet restore
dotnet publish -c Release -o out
dotnet .\out\worker.dll