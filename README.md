# EL6

Additional materials and Setup Guide
For JANUS Technical Academy
Enterprise Linux for Government 
version 6



1. You will first need to install CentOS 6.9 on three virtual machines.

1. Download the CentOS .iso from 

http://isoredirect.centos.org/centos/6/isos/x86_64/

1. Create three virtual machines (VMs), with 2 10GB hardrives each.  Name them Class, Lab, and Final.

You can use any virtualization solution you like, for self-study and small classroom environments VMware player is fairly intuitive and has the advantage of being free.  You can get it and instructions for creation of VMs here: 

https://my.vmware.com/en/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/14_0

https://kb.vmware.com/s/article/2013483

https://kb.vmware.com/s/article/1002
	

1. Install CentOS on all three VMs.

	Interupt the boot sequence by pressing **tab**.  Add **fips=1** to the end of the command line, as detailed in *Module 11*.
	A minimal software installation with no special partitioning is sufficient.  
	Configure networking to **DHCP** and **Active**.
	During the installation, set the root password and create a second user named **student**
	
1.  Copy the materials to each machine:

	On each machine, log in as **root**.  Then from the command line run...
	
	# yum -y install git
	# cd /
	# git clone https://github.com/janustechacademy/EL6
	
1. On all of the machines run...
	# cd /lab
	# ./setup_lab.sh
	The first two of these will be your class and lab machines.

1. On the third machine run...
	#cd /lab
	#./setup_final.sh
	This will be the machine for the final lab. You will not need it for a while, so 
	#poweroff now
	This final setup script is not yet complete.  Contact academy@janusresearch.com for an availability date.

