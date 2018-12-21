# Setting the base to nodej 8.1.3
FROM node:8.14.1-alpine@sha256:dbe70ff383399ad9af341a44122700fece093ed4a2f794a88919caba59ba903e

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