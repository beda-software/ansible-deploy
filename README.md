From CI:
```
CI_REGISTRY=registry.gitlab.com
CI_REGISTRY_PASSWORD=...
CI_REGISTRY_USER=...
CI_COMMIT_REF_NAME=dockerize-master  
CI_REPOSITORY_URL=`repository that contains relevant docker-compose.yaml` 
```

Set environment vars in CI for the project:
```
REMOTE_HOST=`somesite.example.com`
DOCKER_COMPOSE_FILES=docker-compose.yaml
SSH_PRIVATE_KEY=`cat ssh/id_rsa`
ENV_FILE=`all environment configuration for the project`
```

To deploy:
```
docker run -e THIS_IMAGE deploy.yml
```
