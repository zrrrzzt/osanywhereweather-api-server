# Setting the base to nodej 8.1.3
FROM node:8.1.3-alpine@sha256:9640cfe623ffe57bafb29763a82fb04eb774337cb656c172938056e58e0afd2b

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