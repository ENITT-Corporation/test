FROM riscv64/ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y libjansson4
CMD ["/bin/bash"]