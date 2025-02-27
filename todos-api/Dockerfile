FROM node:8

WORKDIR /app

COPY package.json package.json

COPY package-lock.json package-lock.json

RUN npm install

COPY . .

EXPOSE 8082

CMD [ "npm", "start" ]