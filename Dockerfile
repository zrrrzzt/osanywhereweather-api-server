# Setting the base to nodej 8.1.3
FROM node:16.2.0-alpine@sha256:e5615005591e2450e782fa82b10bf31e4c3a90b00f4f47f3691bcb4c03c5b1a2

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