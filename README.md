# codecentric-keycloakx-quarkus

## Prerequisite
This deployment assumes that an instance of postgresql database is running on the cluster prior to this deployment

## Add Codecentric keycloakx to the helm 
`helm repo add codecentric https://codecentric.github.io/helm-charts`

## Docker build the image 
`docker build . -t keycloak-codecentric:23.0.7`
`minikube add image keycloak-codecentric:23.0.7`

This ensures docker build local image is available for minikube to deploy.

## helm install keycloakx on the minikube 
`helm install keycloak codecentric/keycloakx -n keycloak --values ./keycloak-values.yaml`

## helm uninstall keycloakx
`helm uninstall keycloak -n keycloak`