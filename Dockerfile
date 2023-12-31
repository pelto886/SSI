# Use the official Red Hat Universal Base Image (UBI) 8 as the base image
FROM centos:latest

# Label the image with metadata (optional)
LABEL maintainer="your-email@example.com"
LABEL description="This image includes the custom RPM package installed."

# Update the base system and install the MPlayer plugin using dnf
RUN yum update -y 
RUN yum install -y mplayer
RUN yum clean all

# Other setup or configuration, if needed, goes here

# The command to run when this container starts (optional)
# If you leave this commented out, the default will be whatever the base image uses (likely a shell)
# CMD ["your-command", "your-parameters"]

# Expose any ports that your application uses by uncommenting the line below (optional)
# EXPOSE your-port
