FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run dev

EXPOSE 8080

CMD ["echo", "Corriendo la aplicacion"]
