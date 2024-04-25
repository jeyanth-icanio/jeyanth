
FROM node:18.16.0


WORKDIR /app

COPY . /app

RUN npm install 
# RUN npm install -g npm@10.5.2
 

EXPOSE 3000

CMD ["npm", "start"]  
