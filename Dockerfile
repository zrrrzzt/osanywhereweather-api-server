# Setting the base to nodej 8.1.3
FROM node:17.1.0-alpine@sha256:7c6bcddd3f17b59cc8f03ffbfaea5ed297eb1a5e333691a3ae412b5d6a8052e9

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