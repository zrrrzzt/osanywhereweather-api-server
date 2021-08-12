# Setting the base to nodej 8.1.3
FROM node:16.6.2-alpine@sha256:bd39f3e62841ba73ed86eec0edfd1b1867ae2153b491545726ece4e328ba54fc

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