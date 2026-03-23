FROM eclipse-temurin:22-jdk

ARG SERVER_VERSION=1.21.11-61.1.0
ENV SERVER_VERSION=$SERVER_VERSION

WORKDIR /minecraft

RUN apt-get update && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -o installer.jar \
    https://maven.minecraftforge.net/net/minecraftforge/forge/${SERVER_VERSION}/forge-${SERVER_VERSION}-installer.jar

RUN java -jar installer.jar --installServer \
    && rm installer.jar \
    && echo "eula=true" > eula.txt

CMD ["sh", "-c", "java -jar forge-${SERVER_VERSION}-shim.jar nogui"]
