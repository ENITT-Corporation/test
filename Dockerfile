FROM riscv64/buildpack-deps
COPY . /usr/local/bin/
RUN chmod 777 /usr/local/bin/tty_gps
CMD ["/bin/bash"]
