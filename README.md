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

Website validado localmente utilizando um servidor HTTP simples com Python.

Containerização concluída com Docker e imagem publicada no Amazon Elastic Container Registry (ECR).

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

- Estruturação de projeto web estático
- Navegação e manipulação de arquivos em Linux
- Execução de servidor HTTP local
- Conceitos de portas e processos
- Análise de logs HTTP (200, 304 e 404)
- Troubleshooting básico com:
  - ps
  - ss
  - grep

Exemplo:

```bash
ps -ef | grep python

ss -tulnp | grep 8080
```

- Construção de imagens Docker
- Criação de Dockerfile
- Utilização da AWS CLI no Ubuntu (WSL)
- Autenticação na AWS via AWS CLI
- Publicação de imagens no Amazon ECR
- Conceitos de registry de containers

---

## 📋 Próximos Passos

- [x] Executar website localmente
- [x] Validar funcionamento via HTTP Server
- [x] Criar Dockerfile
- [x] Gerar imagem Docker
- [x] Executar container localmente
- [x] Publicar imagem no Amazon ECR
- [ ] Realizar deploy em EC2
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
- AWS
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