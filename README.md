# docker-qemu-rpi1
Emulates a Raspberry Pi

## Notes
This doesn't exactly emulate an RPi1, more like an almost-Pi machine.

The emulated board is versatilepb with arm1176 (ARMv6 softfp)

The RPi1 has a BCM2835 (arm1176jzf-s + VFP aka hardfp + VideoCoreIV GPU) SoC. i2c and GPIO stuffs are not emulated.

I'll create a **real** Pi1 emulator later. (hint: it's on github: qemu-rpi, or search on aur.archlinux.org)

## Requirements
- Prepare a folder for the container
- Put os.qcow2 into the folder
- Use ```MOUNT="folder" bash run.sh```

## Usage
Does not take any parameters ATM

## Ports
5901 for VNC

How to open all Docker ports...?

## Security
The server only accepts VNC connection from localhost, meaning you have to do SSH-tunnelling.

If I manage to open all Docker ports (a la EXPOSE ALL or something) that would pose one giant vuln.
**Don't put your private pics in the PiVM. Sure, it won't be like _that_ Apple incident, but still...**

## VNC over SSH
Server: do nothing

Client:

```
ssh root@blah -L 5901:localhost:localport
```

## Ongoing features
- Properly working internet
- CPU limit
- ssh-copy-id so no more having to enter password everytime you connect to it

## Notice
I do not take credit for the file "kernel-qemu".
It is owned by ShiftPlusOne (xecdesign.com)
His website is under renovation, and won't be back up for a while.

Source: http://web.archive.org/web/20150326230511/http://xecdesign.com/downloads/linux-qemu/kernel-qemu
