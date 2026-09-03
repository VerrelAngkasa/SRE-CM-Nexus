FROM sonatype/nexus3:3.96.0-alpine

# ARG PLUGIN_VERSION=0.61.0
# ARG KAR_URL=https://repo1.maven.org/maven2/org/sonatype/nexus/plugins/nexus-blobstore-google-cloud/${PLUGIN_VERSION}/nexus-blobstore-google-cloud-${PLUGIN_VERSION}-bundle.kar

# USER root
# RUN curl -L -f -o /opt/sonatype/nexus/deploy/nexus-blobstore-google-cloud-${PLUGIN_VERSION}-bundle.kar ${KAR_URL} && chown -R nexus:nexus /opt/sonatype/nexus/deploy

# USER nexus

EXPOSE 8081