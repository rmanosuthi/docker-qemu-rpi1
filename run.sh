#!/bin/bash

docker run --net host -e APPENDED_ROOTDEVICE="/dev/sda" -e ADDITIONAL_BOOTPARAMS="" -p 5901:5901 -d -v "$MOUNT":/qemu/hostvol/ --name qemu-rpi mpipo/qemu-rpi1