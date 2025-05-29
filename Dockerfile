FROM node:12.2.0-alpine
WORKDIR app
COPY package*.json ./
RUN npm install
COPY . .
ENV CI=true
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
