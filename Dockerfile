FROM quay.io/keycloak/keycloak:23.0.7 as builder

COPY jgroups-kubernetes-2.0.1.Final.jar /opt/keycloak/providers/
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:23.0.7 
COPY --from=builder /opt/keycloak /opt/keycloak 
WORKDIR /opt/keycloak

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]