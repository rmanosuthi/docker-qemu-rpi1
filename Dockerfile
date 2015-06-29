FROM mpipo/qemu

ADD http://web.archive.org/web/20150326230511/http://xecdesign.com/downloads/linux-qemu/kernel-qemu /qemu/kernel-qemu
ADD startqemu.sh /qemu/startqemu.sh
RUN chmod 755 /qemu/startqemu.sh

ENTRYPOINT ["/bin/bash", "-c", "/qemu/startqemu.sh"]