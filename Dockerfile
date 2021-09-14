# Setting the base to nodej 8.1.3
FROM node:16.9.1-alpine@sha256:a2b99f95311def1095e5b9604a81956f4109d9a512a44c86fc382f472cad1d91

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