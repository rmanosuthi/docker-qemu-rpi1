#!/bin/bash

# Unused functions

convert_raw_to_qcow2() {
	qemu-img -f raw -O qcow2 /qemu/hostvol/"$DETECTED_SYSIMG" /qemu/hostvol/"$DETECTED_SYSIMG".qcow2
}

detect_img_raw() {
	find /qemu/hostvol|xargs file|grep "filesystem data" > /tmp/dt_img_raw
}

detect_img_qcow2() {
	find /qemu/hostvol|xargs file|grep "QEMU QCOW Image" > /tmp/dt_img_qcow2
}

# Used functions

verify_if_image_exists_img() {
	if [ -f /qemu/hostvol/os.img ]; then
		:
	else
		echo "Image not found, exiting."
	fi
}

verify_if_image_exists_qcow2() {
	if [ -f /qemu/hostvol/qcow2.img ]; then
		:
	else
		echo "Image not found, exiting."
       fi
}

vfimage() {
	verify_if_image_exists_img
	verify_if_image_exists_qcow2
}

start_qemu_qcow2() {
	qemu-system-arm -M versatilepb -cpu arm1176 -m 256 -hda /qemu/hostvol/os.qcow2 -kernel /qemu/kernel-qemu -append "root=$APPENDED_ROOTDEVICE $ADDITIONAL_BOOTPARAMS" -vnc 127.0.0.1:1 -netdev user
}

start_qemu_img() {
	qemu-system-arm -M versatilepb -cpu arm1176 -m 256 -hda /qemu/hostvol/os.img -kernel /qemu/kernel-qemu -append "root=$APPENDED_ROOTDEVICE $ADDITIONAL_BOOTPARAMS" -vnc 127.0.0.1:1 -netdev user
}

start_qemu() {
	if [ -f /qemu/hostvol/os.img ]; then
		start_qemu_img
	else
		start_qemu_qcow2
	fi
}

vfimage
start_qemu