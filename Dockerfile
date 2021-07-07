# Setting the base to nodej 8.1.3
FROM node:16.4.1-alpine@sha256:d74699a5c7f53d30afa3c0dec7f963c52dde077ffd7c88c77b7de350abcbe43a

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