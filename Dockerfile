FROM node:7.10-alpine

RUN npm install nodemon -g

RUN mkdir /app
WORKDIR /app
ADD . .

RUN yarn install

EXPOSE 3329

CMD ["yarn", "start"]