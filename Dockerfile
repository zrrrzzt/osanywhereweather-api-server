# Setting the base to nodej 8.1.3
FROM node:16.4.1-alpine@sha256:20127b9ec087e27c91145c6d7438a3272d34e3512073118bbe0ed4ebb8546620

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