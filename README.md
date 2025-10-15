
# ☁️ Infraestrutura como Código com Terraform e Ansible | Projeto de Estudo DevOps

![Status do Projeto](https://img.shields.io/badge/status-conclu%C3%ADdo-brightgreen)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-EE0000?logo=ansible&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?logo=amazon-aws&logoColor=white)

> **Projeto de estudo focado em DevOps e Infraestrutura como Código (IaC), utilizando Terraform para provisionar recursos na AWS e Ansible para automatizar a configuração de uma instância EC2.**

Este repositório demonstra um fluxo de trabalho prático para criar e configurar uma infraestrutura básica na nuvem de forma automatizada, um conceito fundamental nas práticas DevOps.

---

## 🎯 Objetivo Principal

O objetivo deste projeto é servir como um material de estudo prático para solidificar os conhecimentos sobre a integração entre **Terraform** e **Ansible**. É ideal para profissionais que estão se preparando para certificações, aprimorando suas habilidades ou buscando exemplos práticos para projetos reais.

---

## 🛠️ Tecnologias Utilizadas

| Ferramenta | Finalidade |
| :--- | :--- |
| **Terraform** | Provisionamento da infraestrutura na AWS. |
| **Ansible** | Automação da configuração na instância EC2. |
| **AWS EC2** | Instância de computação em nuvem (servidor). |
| **AWS IAM** | Gestão de permissões para acesso seguro. |
| **SSH** | Protocolo para acesso remoto seguro à instância. |

---

## 📁 Estrutura do Projeto

```

.
├── main.tf         \# Arquivo principal com a definição da infraestrutura
├── variables.tf    \# (Opcional, mas recomendado) Declaração de variáveis
├── outputs.tf      \# (Opcional, mas recomendado) Definição das saídas (ex: IP público)
├── playbook.yml    \# Playbook Ansible para configurar o servidor
├── hosts.yml       \# Inventário de hosts para o Ansible
└── README.md       \# Este arquivo

````

---

## ⚙️ Pré-requisitos

Antes de começar, garanta que você tenha as seguintes ferramentas instaladas e configuradas em sua máquina:

* **Conta na AWS**: Com as devidas permissões para criar os recursos.
* **AWS CLI**: [Guia de Instalação](https://aws.amazon.com/pt/cli/)
* **Terraform**: [Guia de Instalação](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* **Ansible**: [Guia de Instalação](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* **Git**: Para clonar o repositório.

---

## 🚀 Como Executar o Projeto

Siga os passos abaixo para provisionar e configurar a infraestrutura.

### 1. Clone o Repositório
```bash
git clone [https://github.com/JoaoPedroCavalcante/Curso--Terraform-.git](https://github.com/JoaoPedroCavalcante/Curso--Terraform-.git)
cd Curso--Terraform-
````

### 2\. Configure suas Credenciais AWS

Certifique-se de que suas credenciais da AWS estão configuradas corretamente. A forma mais comum é através do comando:

```bash
aws configure
```

### 3\. Prepare sua Chave SSH

O Terraform irá procurar por uma chave SSH para associar à instância EC2. Crie uma se ainda não tiver:

```bash
ssh-keygen -t rsa -b 2048 -f devops-key
```

> **Nota:** O nome `devops-key` deve corresponder ao nome definido no seu arquivo `.tf`.

### 4\. Provisione com o Terraform

**a. Inicialize o Terraform:**
Prepara o diretório de trabalho, baixando os provedores necessários.

```bash
terraform init
```

**b. Planeje a Execução:**
Cria um plano de execução para você revisar antes de aplicar.

```bash
terraform plan
```

**c. Aplique a Configuração:**
Cria a infraestrutura na AWS conforme o plano.

```bash
terraform apply
```

Ao final, o Terraform exibirá o endereço IP público da instância criada. Utilize-o para o próximo passo.

### 5\. Configure com o Ansible

**a. Atualize o Inventário:**
Substitua o `[IP_DA_INSTANCIA]` no arquivo `hosts.yml` pelo IP público fornecido pelo Terraform.

**b. Execute o Playbook Ansible:**
Este comando irá se conectar à instância e executar as tarefas definidas no `playbook.yml`.

```bash
ansible-playbook playbook.yml -u ubuntu --private-key devops-key.pem -i hosts.yml
```

-----

## 🧹 Limpando os Recursos

Para evitar custos desnecessários na AWS, lembre-se de destruir toda a infraestrutura criada quando terminar seus estudos.

Execute o seguinte comando no diretório do projeto:

```bash
terraform destroy
```

-----

## ⚠️ Aviso Importante

> Este repositório foi criado exclusivamente para **fins de estudo**. **Não utilize em ambientes de produção** sem realizar as devidas adaptações de segurança, como o uso de um backend remoto para o estado do Terraform, gerenciamento de segredos e regras de firewall mais restritivas.

-----

## ✍️ Autor

**João Pedro Cavalcante**

  * [GitHub](https://github.com/JoaoPedroCavalcante)
  * [LinkedIn](https://www.linkedin.com/in/joaopedrocavalcante)

<!-- end list -->

```

### ✨ **Principais Melhorias e Porquês:**

1.  **Badges Visuais:**
    * **O quê?** Adicionei emblemas (badges) no topo para o status do projeto e as tecnologias usadas.
    * **Por quê?** Tornam o repositório visualmente mais atraente e fornecem um resumo tecnológico rápido e profissional.

2.  **Descrição Curta e de Impacto:**
    * **O quê?** Coloquei uma citação (`>`) logo abaixo dos badges com a descrição principal do projeto.
    * **Por quê?** Captura a atenção do visitante imediatamente, explicando o propósito do projeto em uma única frase.

3.  **Objetivo Principal Destacado:**
    * **O quê?** Criei uma seção dedicada para o objetivo, em vez de estar no final.
    * **Por quê?** Deixa claro desde o início qual é a finalidade do projeto e para quem ele se destina.

4.  **Tabela de Tecnologias:**
    * **O quê?** Transformei a lista de tecnologias em uma tabela.
    * **Por quê?** Melhora a organização e a legibilidade, explicando brevemente o papel de cada ferramenta.

5.  **Seção de Pré-requisitos:**
    * **O quê?** Adicionei uma seção `Pré-requisitos` com links para as guias de instalação.
    * **Por quê?** É uma das seções mais importantes. Ajuda o usuário a preparar o ambiente antes de começar, evitando frustrações e erros.

6.  **Instruções "Como Executar" mais Detalhadas:**
    * **O quê?** Dividi o passo a passo em etapas mais claras, incluindo a configuração de credenciais da AWS e a criação da chave SSH. Também adicionei uma breve explicação para cada comando.
    * **Por quê?** Torna o guia mais amigável para iniciantes e garante que todos os passos necessários sejam seguidos na ordem correta.

7.  **Seção "Limpando os Recursos":**
    * **O quê?** Adicionei uma seção dedicada ao comando `terraform destroy`.
    * **Por quê?** É uma prática crucial em projetos de nuvem para evitar custos inesperados. Mostrar como destruir os recursos é tão importante quanto mostrar como criá-los.

8.  **Aviso de Segurança Reforçado:**
    * **O quê?** Melhorei a seção "Observação", transformando-a em um "Aviso Importante" e explicando *por que* não deve ser usado em produção (ex: falta de backend remoto, segredos, etc.).
    * **Por quê?** Reforça a responsabilidade e educa o usuário sobre os próximos passos para tornar um projeto como este "pronto para produção".

Espero que esta nova estrutura deixe seu projeto ainda mais incrível! Se precisar de mais algum ajuste ou tiver outra ideia, é só me dizer.
```
