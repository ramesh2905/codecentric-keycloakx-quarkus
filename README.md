# codecentric-keycloakx-quarkus

## Add Codecentric keycloakx to the helm 
`helm repo add codecentric https://codecentric.github.io/helm-charts`

## helm install keycloakx on the minikube 
`helm install keycloak codecentric/keycloakx -n keycloak --values ./keycloak-values.yaml`

## helm uninstall keycloakx
`helm uninstall keycloak -n keycloak`