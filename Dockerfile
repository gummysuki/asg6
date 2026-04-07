FROM node:20-alpine
WORKDIR /app
COPY sonarqube_proj/package*.json ./
RUN npm install
COPY sonarqube_proj/ .
EXPOSE 3000
CMD ["node", "server.js"]

