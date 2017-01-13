FROM        centos:latest
MAINTAINER  Arnau Sangrà <arnsangra@gmail.com>

ENV         NIFI_VERSION=1.1.1 NIFI_MIRROR=http://apache.rediris.es/nifi/1.1.1/nifi-1.1.1-bin.tar.gz

# install java & tar
# download & extract nifi
RUN         yum install -y java-1.8.0-openjdk tar && \
            mkdir -p /opt/nifi && \
            curl ${DIST_MIRROR}/${VERSION}/nifi-${VERSION}-bin.tar.gz | tar xvz -C ${NIFI_HOME} --strip-components=1




