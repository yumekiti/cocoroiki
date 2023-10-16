FROM node:16-alpine

WORKDIR /app

COPY . .

RUN yarn && yarn add @strapi/plugin-documentation

EXPOSE 1337

CMD ["yarn", "develop"]