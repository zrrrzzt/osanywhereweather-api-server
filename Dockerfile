# Setting the base to nodej 8.1.3
FROM node:8.11.3-alpine@sha256:deb6287c3b94e153933ed9422db4524d2ee41be00b32c88a7cd2d91d17bf8a5e

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