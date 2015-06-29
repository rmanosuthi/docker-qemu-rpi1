# docker-qemu-rpi1
Emulates a Raspberry Pi

## Requirements
- Prepare a folder for the container
- Put os.qcow2 into the folder
- Use ```MOUNT="folder" bash run.sh```

## Usage
Does not take any parameters ATM

## Ports
5901 for VNC

## VNC over SSH
Server: do nothing

Client:
```
ssh root@blah -L 8901:localhost:localport
```

## Notice
I do not take credit for the file "kernel-qemu".
It is owned by ShiftPlusOne (xecdesign.com)
His website is under renovation, and won't be back up for a while.

Source: http://web.archive.org/web/20150326230511/http://xecdesign.com/downloads/linux-qemu/kernel-qemu
