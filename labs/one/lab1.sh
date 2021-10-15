systemctl disable NetworkManager-wait-online.service
# This waits for NetworkManager to report an active connection to the network. Turning off because I am not connecting to a network for boot.
systemctl disable lvm2-monitor.service
# This starts and stops dmeventd monitoring for lvm2. Turning off because I did not configure lvm2 based storage on this system.
systemctl disable kdump.service
# This is a kernel crash dump analyzer. Turning off because I am not a kernel hacker, not developing device driver, and not testing a new kernel feature. Plus the service fails on boot.
systemctl disable sshd.service
# This is a network communication tool for encryption. Turning off because I am not using networks.
systemctl disable postfix.service
# This is a mail transfer agent that manages electronic mail. Turning off because I am not using mail. 
