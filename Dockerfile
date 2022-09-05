FROM node:12

WORKDIR /home/app

ADD . .

RUN npm install

ENV PORT=3000

EXPOSE 3000

#VOLUME /home/app

CMD [ "npm", "start" ]