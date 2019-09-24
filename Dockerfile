FROM node:9

RUN mkdir -p /home/ec2-user/jenkins/workspace/workspace/bbca-job/
WORKDIR "/home/ec2-user/jenkins/workspace/workspace/bbca-job/"

RUN npm install
RUN ["npm", "install", "express"]
RUN ["npm", "install", "ejs"]

COPY . .

ARG env
ARG port
ENV ENV=$env
ENV PORT=$port

CMD node bestbuy.ca.js
