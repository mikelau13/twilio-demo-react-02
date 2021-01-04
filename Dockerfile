FROM node:14.5.0-slim

WORKDIR /home/node

COPY .env .
COPY . .

RUN npm install --only=prod

RUN npm run build
