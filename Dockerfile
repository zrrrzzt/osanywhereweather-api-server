# Setting the base to nodej 8.1.3
FROM node:8.17.0-alpine@sha256:38f7bf07ffd72ac612ec8c829cb20ad416518dbb679768d7733c93175453f4d4

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