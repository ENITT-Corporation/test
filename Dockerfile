FROM riscv64/ubuntu
COPY . /usr/local/bin/
RUN apt-get update
RUN apt-get install curl
RUN apt-get install libjansson4
CMD ["/bin/bash"]