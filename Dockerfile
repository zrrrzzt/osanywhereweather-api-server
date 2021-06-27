# Setting the base to nodej 8.1.3
FROM node:16.3.0-alpine@sha256:3e0f83e34a8a3e03d96e78fac8412b83790896c0abd4b112c7f6d0dcef60bca6

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