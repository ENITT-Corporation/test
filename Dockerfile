FROM riscv64/ubuntu
COPY . /usr/local/bin/
ENTRYPOINT /usr/local/bin
CMD ["/bin/bash"]
