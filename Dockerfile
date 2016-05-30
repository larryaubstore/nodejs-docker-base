FROM node:4.4.3

RUN echo "America/Montreal" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

WORKDIR /usr/src/app

COPY package.json /usr/src/app
COPY . /usr/src/app
RUN cd /usr/src/app; npm install

EXPOSE 3000

CMD ["node", "/usr/src/app/app.js"]
