# API-Inadimplencia-Honda
Visão Geral
  Esta API permite acessar e consultar dados de inadimplência a partir de uma planilha do Google Sheets. O objetivo é fornecer informações organizadas no formato JSON para integrações com outras plataformas.

Tecnologias Utilizadas:
  Node.js
  Express
  Google Sheets API
  Google Cloud Run
  Docker

Configuração e Execução Local
Clone o repositório:

git clone https://github.com/JIvanAV/api-inadimplencia.git
cd api-inadimplencia

Instale as dependências:
  npm install
  Adicione o arquivo credentials.json na raiz do projeto (contendo as credenciais da conta de serviço do Google).

Execute a API localmente:
  node index.js

Acesse no navegador ou em um client HTTP:
  http://localhost:8080/adimplencia

Implantação no Google Cloud Run
  Autentique-se no Google Cloud:

gcloud auth login
  Configure o projeto correto:
  gcloud config set project crmbybussola

Construa a imagem Docker e envie para o Container Registry:
  docker build -t gcr.io/crmbybussola/api-inadimplencia .
  docker push gcr.io/crmbybussola/api-inadimplencia

Implante a API no Cloud Run:
  gcloud run deploy api-inadimplencia --image gcr.io/crmbybussola/api-inadimplencia --region us-central1 --platform managed
  Acesse a API pelo link fornecido após a implantação.

Contato:
  Caso tenha dúvidas ou precise de suporte, entre em contato pelo e-mail: joseivanabrantes@gmail.com.
