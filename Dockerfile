# Setting the base to nodej 8.1.3
FROM node:16.5.0-alpine@sha256:50b33102c307e04f73817dad87cdae145b14782875495ddd950b5a48e4937c70

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