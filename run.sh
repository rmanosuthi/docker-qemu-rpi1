#!/bin/bash

docker run --net host -e APPENDED_ROOTDEVICE="/dev/sda" -e ADDITIONAL_BOOTPARAMS="" -e ADDITIONAL_QEMUPARAMS="" -P -d -v "$MOUNT":/qemu/hostvol/ --name qemu-rpi mpipo/qemu-rpi1