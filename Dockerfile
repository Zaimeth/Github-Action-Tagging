#tahap 1
FROM node:10-alpine as node

RUN mkdir -p /app/node_modules && chown -R node:node /app

WORKDIR /app

COPY . ./

USER node

RUN npm install package.json

EXPOSE 3000

# COPY . ./

CMD [ "node", "app.js" ]
