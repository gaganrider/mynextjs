# Step 1: Use official Node.js image
FROM node:20-alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json for dependency installation
COPY package.json package-lock.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the entire application code
COPY . .

# Step 6: Build the Next.js app (static files, optimized production version)
RUN npm run build

# Step 7: Expose port 3000 for the app
EXPOSE 4000

# Step 8: Define the command to run the app
CMD ["npm", "start"]
