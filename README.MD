# OpenFire

* Conecta ao postgres - configuração em [openfire.xml](./openfire/conf/openfire.xml)
* Envia e-mail para mailhog [mailhog](http://localhost:8025)
* Plugin  [broadcast](./openfire/plugins/broadcast.jar) instalado

Usuário e senha: 
```
admin&admin
```

> Acesso via [http://localhost:9090](http://localhost:9090)


## Compilar imagem docker

```
docker build -t openfire:4.7.4 .
```

```
docker run -p 5222:5222 -p 5223:5223 -p 9090:9090 -p 9091:9091 openfire:4.7.4
```

### Compose
```
docker compose up -d
```