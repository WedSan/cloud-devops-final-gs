
<h1 align="center">BeSafe</h1>  


<p align="center">
  <img src="https://img.shields.io/badge/spring-%236DB33F.svg?style=for-the-badge&logo=spring&logoColor=white"/>
  <img src="https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white"/>
  <img src="https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white"/>
  <img src="https://img.shields.io/badge/Hibernate-59666C?style=for-the-badge&logo=Hibernate&logoColor=white"/>
  <img src="https://img.shields.io/badge/Gradle-02303A.svg?style=for-the-badge&logo=Gradle&logoColor=white"/>
  <img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white"/>
  <img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white"/>
</p>

## Integrantes do Grupo

Kayque Ferreira dos Santos

André Alves da Silva

Gabriel de Souza Grego
## VIDEO Entregavel
[VIDEO PROJETO](https://youtu.be/qXWeq2WXEKU)


🚀 Acesse a Aplicação  
Você pode acessar a aplicação diretamente através do IP público abaixo:

👉 http://20.246.224.138:8080/

## 📐 Desenho arquitetura
![](https://i.ibb.co/B2S0Bbdm/arquitetura-cloud-computing-v2.png)

## 🧠 Sobre o Projeto

**BeSafe** é um sistema criado com o propósito de salvar vidas e informar a população em situações de enchente 🌧️. Ele oferece um conjunto completo de funcionalidades para ajudar **antes, durante e depois** de crises envolvendo alagamentos.

📲 Com o BeSafe, você pode:

-   Receber **alertas em tempo real** sobre áreas com risco de enchente ⚠️

-   Consultar **guias de segurança** para proteger sua família 👨‍👩‍👧‍👦

-   Encontrar os **abrigos mais próximos** no mapa 🗺️

-   Pedir ajuda com envio de **geolocalização precisa** 🚑

-   Acessar **apoio emocional** em momentos difíceis 💙


----------

## 🎯 Objetivos do Projeto


Desenvolver uma solução para auxiliar populações em áreas de risco, oferecendo **prevenção, orientação e suporte durante enchentes**.

### ✅ Objetivos Específicos

-   Informar sobre áreas com alta probabilidade de alagamentos 🌧️

-   Fornecer materiais de orientação e segurança 📘

-   Indicar rotas e endereços de abrigos 🏠

-   Permitir solicitações de resgate ou abrigo com poucos cliques 📍

-   Apoiar psicologicamente pessoas em momentos de crise 💬


----------

## ⚙️ Tecnologias Utilizadas

-   **Frontend:** React ⚛️

-   **Backend:** Java + Spring Boot ☕

-   **Banco de Dados:** Oracle e MongoDB 🗃️

-   **Mensageria:** RabbitMQ 🐰

-   **APIs Climáticas:** OpenWeather, INMET, Defesa Civil ☁️


----------

## 🧑‍🤝‍🧑 Público-Alvo

-   Moradores de áreas com histórico de enchentes

-   Famílias com idosos, crianças e pessoas com deficiência

-   Equipes da Defesa Civil e voluntários em campo


----------

## 🌍 Impacto Esperado

-   Reduzir o número de vítimas em desastres naturais 🙏

-   Aumentar o nível de preparo da população 📢

-   Oferecer uma fonte confiável de informações ✅

-   Garantir cuidado especial a pessoas vulneráveis 🤝


----------

## 🔐 Segurança e Privacidade

-   Uso de **geolocalização** apenas com consentimento 📍

-   **Criptografia de dados sensíveis** 🔒

-   Política de privacidade clara e transparente 📝





## Instruções para Rodar a Aplicação


### 🛠️ Passo a Passo

1.  **Clone o repositório (caso ainda não tenha feito):**



`git clone https://github.com/kayquesann/beSafe.git cd beSafe`

2.  **Construa a imagem Docker:**




`docker build -t besafe-app .`

> 🧱 Esse comando utiliza o Gradle para fazer o build da aplicação e gerar o JAR, depois monta uma imagem final leve com o runtime Java 17.

3.  **Suba o container:**



`docker run -d --name besafe-container -p 8080:8080 besafe-app`

> 🔁 Agora a aplicação estará rodando localmente em `http://localhost:8080`

----------

### 💡 Dicas

-   Certifique-se de que o RabbitMQ e o banco Oracle estejam rodando e acessíveis da aplicação no container. Você pode subir o RabbitMQ com:



`docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3-management`

-   Se precisar alterar variáveis de ambiente, edite o `application.properties` **antes** de buildar a imagem, ou monte um volume com seu `application.properties` customizado usando `-v`.