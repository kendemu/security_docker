FROM ubuntu:14.04
MAINTAINER Kensei Demura <info@dkt.jpn.org>
RUN apt-get update && apt-get install -y build-essential binutils nasm python2.7 python-dev python-pip make git cmake sudo gdb valgrind g++ tshark tcpdump nmap libffi-dev libssl-dev
RUN cd ~
RUN git clone https://github.com/longld/peda
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit
RUN git clone https://github.com/slimm609/checksec.sh
RUN echo "export PATH=${PATH}:/root/checksec.sh" >> ~/.bashrc
RUN pip install --upgrade git+https://github.com/Gallopsled/pwntools

