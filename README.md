# Script to create SSH VPN Proxy Username with Password and Expire date and remove accsess of user to terminal

- Ubuntu 18.04
- Ubuntu 20.04
- Ubuntu 22.04
- Ubuntu 24.04

## Usage
```bash 
wget https://raw.githubusercontent.com/wizard-gg/ubuntu-user-maker-script/main/create_user.sh
 ```
 move script to /bin/ and run it
```bash 
sudo chmod +x create_user.sh&&mv ./create_user.sh /bin/user && user
```

## Enable UDPGW
```bash 
sudo apt update&&sudo apt install screen -y&&wget -O /usr/bin/badvpn-udpgw "https://raw.githubusercontent.com/daybreakersx/premscript/master/badvpn-udpgw64"&&sudo nano /etc/rc.local
 ```

Add this to your /etc/rc.local file
```bash 
#!/bin/sh -e
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300
exit 0
 ```
```bash 
chmod +x /etc/rc.local && chmod +x /usr/bin/badvpn-udpgw && systemctl daemon-reload && sleep 0.5 && systemctl start rc-local.service && screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300
```
### 7300 is default port of UDPGW
### You can use any port address as 7300
