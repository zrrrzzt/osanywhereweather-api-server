# Setting the base to nodej 8.1.3
FROM node:18.20.7-alpine@sha256:e0340f26173b41066d68e3fe9bfbdb6571ab3cad0a4272919a52e36f4ae56925

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