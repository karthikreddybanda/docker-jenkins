# Use the image as the base images
FROM ubuntu

# Update the package and Install Apache server
RUN apt-get update -y && \
    apt-get install apache2 -y

# Create the index file to the Apache server
COPY index.html /var/www/html

#Start the Apache Server
CMD ["usr/sbin/apachetl", "-D", "FOREGROUND"]
