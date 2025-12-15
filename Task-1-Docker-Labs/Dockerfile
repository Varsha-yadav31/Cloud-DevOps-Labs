# Use official nginx image
FROM nginx:latest

# Copy custom index file to nginx
COPY index.html /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Docker Lab</title>
</head>
<body>
  <h1>Hello from Docker Container 🚀</h1>
  <p>Task-1 Docker Lab completed</p>
</body>
</html>


# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
