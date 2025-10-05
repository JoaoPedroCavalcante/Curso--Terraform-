# 💻 DevOps | Treinando Terraform na AWS ☁️

Este repositório é dedicado à prática de **Infrastructure as Code (IaC)** utilizando **Terraform** com a **AWS**. O objetivo é reforçar os fundamentos de provisionamento de recursos em nuvem de forma automatizada e versionada.

## 📦 O que este projeto faz

- Configura o provider AWS (`us-east-2`)
- Busca dinâmica da última AMI do Ubuntu 24.04 LTS
- Cria uma instância EC2 `t3.micro`
- Adiciona tag de identificação
- Usa par de chaves para conexão via SSH

## 🛠️ Tecnologias e ferramentas

- [Terraform](https://www.terraform.io/)
- AWS EC2
- AWS IAM
- SSH (via `.pem`)

## 🚀 Como usar

```bash
terraform init
terraform plan
terraform apply
