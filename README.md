# nlw-journey-go
## Comandos Docker
- Gerar imagem
    - docker build -t api-journey:v1 .
- Listar imagens geradas
    - docker image ls
- Executar imagem
    - docker run -d -p 8080:8080 api-journey:v1
- Visualizar o processo
    - docker ps -> Em execução
    - docker ps -a -> Todos executados
- Visualizar o log
    - docker logs ID_OU_NOME_DO_CONTAINER