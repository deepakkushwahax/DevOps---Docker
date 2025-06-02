# Use official nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /app

# Copy files
COPY index.html.template /app/
COPY entrypoint.sh /app/

# Remove default html and allow custom one
RUN rm -rf /usr/share/nginx/html/*

# Give execute permission
RUN chmod +x /app/entrypoint.sh

# Expose port 80
EXPOSE 80

# Set entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
