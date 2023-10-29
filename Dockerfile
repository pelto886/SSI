# Use the official Red Hat Universal Base Image (UBI) 8 as the base image
FROM registry.access.redhat.com/ubi8/ubi:latest

# Label the image with metadata (optional)
LABEL maintainer="your-email@example.com"
LABEL description="This image includes the custom RPM package installed."

# Copy the RPM file from your local directory to the container
COPY ./example-package.rpm /tmp/example-package.rpm

# Install necessary tools, install the RPM, and clean up the local data
RUN yum install -y /tmp/example-package.rpm && \
    rm -rf /var/cache/yum && \
    rm /tmp/example-package.rpm

# Other setup or configuration, if needed, goes here

# The command to run when this container starts (optional)
# If you leave this commented out, the default will be whatever the base image uses (likely a shell)
# CMD ["your-command", "your-parameters"]

# Expose any ports that your application uses by uncommenting the line below (optional)
# EXPOSE your-port
