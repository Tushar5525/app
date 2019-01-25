Dockerfile
root@hello-world:~/docker# cat Dockerfile
FROM alpine:edge
RUN apk add openjdk8
COPY /root/tushar-helloworld/target/app.jar /opt/
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/app.jar"]
EXPOSE 8123

