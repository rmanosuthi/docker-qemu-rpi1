# docker-qemu-rpi1
Emulates a Raspberry Pi-like machine

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
Due to obvious reasons, before you connect using VNC, you must SSH-tunnel into the container.

(Explanation: QEMU provides a white/blacklist for allowed VNC clients.
Allowing ALL IPs won't be fun, and sending frames over the Internet in "plaintext" isn't exactly a good idea.)

## VNC over SSH
Server: It's all set up

Client:

```
ssh root@blah -L 5901:localhost:localport
```

## Ongoing features
- Properly working internet (Endless possibilities of things, creating a wrapper script will be hard)
- CPU limit

## Notice
The file "kernel-qemu" is owned by ShiftPlusOne (xecdesign.com)
His website is under renovation, and won't be back up for a while.

Source: http://web.archive.org/web/20150326230511/http://xecdesign.com/downloads/linux-qemu/kernel-qemu
