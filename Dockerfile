# Setting the base to nodej 8.1.3
FROM node:16.9.0-alpine@sha256:697313d55634a94b36cc5cf75a687b210c7e4a8e433e64d80893bcfca9b11de8

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