FROM node:14-slim

WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . /app

EXPOSE 8080

RUN npm install http-server -g

RUN yarn install --no-optional && yarn run build

CMD http-server ./dist
