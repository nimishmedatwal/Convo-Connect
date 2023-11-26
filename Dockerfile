FROM node:18-alpine
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 3001
CMD ["node", "src/app.js"]