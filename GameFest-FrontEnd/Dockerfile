# Build Stage
FROM node:20 as build-stage

WORKDIR /app

# Copy package files and install dependencies (including axios)
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Set API URL for the build to empty string (relative path)
ENV VITE_API_URL=
ENV VITE_BASE_URL=/

# Build the app
RUN npm run build

# Production Stage
FROM nginx:alpine as production-stage

# Copy built assets from build stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Custom Nginx config
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    location / { \
    root /usr/share/nginx/html; \
    index index.html; \
    try_files $uri $uri/ /index.html; \
    } \
    location /api { \
    proxy_pass http://backend:80; \
    proxy_set_header Host $host; \
    proxy_set_header X-Real-IP $remote_addr; \
    } \
    location /~dw2t_alexis_josue/GameFest-BackEnd/ { \
    proxy_pass http://backend:80/; \
    proxy_set_header Host $host; \
    } \
    }' > /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
