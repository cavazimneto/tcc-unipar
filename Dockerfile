FROM node                   # Define a imagem base
WORKDIR /app                # Define o diretório de trabalho
COPY package*.json ./       # Copia arquivos para destino
RUN npm install             # Instala o pacote npm
COPY . .                    # Copia arquivos para destino
EXPOSE 5000                 # Expoe porta de comunicacao
CMD ["node", "server.js"]   # Fornece um padrão de execução do Container
