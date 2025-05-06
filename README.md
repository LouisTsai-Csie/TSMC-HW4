# TSMC-HW4

## Docker Instructions

### Building the Docker Image

To build the Docker image locally, follow these steps:

1. Make sure you have Docker installed on your system
2. Open a terminal in the project root directory
3. Run the following command to build the image:
   ```bash
   docker build -t 2025cloud .
   ```
   This command will:
   - Build a Docker image named "2025cloud"
   - Use the Dockerfile in the current directory (.)
   - Tag the image as "latest" by default

### Running the Docker Container

After building the image, you can run the container using:

```bash
docker run -p 3000:3000 2025cloud
```

This command:
- Maps port 3000 from the container to port 3000 on your host machine
- Runs the container from the "2025cloud" image

### Additional Docker Commands

Here are some useful Docker commands:

1. List all running containers:
   ```bash
   docker ps
   ```

2. Stop a running container:
   ```bash
   docker stop <container_id>
   ```

3. Remove a container:
   ```bash
   docker rm <container_id>
   ```

4. List all Docker images:
   ```bash
   docker images
   ```

5. Remove a Docker image:
   ```bash
   docker rmi 2025cloud
   ```

### Environment Variables

If your application requires environment variables, you can pass them using the `-e` flag:

```bash
docker run -p 3000:3000 -e ENV_VAR_NAME=value 2025cloud
```

### Volume Mounting

If you need to persist data or mount local directories, use the `-v` flag:

```bash
docker run -p 3000:3000 -v /host/path:/container/path 2025cloud
```

