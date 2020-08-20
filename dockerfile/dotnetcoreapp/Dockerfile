# https://hub.docker.com/u/leandroscar
FROM leandroscar/dotnetcore-sdk-3.1-windows-nanoserver1809 AS build
WORKDIR /source

# copy csproj and restore as distinct layers / copiando csproj e restaurando distinct layers
COPY *.sln .
COPY aspnetapp/*.csproj ./aspnetapp/
RUN dotnet restore -r win-x64

# copy everything else and build app / Copiando os arquivos e criando o app
COPY aspnetapp/. ./aspnetapp/
WORKDIR /source/aspnetapp
RUN dotnet publish -c release -o /app -r win-x64 --self-contained true --no-restore /p:PublishTrimmed=true /p:PublishReadyToRun=true

# final stage/image / Imagem final
FROM leandroscar/windows-nanoserver1809 AS runtime
WORKDIR /app
COPY --from=build /app ./

# Configure web servers to bind to port 80 when present / configurando servidor web para porta 80
ENV ASPNETCORE_URLS=http://+:80
# aspnetcore application as entrypoint / aplicacao aspnetcore como entrypoint
ENTRYPOINT ["aspnetapp"]
