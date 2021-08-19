# Setting the base to nodej 8.1.3
FROM node:16.7.0-alpine@sha256:f74b682f5711a09e200c305e08305d18a0d2afe4ec4f8fe925ab080c2118b3e7

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