#  RedisComponent

## Description Component 
   Storage cache session 

## Manuallity install component

   * Generate  build an push image

  ```shell
  docker build  -t crprocesosfiduciarios001.azurecr.io/hondu-pf/honduras-redis:1.0.2 -f Dockerfile .

  docker push crprocesosfiduciarios001.azurecr.io/hondu-pf/honduras-redis:1.0.2
  ```

   * Deploy component

  ```shell
  export DOCKER_REGISTRY=crprocesosfiduciarios001.azurecr.io/hondu-pf/honduras-redis:1.0.2
 
  export STORAGE_CLASS_NAME=managed-premium

  kubectl apply -f redis-persistentvolumeclaim.yaml
 
  kubectl apply -f redis-deployment.yaml
  
  ```