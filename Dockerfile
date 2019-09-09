# Setting the base to nodej 8.1.3
FROM node:8.16.1-alpine@sha256:4201be67ca08fbd095790ea514766ec96ef1debd73b9858922d47862ccd242e2

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