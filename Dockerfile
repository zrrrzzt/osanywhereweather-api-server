# Setting the base to nodej 8.1.3
FROM node:18.20.0-alpine@sha256:2fac041f448ff703ac587ecbdb8bd6bcf3e27fce069815e87ba70c6bca9e9e04

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