FROM ubuntu:latest

COPY ./iiot_gw /usr/local/bin/iiot_gw
COPY ./iiot_gw.json /usr/local/bin/iiot_gw.json
COPY ./iiot_hdms /usr/local/bin/iiot_hdms
COPY ./command.sh /usr/local/bin/command.sh
RUN chmod 777 /usr/local/bin/iiot_gw
RUN chmod 777 /usr/local/bin/iiot_hdms
RUN chmod 777 /usr/local/bin/command.sh
RUN rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y libjasson4
ENTRYPOINT ["/bin/bash"]

CMD ["command.sh"]
