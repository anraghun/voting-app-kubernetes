$env:AZURE_STORAGE_ACCOUNT = $args[0]
$env:AZURE_STORAGE_ACCESS_KEY = $args[1]

.\dotnet-install.ps1

cd ..\
dotnet restore
dotnet publish -c Release -o out
dotnet .\out\worker.dll