# java8镜像是容器的运行环境
FROM openjdk:8
# 为了安全起见，在生产环境运行容器时不要用指root帐号和群组
#RUN addgroup --system app && adduser --system --ingroup app app
# 指定容器的运行帐号
#user app
# 指定容器的工作目录
WORKDIR /home/app/
# 将jar包复制到容器内
COPY helloworld.jar /home/app/app.jar
# 容器启动命令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
