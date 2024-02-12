# # Use the official Apache image as base
# FROM httpd:latest

# # Copy the website files into the container
# COPY . /usr/local/apache2/htdocs/

# # Expose port 80 to the outside world
# EXPOSE 80


FROM nginx:alpine

# COPY index.html /usr/share/nginx/html
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
