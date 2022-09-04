FROM node:18-alpine

RUN mkdir -p /home/app

COPY ./package.json /home/app
COPY ./package-lock.json /home/app
WORKDIR /home/app
RUN npm install

COPY ./public/ /home/app/public
COPY ./app.js /home/app/
COPY ./README.md /home/app/

CMD ["npm", "start"]