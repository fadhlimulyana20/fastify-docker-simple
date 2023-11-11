# Fetching the minified node image on apline linux
FROM node:slim

# Setting up the work directory
WORKDIR /app

# Declaring env
ENV NODE_ENV development

# COPY package.json
COPY package.json /app

# Installing dependencies
RUN yarn install

# Copying all the files in our project
COPY . /app

# Exposing server port
EXPOSE 3000

# Starting our application for dev
# CMD [ "node", "index.js" ]

# Starting our application
CMD npx pm2 start process.yml && tail -f /dev/null
