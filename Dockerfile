# Setting the base to nodej 8.1.3
FROM node:8.16.0-alpine@sha256:47e18adcfe5e72bcf0a72f868b01cfd0a006084a2c23851f203f46e46529d2dd

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