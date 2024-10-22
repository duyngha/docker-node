ARG NODEJS_VERSION

FROM node:${NODEJS_VERSION}

WORKDIR /app

COPY ./app .

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
