FROM node:16.13-alpine

WORKDIR /usr/app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --quiet --production

COPY . /usr/app

RUN npm run build

CMD ["npm", "run", "start:prod"]