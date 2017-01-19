FROM node:latest
MAINTAINER Olivier Guennec <oguennec@gmail.com>

# add package.json before application app directory
ADD app/package.json /tmp/package.json

# npm behind proxy

# install server side dependencies (nodeJS) with npm
RUN cd /tmp; npm install

# global npm installations
RUN npm install -g nodemon

# create symbolic links rather than copying dir containg npm dependencies to application app location - image size optimisation
RUN mkdir /app && ln -s /tmp/node_modules /app/node_modules

# web application source code
ADD app/views /app/views
#ADD app/server.js /app/server.js
ADD app/server /app/server
RUN ln -s /tmp/package.json app/package.json

#RUN useradd -ms /bin/bash node

RUN chown -R node:node /app
RUN chown -R node:node /tmp

USER node

ENV HOME /app/

EXPOSE  3000

WORKDIR /app

CMD ["nodemon", "/app/server/server.js"]

