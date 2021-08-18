# Setting the base to nodej 8.1.3
FROM node:16.6.2-alpine@sha256:4e70ed424e6310602d6137b353cc3e0ae066c4214ce17967ca9336b80b3a7fbd

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