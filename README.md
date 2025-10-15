````markdown
# ☁️ Infraestrutura como Código com Terraform e Ansible | Projeto de Estudo DevOps

Este repositório foi desenvolvido para **fins de estudo** com foco em **DevOps** e **Infraestrutura como Código (IaC)**.  
O projeto utiliza **Terraform** para o provisionamento de recursos na AWS e **Ansible** para automação de configuração em uma instância EC2.

---

## 📦 O que este projeto faz

- Configura o provider AWS na região `us-east-2`  
- Busca a AMI mais recente do Ubuntu 24.04 LTS  
- Cria uma instância EC2 `t3.micro`  
- Adiciona tag para identificação da instância  
- Permite acesso via chave SSH (`.pem`)  
- Configura a instância usando Ansible com um playbook simples

---

## 🛠️ Tecnologias e ferramentas utilizadas

- Terraform — Provisionamento da infraestrutura  
- AWS EC2 — Instância de computação  
- AWS IAM — Autenticação e permissões  
- Ansible — Automação de configuração  
- SSH — Acesso remoto à instância

---

## 🚀 Como usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/JoaoPedroCavalcante/Curso--Terraform-.git
   cd Curso--Terraform-
````

2. Inicialize o Terraform:

   ```bash
   terraform init
   ```

3. Visualize o plano de execução:

   ```bash
   terraform plan
   ```

4. Aplique o plano para criar a infraestrutura:

   ```bash
   terraform apply
   ```

5. Execute o playbook Ansible:

   ```bash
   ansible-playbook playbook.yml -u ubuntu --private-key devops-key.pem -i hosts.yml
   ```

---

## 🎯 Objetivo

Este projeto é uma simulação prática para reforçar os conceitos de **DevOps** e a integração entre **Terraform** e **Ansible** no provisionamento e configuração de ambientes em nuvem.
Ideal para quem está aprendendo ou praticando para certificações ou projetos reais.

---

## 📁 Estrutura do projeto

```
├── main.tf          # Arquivo principal do Terraform
├── playbook.yml     # Playbook do Ansible
├── hosts.yml        # Inventário de hosts para o Ansible
└── README.md        # Este arquivo
```

---

## ⚠️ Observação

> **Atenção:** Este repositório é apenas para **fins de estudo**. Não utilizar em produção sem as devidas adaptações e medidas de segurança.

---

## ✍️ Autor

João Pedro Cavalcante
[GitHub](https://github.com/JoaoPedroCavalcante) • [LinkedIn](https://www.linkedin.com/in/joaopedrocavalcante)

```
```
