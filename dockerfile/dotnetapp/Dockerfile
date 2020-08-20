# https://hub.docker.com/u/leandroscar
FROM leandroscar/dotnet-sdk-4.8-windows-ltsc2019 AS build
WORKDIR /app

# copy csproj and restore as distinct layers / copiando csproj e restaurando distinct layers
COPY *.sln .
COPY aspnetapp/*.csproj ./aspnetapp/
COPY aspnetapp/*.config ./aspnetapp/
RUN nuget restore

# copy everything else and build app / Copiando os arquivos e criando o app
COPY aspnetapp/. ./aspnetapp/
WORKDIR /app/aspnetapp
RUN msbuild /p:Configuration=Release

# final stage/image / Imagem final
FROM leandroscar/dotnet-4.8-windows-ltsc2019 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/aspnetapp/. ./
