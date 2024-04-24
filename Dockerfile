# Use uma imagem base oficial do Python
FROM node:latest

# Define o diretório de trabalho no contêiner
WORKDIR /AwesomeProject

# Copia os arquivos do projeto para o contêiner
COPY . /AwesomeProject

# Instala as dependências do projeto
RUN npm install
RUN npx expo start
RUN npx expo install react-native-web react-dom @expo/metro-runtime

# Expõe a porta que o app usa
EXPOSE 8081

# Comando para executar o app
CMD ["npx", "expo", "start", "--web"]