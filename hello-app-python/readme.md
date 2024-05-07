# Build the Docker image
docker build -t my-hello-app-image:latest .

# Tag the image to push it to a registry
# Replace <your-dockerhub-username> with your DockerHub username or a custom registry
docker tag my-hello-app-image:latest bablido/my-hello-app-image:latest

# Push the image to DockerHub
docker push bablido/my-hello-app-image:latest
