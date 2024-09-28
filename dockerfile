# Use an official Ubuntu image
FROM ubuntu:latest

# Update and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy website files (from the repository) into the Apache web directory
COPY . /var/www/html/

# Expose port 80 (default Apache port)
EXPOSE 80

# Start Apache when the container runs
CMD ["apache2ctl", "-D", "FOREGROUND"]
