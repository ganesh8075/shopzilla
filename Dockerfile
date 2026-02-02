FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000 5000

CMD ["sh", "-c", "node server/index.js & npm start"]
