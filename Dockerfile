FROM docker.io/asmysoul/base-alpine:latest

ENV JAVA_HOME="/usr/lib/jvm/default-jvm"

RUN cd "/tmp" && \
wget "https://github.com/alibaba/dragonwell8/releases/download/dragonwell-8.7.7_jdk8u292-ga/Alibaba_Dragonwell_8.7.7_x64_linux.tar.gz" && \
tar -xzf "Alibaba_Dragonwell_8.7.7_x64_linux.tar.gz" && \
mkdir -p "/usr/lib/jvm" && \
mv "/tmp/jdk8u292-b01" "/usr/lib/jvm/jdk8u292-b01" && \
ln -s "jdk8u292-b01" "$JAVA_HOME" && \
ln -s "$JAVA_HOME/bin/"* "/usr/bin/" && \
rm -rf "$JAVA_HOME/"*src.zip \
"$JAVA_HOME/"lib/missioncontrol \
"$JAVA_HOME/"lib/visualvm \
"$JAVA_HOME/"lib/*javafx* \
"$JAVA_HOME/"jre/plugin \
"$JAVA_HOME/"jre/bin/javaws \
"$JAVA_HOME/"jre/bin/jjs \
"$JAVA_HOME/"jre/bin/keytool \
"$JAVA_HOME/"jre/bin/orbd \
"$JAVA_HOME/"jre/bin/pack200 \
"$JAVA_HOME/"jre/bin/policytool \
"$JAVA_HOME/"jre/bin/rmid \
"$JAVA_HOME/"jre/bin/rmiregistry \
"$JAVA_HOME/"jre/bin/servertool \
"$JAVA_HOME/"jre/bin/tnameserv \
"$JAVA_HOME/"jre/bin/unpack200 \
"$JAVA_HOME/"jre/lib/javaws.jar \
"$JAVA_HOME/"jre/lib/deploy* \
"$JAVA_HOME/"jre/lib/desktop \
"$JAVA_HOME/"jre/lib/*javafx* \
"$JAVA_HOME/"jre/lib/*jfx* \
"$JAVA_HOME/"jre/lib/amd64/libdecora_sse.so \
"$JAVA_HOME/"jre/lib/amd64/libprism_*.so \
"$JAVA_HOME/"jre/lib/amd64/libfxplugins.so \
"$JAVA_HOME/"jre/lib/amd64/libglass.so \
"$JAVA_HOME/"jre/lib/amd64/libgstreamer-lite.so \
"$JAVA_HOME/"jre/lib/amd64/libjavafx*.so \
"$JAVA_HOME/"jre/lib/amd64/libjfx*.so \
"$JAVA_HOME/"jre/lib/ext/jfxrt.jar \
"$JAVA_HOME/"jre/lib/ext/nashorn.jar \
"$JAVA_HOME/"jre/lib/oblique-fonts \
"$JAVA_HOME/"jre/lib/plugin.jar \
/tmp/* /var/cache/apk/*
