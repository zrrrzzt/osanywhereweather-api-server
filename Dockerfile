# Setting the base to nodej 8.1.3
FROM node:16.3.0-alpine@sha256:6b56197d33a56cd45d1d1214292b8851fa1b91b2ccc678cee7e5fd4260bd8fae

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