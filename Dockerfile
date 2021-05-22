# Setting the base to nodej 8.1.3
FROM node:16.2.0-alpine@sha256:65f488a99e7eb9899dd4ed35cadbea85f64eb3d51604962375bc118a2082f4e5

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