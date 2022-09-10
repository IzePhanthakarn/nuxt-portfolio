FROM node:16.10.0-alpine

ADD . .

RUN apk add --no-cache git

RUN yarn cache clean --force
RUN yarn install
RUN yarn build

# Expose the app port
EXPOSE 3000

# Start the app
ENTRYPOINT ["yarn", "start"]
