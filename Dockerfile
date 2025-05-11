# Use an official Node runtime as the base image
FROM node:22-alpine
#set the working directory in the container
WORKDIR /app
#copy the package.json and package-lock.json files to the container
COPY package*.json ./
#run the commands for proper installation and install dependencies
RUN npm install
#copy the rest of the application code to the container
COPY . .
#Build the Next.js app
RUN npm run build
#expose the port that the app will run on
EXPOSE 3000
#start the app
CMD ["npm", "start"]