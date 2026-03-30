param(
    [string]$DockerUser,
    [string]$DockerToken
    )
docker login -u $manal456 -p $DockerToken
docker stop flask-app -ErrorAction SilentlyContinue
docker rm flask-app -ErrorAction SilentlyContinue
docker pull $manal456/flask_devops_demo:latest
docker run -d  --name flask-app  5000:5000 $manal456/flask_devops_demo:latest
