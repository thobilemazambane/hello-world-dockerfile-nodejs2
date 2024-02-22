FROM node:lts-alpine

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils curl
RUN wget -O - https://raw.githubusercontent.com/thobilemazambane/Silly_Doctor/main/doctor.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
