FROM riscv64/buildpack-deps:22.10
COPY . /usr/local/bin/
CMD ["/bin/bash"]