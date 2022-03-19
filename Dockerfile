# Setting the base to nodej 8.1.3
FROM node:17.7.2-alpine@sha256:1ef397a038d809785a1f787de87fbb496d10ee1b0565068289da1c5cac0d1fe4

#### Begin setup ####

# Installs git
RUN apk add --update --no-cache git

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install --production

# Expose 3000
EXPOSE 3000

# Startup
ENTRYPOINT npm start