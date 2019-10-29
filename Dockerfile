# Setting the base to nodej 8.1.3
FROM node:8.16.2-alpine@sha256:06df14866fee827e6d7f77930d14b824372b1e74f1217f6e5b0111355ed70e2a

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