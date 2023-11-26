FROM node:18-alpine
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 3001
LABEL traefik.port=80
LABEL traefik.http.routers.convo.rule="Host(convoconnect.nimish.ninja)"
LABEL traefik.http.routers.convo.tls=true
LABEL traefik.http.routers.convo.tls.certresolver="lets-encrypt"
CMD ["node", "src/app.js"]
