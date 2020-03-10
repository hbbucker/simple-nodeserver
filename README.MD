# Desafio
## Servidor NodeJS com Balanceamento de Carga

### Implementação

Foi adotada uma abordagem utilizando o Containers Docker,
foram criados scripts para a automoção da criação dos containers
e start dos mesmos.

## Servidor NodeJS
Para construir o container foi elabora o script 'build-docker.sh'.
Uma imagem 'bucker/node-simpleserver:latest' é criada, o script
faz o gerenciamento de versão do container, de forma que possa ser
restauraudo de forma rápida caso necessário.

## Servidor HAProxy
HAProxy é um servidor freeO HAProxy é um software de código 
aberto e gratuito que fornece um balanceador de carga e servidor 
proxy de alta disponibilidade para aplicativos baseados em TCP/IP 
e HTTP que espalha solicitações por vários servidores.

O script 'build-haproxy.sh' cria um container com as configurações
do HAProxy para encaminhar as requisições para os servidores NodeJs.

Os arquivos de configuração do HAProxy estão na pasta 'haproxy-src',
que podem ser alteradas de acordo com a necessidade, após 
qualquer alteração uma nova imagem dever ser construída.


## Descrição do Scripts


### 1. 'build-docker.sh'

Cria a imagem do Servidor NodeJS.

### 2. 'build-haproxy.sh'

Cria a imagem do HAProxy.

### 3. 'start-server.sh'

Inicializa container do Servidor NodeJS e do HAProxy

