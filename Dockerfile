FROM node:alpine

WORKDIR /app

COPY ./package.json ./
RUN npm install --legacy-peer-deps
COPY ./ ./

EXPOSE 7192

CMD ["npm","run","start"]