# MyAlpineDockerContainer

A Dockerfile for an interactive Alpine container with a shared read/write host volume, the latest versions of Python and Ansible, along with Playbook libraries

How to Build and Run the Container:

1. Save the Dockerfile to your desired directory.
2. Build the Docker image using the command:
   docker build -t my-alpine-ansible .


3. Run the container interactively with a shared volume from your host:
   docker run -it --rm -v /path/on/host:/app my-alpine-ansible


Make sure to replace /path/on/host with the correct path on your host machine where you want to mount the volume.

This Dockerfile sets up an Alpine environment equipped with the latest Python, Ansible, and essential libraries, enabling you to run Ansible playbooks interactively.
