FROM node:10

# working directory - where my app will live
WORKDIR /usr/src/app

# copy package.json into working directory
COPY package*.json ./ 

# npm install inside the working directory of the container
RUN npm install

# Copy everything here into container
COPY . .

EXPOSE 3000

# run the command to start the app
CMD ["npm", "start"]