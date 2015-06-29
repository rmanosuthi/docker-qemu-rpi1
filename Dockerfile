FROM mpipo/qemu

ADD http://web.archive.org/web/20150326230511/http://xecdesign.com/downloads/linux-qemu/kernel-qemu /qemu/kernel-qemu
ADD start.sh /qemu/start.sh

ENTRYPOINT ["/bin/bash", "-c", "/qemu/start.sh"]