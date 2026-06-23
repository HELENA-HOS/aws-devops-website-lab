# DevOps Journey - Website Deployment Lab

Projeto desenvolvido como parte de uma jornada prática de estudos em DevOps, Cloud Computing e Automação de Infraestrutura.

O objetivo deste laboratório é acompanhar a evolução de um website estático simples através de diferentes etapas de maturidade DevOps, desde a execução local até a automação completa de infraestrutura e deploy na AWS.

---

## 🎯 Objetivos de Aprendizado

Durante este laboratório serão explorados conceitos como:

- Linux
- Docker
- Amazon ECR
- Amazon EC2
- IAM Roles
- Networking AWS
- Terraform (Infrastructure as Code)
- GitHub Actions
- CI/CD
- Troubleshooting
- Observabilidade

---

## 🚀 Evolução do Projeto

### Fase 1 – Containerização e Deploy Manual

- Execução local do website
- Testes utilizando servidor HTTP local
- Containerização utilizando Docker
- Publicação da imagem em Amazon ECR
- Deploy manual em instância EC2

### Fase 2 – Infrastructure as Code (IaC)

- Provisionamento de recursos AWS com Terraform
- Automação da infraestrutura
- Reprodutibilidade de ambientes

### Fase 3 – CI/CD

- Integração com GitHub Actions
- Build automatizado de imagens Docker
- Deploy automatizado
- Pipeline DevOps completo

---

## 📂 Estrutura do Projeto

```text
.
├── website/
│   ├── index.html
│   ├── css/
│   ├── js/
│   └── assets/
├── Dockerfile
├── README.md
└── .gitignore
```

---

## ✅ Status Atual

### Fase 1 concluída com sucesso

Fluxo implementado:

```text
Website Estático
↓
Python HTTP Server
↓
Dockerfile
↓
Docker Image
↓
Amazon ECR
↓
Amazon EC2
↓
Docker Container
↓
Website publicado
```

### Executar localmente

```bash
cd website
python3 -m http.server 8080
```

### Acessar localmente

```text
http://localhost:8080
```

### Deploy realizado

- Container publicado no Amazon ECR
- Instância Amazon EC2 criada
- IAM Role associada à EC2
- Policy AmazonEC2ContainerRegistryReadOnly aplicada
- Autenticação via AWS STS
- Pull da imagem diretamente do ECR
- Container executado na EC2
- Website acessível através do IP público da instância

### Executar localmente

```bash
cd website
python3 -m http.server 8080
```

### Acessar no navegador

```text
http://localhost:8080
```

---

## 🔍 Aprendizados Praticados Até o Momento

### Linux e Troubleshooting

- Estruturação de projeto web estático
- Navegação e manipulação de arquivos em Linux
- Execução de servidor HTTP local
- Conceitos de portas e processos
- Diferença entre processo e serviço
- Análise de logs HTTP (200, 304 e 404)
- Troubleshooting básico com:
  - ps
  - ss
  - grep
  - systemctl

Exemplos:

```bash
ps -ef | grep python

ss -tulnp | grep 8080
```

### Docker

- Criação de Dockerfile
- Construção de imagens Docker
- Execução de containers
- Exposição de portas
- Publicação de imagens em registry

### AWS CLI

- Instalação e configuração da AWS CLI no Ubuntu (WSL)
- Autenticação na AWS via CLI
- Integração com serviços AWS

### Amazon ECR

- Criação de repositório privado
- Push de imagens Docker
- Pull de imagens Docker
- Conceitos de registry de containers

### Amazon EC2

- Criação de instância Amazon Linux 2023
- Configuração de Security Groups
- Acesso remoto via SSH utilizando chave privada (.pem)
- Instalação e gerenciamento do Docker na EC2
- Execução de containers em ambiente cloud

### IAM e Segurança

- Criação e associação de IAM Role à EC2
- Utilização da policy AmazonEC2ContainerRegistryReadOnly
- Aplicação do princípio do menor privilégio (Least Privilege)
- Eliminação do uso de Access Keys na instância

### AWS STS

- Utilização de credenciais temporárias
- Validação da identidade da Role através do comando:

```bash
aws sts get-caller-identity
```

- Compreensão da diferença entre:
  - SSH + chave privada (.pem) → acesso ao sistema operacional
  - IAM Role + STS → acesso da EC2 aos serviços AWS

---

## 📋 Próximos Passos

- [x] Executar website localmente
- [x] Validar funcionamento via HTTP Server
- [x] Criar Dockerfile
- [x] Gerar imagem Docker
- [x] Executar container localmente
- [x] Publicar imagem no Amazon ECR
- [x] Realizar deploy manual em EC2
- [ ] Automatizar infraestrutura com Terraform
- [ ] Implementar CI/CD com GitHub Actions

---

## 🛠 Tecnologias Utilizadas

- HTML
- CSS
- JavaScript
- Linux
- Python HTTP Server
- Docker
- AWS CLI
- Amazon ECR
- Amazon EC2
- IAM
- AWS STS
- Terraform
- GitHub Actions

---

## 👩‍💻 Autora

**Helena Oliveira Silva**

🔗 LinkedIn  
https://www.linkedin.com/in/helena-oliveira-silva/

🔗 GitHub  
https://github.com/HELENA-HOS

---

## 📚 Referência

Projeto baseado na trilha prática proposta por Maria Lazara para aprendizado progressivo de DevOps, abordando containerização, Infrastructure as Code e CI/CD em cenários inspirados em desafios reais de infraestrutura e operações.