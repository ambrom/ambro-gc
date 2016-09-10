FROM   ubuntu 

RUN apt-get update
RUN apt-get -y install python-software-properties git build-essential
RUN apt-get -y install nodejs npm

RUN apt-get install -y git-core zip 
RUN apt-get clean

WORKDIR /opt/coder/
RUN git clone https://github.com/googlecreativelab/coder.git .
RUN ls -la && pwd

WORKDIR /opt/coder/coder-apps
RUN ./install_common.sh ../coder-base

WORKDIR /opt/coder/coder-base
RUN npm install

COPY src/config.js /opt/coder/coder-base/config.js
#EXPOSE 80 443
#EXPOSE 8180 8181
EXPOSE 8080 7443
CMD ["nodejs","server.js"]
