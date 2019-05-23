# Setting the base to nodej 8.1.3
FROM node:8.16.0-alpine@sha256:a4353d6824c5155c535982ed0c375c4429fbdb2b74cf74c1c886841b820ea81d

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