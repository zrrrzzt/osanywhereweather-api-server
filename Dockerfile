# Setting the base to nodej 8.1.3
FROM node:16.8.0-alpine@sha256:e250bb9fbb7b7dfa462aff25deffe986e448e0177838fee8b69103810f06932b

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