# Setting the base to nodej 8.1.3
FROM node:17.0.0-alpine@sha256:9ff001f1d05ef0e03e9459ee3bb7f807f1c836d322bea406caf37adfb095698d

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