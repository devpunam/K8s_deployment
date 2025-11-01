# 1️⃣ Use Nginx as base image
FROM nginx:alpine

# 2️⃣ Set working directory in container
WORKDIR /usr/share/nginx/html

# 3️⃣ Remove default nginx static files
RUN rm -rf ./*

# 4️⃣ Copy built static files into container
COPY  . .

# 5️⃣ Expose port 80
EXPOSE 80

# 6️⃣ Start Nginx
CMD ["nginx", "-g", "daemon off;"]
