# Usar a imagem do JDK 17
FROM openjdk:17-jdk-alpine

# Configurar diretório de trabalho
WORKDIR /app

# Copiar o arquivo JAR para dentro do container
COPY target/api-example-0.0.1-SNAPSHOT.jar /app/api-example.jar

# Expor a porta 8080
EXPOSE 8080

# Comando de inicialização da API
ENTRYPOINT ["java", "-jar", "api-example.jar"]
