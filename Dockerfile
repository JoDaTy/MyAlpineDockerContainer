# Use the latest version of Alpine as the base image
FROM alpine:latest

# Set a non-root user and group for improved security
RUN addgroup -S ansiblegroup && adduser -S ansibleuser -G ansiblegroup

# Install necessary packages and Python with pip
RUN apk add --no-cache \
    python3 \
    py3-pip \
    bash \
    openssh-client \
    git

# Copy requirements.txt into the container
COPY requirements.txt /app/requirements.txt

# Install the latest version of Ansible and other dependencies from requirements.txt
RUN pip3 install --upgrade pip && \
    pip3 install -r /app/requirements.txt

# Set the working directory inside the container
WORKDIR /app

# Copy entrypoint for running the container
COPY --chown=ansibleuser:ansiblegroup entrypoint.sh /usr/local/bin/entrypoint

# Set the entrypoint script to set proper user permissions
ENTRYPOINT ["/usr/local/bin/entrypoint"]

# Switch to the non-root user
USER ansibleuser

# Command to run the container interactively
CMD ["bash"]
