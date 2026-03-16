FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache python3 py3-setuptools make g++

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]
