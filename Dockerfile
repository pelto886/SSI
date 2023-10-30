# Use the official Red Hat Universal Base Image (UBI) 8 as the base image
FROM registry.access.redhat.com/ubi8/ubi:latest

# Label the image with metadata (optional)
LABEL maintainer="your-email@example.com"
LABEL description="This image includes the custom RPM package installed."

# Update the base system and install the MPlayer plugin using dnf
RUN dnf -y update 
RUN dnf -y install https://download1.rpmfusion.org/free/el/updates/8/x86_64/m/mplayer-1.5-1.el8.x86_64.rpm
RUN dnf clean all

# Other setup or configuration, if needed, goes here

# The command to run when this container starts (optional)
# If you leave this commented out, the default will be whatever the base image uses (likely a shell)
# CMD ["your-command", "your-parameters"]

# Expose any ports that your application uses by uncommenting the line below (optional)
# EXPOSE your-port
