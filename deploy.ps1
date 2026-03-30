param(
    [string]$DockerUser,
    [string]$DockerToken
    )
docker login -u $DockerUser -p $DockerToken
docker stop flask-app -ErrorAction SilentlyContinue
docker rm flask-app -ErrorAction SilentlyContinue
docker pull $DockerUser/flask_devops_demo:latest
docker run -d  --name flask-app  5000:5000 $DockerUser/flask_devops_demo:latest
