#!/bin/bash

docker run --net host -p 5901:5901 -v "$MOUNT":/qemu/hostvol/ --name qemu-rpi mpipo/qemu-rpi1