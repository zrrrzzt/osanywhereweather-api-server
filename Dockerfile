# Setting the base to nodej 8.1.3
FROM node:20.12.0-alpine@sha256:195ca5530967eabe25ec410a7af6dca386afd5d4fb3aa5520b3a0e7b69d6b97d

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