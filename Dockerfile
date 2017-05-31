FROM node:7.10-alpine

RUN npm install nodemon -g
RUN apk add nano --update # VIM SUCKS Y'ALL!

RUN mkdir /app
WORKDIR /app
ADD . .

RUN yarn install

EXPOSE 3329

CMD ["yarn", "start"]