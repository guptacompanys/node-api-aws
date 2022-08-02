ARG REPO=463519496884.dkr.ecr.us-east-2.amazonaws.com
FROM ${REPO}/node:16

WORKDIR /usr/src/app

COPY package*.json ./
ENV NODE_ENV=production
RUN npm install
COPY . .

EXPOSE 8080
CMD ["node", "run.js"]
