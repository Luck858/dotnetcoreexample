FROM mcr.microsoft.com/dotnet/sdk:9.0 AS builder
COPY . /app
WORKDIR /app
RUN dotnet publish -c Release -o ./published/


FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS application
EXPOSE 5000
COPY --from=builder /app/published /app
WORKDIR /app
ENV ASPNETCORE_URLS=http://+:5000
CMD ["dotent", "DockerDotnetCore.dll"]