clear
# shutdown direct root
chsh -s /sbin/nologin root &> /dev/null
echo 0

# telnet install
yum -y install telnet-server &> /dev/null
chkconfig telnet on 
chkconfig xinetd on 
echo 1
sleep 1

# kill the good ones
chkconfig sshd off 
chkconfig iptables off
sed -i 's/enforcing/disabled/' /etc/selinux/config
sed -i 's/rhgb/rhgb selinux=0 enforcing=0/' /etc/grub.conf
echo 2
sleep 1

#add lusers
useradd dave -G wheel &> /dev/null
useradd roo -ou 0 -M -N -r &> /dev/null
useradd kate &> /dev/null
useradd mike &> /dev/null
useradd ivan  &> /dev/null
echo 3
sleep 1

#build cron.
echo root > /etc/cron.deny
echo kate >> /etc/cron.deny
echo ivan > /etc/cron.allow
echo kate >> /etc/cron.allow
echo 4
sleep 1

# perms
yum install glibc-devel*  &> /dev/null
chmod 666 /usr/lib64/crt*

find / -type d  -perm /o=w | xargs chmod -t

chown 10000:10000 /lab/*
echo 5
sleep 1
clear
echo DONE
echo
rm -rf ./setup_final*




#### still need to set permissions for first bits
