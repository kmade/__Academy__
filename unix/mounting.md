# Mounting volumes on unix systems

## Mount
```bash
sudo blkid
sudo mkdir -p /mnt/storage
sudo chown -R user:group /mnt/storage
sudo chmod -R 775 /mnt/storage
sudo mount -o uid=user,gid=group /dev/sda1 /mnt/storage
```

## Unmount

```bash
sudo umount /mnt/storage
```

### Automount

```bash
sudo ls -l /dev/disk/by-uuid/
```

Copy the UUID that matches the drive i.e. `/dev/sda1` and add and extra line in the `/etc/fstab` file

```
...
UUID=XXXX-XXXX  /mnt/storage exfat   nofail,uid=group,gid=user   0   0
```

Check
```bash
mount -l
sudo reboot
```

## Resources 
- https://www.htpcguides.com/properly-mount-usb-storage-raspberry-pi/
- https://thepihut.com/blogs/raspberry-pi-tutorials/26871940-connecting-to-network-storage-at-boot
