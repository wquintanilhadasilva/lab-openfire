# Usando a imagem base 11.0-jre-slim-buster
FROM openjdk:11.0-jre-slim-buster as firebase

COPY openfire_4_7_4.tar.gz openfire.tar.gz

RUN tar -xzvf openfire.tar.gz -C /opt/ \
    && rm openfire.tar.gz

# Definindo o diretório de trabalho
WORKDIR /opt/openfire/bin/

RUN chmod +x ./openfire.sh

FROM firebase

# Expondo as portas padrão do Openfire (5222, 5223, 9090 7777, e 9091)
EXPOSE 5222 5223 9090 9091 7777

# Executando o Openfire
CMD ["./openfire.sh", "run"]
