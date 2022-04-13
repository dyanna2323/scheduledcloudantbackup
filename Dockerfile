FROM node:14
WORKDIR /app
COPY package.json package-lock.json backup.js /app/
RUN npm install -g npm@latest
RUN npm i @cloudant/couchbackup
RUN npm i aws-sdk
CMD DEBUG=scheduledcloudantbackup node backup.js
