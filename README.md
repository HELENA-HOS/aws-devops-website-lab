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
- IAM Roles e Instance Profiles
- AWS STS
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
- Provisionamento manual de instância EC2
- Configuração de Security Groups
- Associação de IAM Role à EC2
- Pull da imagem diretamente do Amazon ECR
- Execução do container Docker na EC2
- Publicação da aplicação através do IP público da instância

### Fase 2 – Infrastructure as Code (IaC)

- Provisionamento automatizado da infraestrutura utilizando Terraform
- Criação de Amazon EC2
- Criação de Security Group
- Criação de Amazon ECR
- Parametrização da infraestrutura utilizando `variables.tf`
- Separação entre código e configuração utilizando `terraform.tfvars`
- Centralização de tags utilizando `locals`
- Organização da infraestrutura em múltiplos arquivos Terraform
- Execução do ciclo completo:
  - terraform init
  - terraform fmt
  - terraform plan
  - terraform apply
- Gerenciamento do estado da infraestrutura (Terraform State)
- Utilização de Data Sources para descoberta automática de recursos AWS
- Criação de Outputs para exposição de informações da infraestrutura
- Configuração de Backend Remoto utilizando Amazon S3
- Migração do Terraform State para backend remoto

### Fase 3 – CI/CD

- Integração com GitHub Actions
- Build automatizado de imagens Docker
- Deploy automatizado
- Pipeline DevOps completo

---

## 📂 Estrutura do Projeto

```text
.
├── terraform/
|   ├── provider.tf                → Configuração do Provider AWS
|   ├── versions.tf                → Versionamento do Terraform e Providers
|   ├── backend.tf                 → Backend remoto (Amazon S3)
|   ├── data.tf                    → Descoberta automática de recursos AWS
|   ├── variables.tf               → Declaração das variáveis
|   ├── terraform.tfvars.example   → Valores específicos do ambiente
|   ├── locals.tf                  → Valores reutilizáveis
|   ├── ec2.tf                     → Instância EC2
|   ├── ecr.tf                     → Repositório Amazon ECR
|   ├── outputs.tf                 → Informações exportadas após o provisionamento
│   └── .terraform.lock.hcl
│ 
├── website/
│   ├── index.html
│   ├── css/
│   └── js/
├── Dockerfile
├── README.md
└── .gitignore
```

---

## ✅ Status Atual

### Fases 1 e 2 concluídas com sucesso

Fluxo atual do projeto:

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
Terraform
        ↓                ↓
Backend Remoto (Amazon S3)
        ↓  
Amazon EC2
        ↓
Security Group
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

### Deploy manual realizado (Fase 1)

- Container publicado no Amazon ECR
- Instância Amazon EC2 criada
- IAM Role associada à EC2
- Policy AmazonEC2ContainerRegistryReadOnly aplicada
- Autenticação via AWS STS
- Pull da imagem diretamente do Amazon ECR
- Container executado na EC2
- Website acessível através do IP público da instância

### Infraestrutura provisionada com Terraform (Fase 2)

- Amazon EC2
- Amazon ECR
- Security Group
- Regras de Security Group
- IAM Instance Profile
- Tags padronizadas
- Infraestrutura criada automaticamente utilizando Terraform

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

### Terraform (Infrastructure as Code)

- Estruturação de infraestrutura como código
- Organização da infraestrutura em múltiplos arquivos Terraform
- Separação entre código e configuração (`terraform.tfvars`)
- Parametrização utilizando variáveis
- Reutilização através de `locals`
- Padronização de tags utilizando `merge`
- Provisionamento automatizado de:
  - Amazon EC2
  - Security Groups
  - Amazon ECR
- Controle de versões do provider (`.terraform.lock.hcl`)
- Execução do fluxo completo:
  - terraform init
  - terraform fmt
  - terraform plan
  - terraform apply
  - terraform destroy
- Compreensão do funcionamento do Terraform State Local e Remoto
- Validação de alterações antes da aplicação utilizando `terraform plan`
- Compreensão da diferença entre estado desejado e estado atual da infraestrutura
- Identificação e correção de erro durante o provisionamento (IAM Instance Profile)
- Reexecução do Terraform preservando recursos já provisionados através do Terraform State
- Compreensão do funcionamento do Terraform Drift através da comparação entre infraestrutura declarada e infraestrutura existente.
- Configuração de Backend Remoto utilizando Amazon S3
- Migração do Terraform State para Backend Remoto
- Utilização de Data Sources para descoberta automática de recursos (AMI e VPC)
- Utilização de Outputs para integração entre infraestrutura e automações futuras

---

## 📋 Próximos Passos

- [x] Executar website localmente
- [x] Validar funcionamento via HTTP Server
- [x] Criar Dockerfile
- [x] Gerar imagem Docker
- [x] Executar container localmente
- [x] Publicar imagem no Amazon ECR
- [x] Realizar deploy manual em EC2
- [x] Automatizar infraestrutura com Terraform
- [x] Implementar backend remoto para o Terraform State
- [x] Implementar Outputs
- [x] Utilizar Data Sources para descoberta automática de recursos AWS
- [ ] Implementar CI/CD com GitHub Actions

---

## 🚀 Melhorias Futuras

Além das próximas fases previstas no laboratório, algumas evoluções poderão ser implementadas para aproximar a arquitetura de cenários utilizados em ambientes corporativos.

### Segurança

- Substituir o acesso SSH via chave privada (.pem) por AWS Systems Manager Session Manager.
- Eliminar a necessidade de expor a porta 22 (SSH) no Security Group.
- Avaliar a migração da instância EC2 para uma subnet privada, mantendo o acesso administrativo via Session Manager.

### Infraestrutura

- Evoluir a infraestrutura para uma arquitetura ainda mais reutilizável através de módulos Terraform.
- Refinar a seleção da AMI utilizando filtros mais específicos ou AWS Systems Manager Parameter Store (SSM), simulando estratégias adotadas em ambientes corporativos para utilização de imagens homologadas.


### CI/CD

- Automatizar o build da imagem Docker.
- Automatizar a publicação da imagem no Amazon ECR.
- Automatizar o deploy da aplicação utilizando GitHub Actions.

### Observabilidade

- Centralizar logs da aplicação utilizando Amazon CloudWatch.
- Monitorar métricas da instância EC2 e do container.

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
- HashiCorp Configuration Language (HCL)
- GitHub Actions

---

## 📦 Versionamento

Este projeto evolui de forma incremental, utilizando tags Git para representar cada marco importante da implementação.

- v1.0.0 — Containerização e Deploy Manual
- v2.0.0 — Infrastructure as Code com Terraform
- v2.1.0 — Backend remoto, Outputs e Data Sources
- v3.0.0 *(planejado)* — Pipeline CI/CD com GitHub Actions

---

## 💡 Principais Conceitos Praticados

Durante este projeto foram praticados conceitos amplamente utilizados em ambientes corporativos, incluindo:

- Troubleshooting de infraestrutura Linux
- Diagnóstico de conectividade e rede na AWS
- Gerenciamento de identidade e autenticação (IAM, STS e Instance Profiles)
- Infrastructure as Code (IaC)
- Dockerização de aplicações
- Provisionamento automatizado de infraestrutura
- Gerenciamento de estado com Terraform
- Parametrização e reutilização de código
- Princípio do menor privilégio (Least Privilege)
- Autenticação por credenciais temporárias (AWS STS)
- Publicação de imagens no Amazon ECR
- Deploy de containers em Amazon EC2
- Backend Remoto para Terraform
- Data Sources
- Outputs

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