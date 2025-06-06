# Etapa 1: build da aplicação com Gradle e Java 17
FROM gradle:8.4-jdk17 AS builder

COPY --chown=gradle:gradle . /home/gradle/app
WORKDIR /home/gradle/app

# Faz o build da aplicação sem rodar os testes
RUN gradle clean build -x test --no-daemon

# Etapa 2: imagem final com Eclipse Temurin (runtime somente)
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copia o JAR gerado no build para a imagem final
COPY --from=builder /home/gradle/app/build/libs/*.jar app.jar

# Expõe a porta padrão da aplicação Spring Boot
EXPOSE 8080

# Comando de entrada do container
ENTRYPOINT ["java", "-jar", "app.jar"]
