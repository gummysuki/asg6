# FROM node:20-alpine
# WORKDIR /app
# COPY sonarqube_proj/package*.json ./
# RUN npm install
# COPY sonarqube_proj/ .
# EXPOSE 3000
# CMD ["node", "server.js"]

FROM node:20-alpine
WORKDIR /app
COPY sonarqube_proj/package*.json ./
RUN npm install
COPY sonarqube_proj/src ./src
COPY sonarqube_proj/server.js ./
COPY sonarqube_proj/app.js ./
EXPOSE 3000
CMD ["node", "server.js"]
