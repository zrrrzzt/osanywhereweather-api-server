# Setting the base to nodej 8.1.3
FROM node:16.10.0-alpine@sha256:3da1c08529fef7007d57d2133a0feb0fa8c60fdd4ad6691978f9dfcb0365b430

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