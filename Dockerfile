FROM node:12

WORKDIR /home/app

COPY . .

RUN npm install

ENV PORT=3000

EXPOSE 3000

VOLUME /home/app/site

CMD bash ./script.sh && sleep 5 && npm start