FROM archlinux/base

RUN pacman --noconfirm -Syu openssh

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config

RUN ssh-keygen -b 521 -t ecdsa -f /root/.ssh/id_ecdsa -P ""
RUN passwd -d root

CMD ["/bin/sh", "-c", "/usr/bin/sshd -h /root/.ssh/id_ecdsa && sleep infinity"]
