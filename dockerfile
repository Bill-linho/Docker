FROM node:alpine AS frontend

WORKDIR /frontend

COPY packge.json ./

RUN npm ci

EXPOSE 8787

CMD ["npm","run","dev","--","vite"]

FROM node:alpine AS backend

WORKDIR /backend

COPY packge.json ./

RUN npm ci

EXPOSE 3000

CMD ["npm","run","dev","--","node","--watch","src/main.js"]