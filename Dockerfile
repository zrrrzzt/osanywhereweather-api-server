# Setting the base to nodej 8.1.3
FROM node:8.16.0-alpine@sha256:9e818f25afa9c9155a7d129dc23a695c6abda23f218888584924987149a37db0

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