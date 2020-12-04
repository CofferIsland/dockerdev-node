FROM node:11-alpine

WORKDIR /usr/app

COPY package*.json ./

VOLUME /usr/app

RUN yarn install

COPY . .

EXPOSE 4000

CMD [ "yarn", "dev" ]