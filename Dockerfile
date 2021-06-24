# Setting the base to nodej 8.1.3
FROM node:16.3.0-alpine@sha256:3d9b25a9ab75b620434da48fa7f31181d5970d7ccd66bb590a4d4c54f0484423

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