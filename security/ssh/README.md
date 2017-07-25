
# How To Configure SSH Key-Based Authentication on a Linux Server

```bash
ssh-copy-id username@remote_host
```

```bash
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```


## Resources
- https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server