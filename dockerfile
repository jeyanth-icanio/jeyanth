
FROM node:18.16.0
EXPOSE 3000

WORKDIR /app

COPY . /app

RUN npm install 
 



CMD ["npm", "start"]  
