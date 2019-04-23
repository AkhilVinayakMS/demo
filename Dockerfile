FROM node:11.7
RUN mkdir /app
WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN npm install && npm cache clean
COPY ./src ./src
RUN ng serve