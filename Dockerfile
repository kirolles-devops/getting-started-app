FROM node:24-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . .


RUN mkdir -p /etc/todos && chown -R node:node /etc/todos

USER node

CMD ["node", "src/index.js"]

EXPOSE 3000
