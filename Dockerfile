FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "-e", "require('http').createServer((_,res)=>res.end('Docker is working')).listen(3000)"]