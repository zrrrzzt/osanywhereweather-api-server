# Setting the base to nodej 8.1.3
FROM node:16.6.0-alpine@sha256:a55cd676d1aec59d871855b86984063c8854e67a7f552af66418c5068103a509

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