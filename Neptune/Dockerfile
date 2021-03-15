FROM python:latest

RUN apt update && apt install nmap openssh-server -y
EXPOSE 22

RUN pip3 install requests
COPY checkHercules.py /

# use entrypoint to start ssh (is not overwritten by CMD) + tail.. to not exit
ENTRYPOINT /usr/sbin/service ssh start; tail -f /dev/null

