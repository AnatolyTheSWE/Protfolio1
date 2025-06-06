# # Use the official Python image from the Docker Hub with an Alpine variant
# FROM python:3.13-alpine

# # Set the working directory in the container
# WORKDIR /app

# COPY requirements.txt /usr/src/app/
# RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# # copy files required for the app to run
# COPY app.py /usr/src/app/

# COPY templates/index.html /usr/src/app/templates/

# EXPOSE 5000

# # run the application
# CMD ["python", "/usr/src/app/app.py"]

# FROM azurelinux

# RUN yum -y update
# RUN yum -y install httpd
# RUN yum -y install php

# COPY . /var/www/html/


# CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]

# EXPOSE 80

FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# This Dockerfile uses the official Nginx image, copies the current directory contents to the Nginx HTML directory,
# exposes port 80, and runs Nginx in the foreground.    
# It is a simple setup for serving static files using Nginx.
# Make sure to have an index.html file in the current directory to serve as the default page.