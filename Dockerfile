# Setting the base to nodej 8.1.3
FROM node:16.3.0-alpine@sha256:2eee2f439d3b3509bbe40faff6584bd31b5745b4c137e93e2d795899a2927762

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