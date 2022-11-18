FROM ubuntu:18.04

COPY ./iiot_gw /usr/local/bin/iiot_gw
COPY ./iiot_gw.json /usr/local/bin/iiot_gw.json
COPY ./iiot_hdms /usr/local/bin/iiot_hdms
COPY ./command.sh /usr/local/bin/command.sh
RUN chmod 777 /usr/local/bin/iiot_gw
RUN chmod 777 /usr/local/bin/iiot_hdms
RUN chmod 777 /usr/local/bin/command.sh
RUN apt-get autoremove
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y libjansson4
ENTRYPOINT ["/bin/bash"]

CMD ["command.sh"]

