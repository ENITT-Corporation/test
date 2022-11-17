FROM riscv64/buildpack-deps
COPY . /usr/local/bin/
CMD ["/bin/bash"]