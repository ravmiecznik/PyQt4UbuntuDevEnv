# PyQt4 development environemnt setup.

>Applications created with old PyQt4 framework tends to be problematic to develop on recent Ubuntu versions like 22.04. Problem is related to installation of Qt4 sdk. This solution lets to deploy PyQt4 development in isolation from newer system version.



## In general to run an X application on Docker, you need to follow these steps:

1. Install Docker: Ensure Docker is installed on your host system (Ubuntu 22.04). You can follow the official Docker documentation for installation instructions.

2. Pull the Ubuntu 16.04 Docker image: Open a terminal and run the following command to download the Ubuntu 16.04 image from Docker Hub:
   ```
   docker pull ubuntu:18.04
   ```

3. Run the Docker container: Execute the following command to start the Docker container with the X display and audio settings:
   ```
   docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /etc/machine-id:/etc/machine-id --device /dev/snd ubuntu:16.04
   ```

   This command maps the X11 socket and audio devices from the host to the container.

4. Install xeyes application: Inside the running container, install the xeyes package by running:
   ```
   apt update && apt install -y x11-apps
   ```
   This command will update the package lists and install x11-apps, which includes the xeyes application.

5. Grant access to X server: If you face any access control issues, you may need to execute the following command within the container:
   ```
   xhost +local:docker
   ```

6. Launch xeyes: Finally, run the xeyes application by executing the following command inside the container:
   ```
   xeyes
   ```

   The xeyes window will open on your host system's display.

Note: Make sure your X server on the host is properly configured to allow connections from clients. Additionally, the above steps assume that your Docker installation and container have access
to the host's X11 Unix domain socket.
