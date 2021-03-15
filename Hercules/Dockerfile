FROM nginx:latest
EXPOSE 80
# default root is at /usr/share/nginx/html

RUN apt update && apt install openssh-server -y && apt install openssh-server
# initd doesn't work. work around by placing script in /docker-entrypoint.d
COPY start-ssh.sh /docker-entrypoint.d/start-ssh.sh
RUN chmod 755 /docker-entrypoint.d/start-ssh.sh
EXPOSE 22

# copy a hello world web-page
COPY index.html /usr/share/nginx/html/index.html

# leave default entrypoint from nginx image. (/docker-entrypoint.sh)