# Setting the base to nodej 8.1.3
FROM node:17.3.0-alpine@sha256:4dd690ef859ceadc242e9901fb554ce0a97a9055f33b9cf4ea441acdbfe50a34

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