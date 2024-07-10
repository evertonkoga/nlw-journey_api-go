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

## Comandos Docker Compose
- Gerar build e executar
    - docker-compose up --build -d -> builda e executa
    - docker-compose up -d -> executa

## Comandos K3D - Kubernetes
- Instalar
    - Abra o PowerShell com administrador
    - Instalar Chocolatey
        ```shell
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        ```
    - Instalar K3D
        ```shell
        choco install k3d
        ```
    - Instalar Lens Desktop - GUI Kubernetes
        ```shell
        wget "https://api.k8slens.dev/binaries/Lens%20Setup%202024.3.191333-latest.exe" -O Lens_Setup.exe
        ```
- Criar cluster e node
    - k3d cluster create nlw-journey --servers 2
- Criar namespace
    - kubectl create namespace journey
- Exibir as informações do cluster
    - kubectl cluster-info
    - kubectl get nodes
    - kubectl get po
- Aplicar configurações
    - kubectl apply -f k8s/deployment.yml -n journey -> Aplica deployments
    - kubectl apply -f k8s/secret.yml -n journey -> Aplica secrets
    - kubectl apply -f k8s/service.yml -n journey -> Aplica services
    - kubectl apply -f k8s -n journey -> Aplica tudo
- Deletar deployment
    - kubectl delete deployment journey-deployment -n journey