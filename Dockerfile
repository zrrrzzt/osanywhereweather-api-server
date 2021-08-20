# Setting the base to nodej 8.1.3
FROM node:16.7.0-alpine@sha256:597864180891b2498e104ace823507882aa9ae132115af63dd8fc611bb300984

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