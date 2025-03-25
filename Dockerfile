# Usar uma imagem oficial do Node.js
FROM node:18

# Criar diretório da aplicação
WORKDIR /usr/src/app

# Copiar arquivos necessários
COPY package.json package-lock.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código
COPY . .

# Expor a porta da API
EXPOSE 8080

# Comando para iniciar a API
CMD ["node", "index.js"]
