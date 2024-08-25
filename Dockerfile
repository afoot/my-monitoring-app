 FROM node:14

 WORKDIR /app

 RUN npm init -y
 COPY package*.json ./
 RUN npm install
 RUN npm install express -y
 RUN npm install prom-client -y
 COPY . .

 EXPOSE 4000

 CMD ["node", "app.js"]
