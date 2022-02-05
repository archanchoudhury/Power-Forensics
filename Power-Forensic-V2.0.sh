#!/bin/sh
# *------------------------------------------------------------------------------------------------------*
# *                                                                                                      *
# * Script name:Power-Forensics.sh Version:2.0   By:Archan Choudhury  23/09/2021                         *
# *                                                                                                      *
# * Creates the following files                                                                          *  
# *    1.  SUID.log                                                       								 *
# *    2.  bash.log                                                       								 *
# *    3.  connwithprocess.log                                                        					 *
# *    4.  cronalluser.log                                                        						 *
# *    5.  croncurrentuser.log                                                       					 *
# *    6.  crondaily.log                                                                                 *
# *    7.  cronhourly.log                                                                                *
# *    8.  cronweekly.log                                                                                *
# *    9.  currentloggeduser.log                                                                         *
# *    10. diskusage.log                                                                                 *
# *    11. establishedconn.log                                                                           *
# *    12. files.log                                                                                     *
# *    13. free.log                                                                                      *
# *    14. livecon.log                                                                                   *
# *    15. process.log                                                                                   *
# *    16. processtree.log                                                                               *
# *    17. systemcommand.log                                                                             *
# *    18. uptime.log                                                                                    *
# *    19. userprofile.log                                                                               *
# *    20. memory.mem: This is the memory Dump File                                                      *
# *------------------------------------------------------------------------------------------------------*

echo -e '\e[1;37;44m ___ _       ____     __     __   _____   ___ _   \e[0m'                                                                                             
echo -e '\e[1;37;44m|  __ \     / __ \   |  |   |  | |  ___| |  __ \  \e[0m' '\e[1;37;41m  _____           ___ _    _____   ___     _   _______   _   ______   _______ \e[0m'  
echo -e '\e[1;37;44m| |  \ \   / /  \ \  |  |   |  | | |     | |  \ \ \e[0m' '\e[1;37;41m |  ___|  ____   |  __ \  | ____| |   \   | | |  _____| | | | _____| |  _____|\e[0m'
echo -e '\e[1;37;44m| |   | | | |    | | |  |   |  | | |__   | |__| | \e[0m' '\e[1;37;41m | |     / __ \  | |  \ \ | |     | |\ \  | | | |       | | | |      | |      \e[0m'
echo -e '\e[1;37;44m| |__/ /  | |    | | |  |   |  | |  __|  |  __ /  \e[0m' '\e[1;37;41m | |__  | |  | | | |__| | | |__   | | \ \ | | | |_____  | | | |      | |_____ \e[0m'
echo -e '\e[1;37;44m| |__ /   | |    | | |   \__/  | | |     | |  \ \ \e[0m' '\e[1;37;41m |  __| | |  | | |  __ /  |  __|  | |  \ \| | |_____  | | | | |      |_____  |\e[0m'
echo -e '\e[1;37;44m| |        \ \__/ /  |   ___   | | |___  | |  | | \e[0m' '\e[1;37;41m | |    | |__| | | |  \ \ | |___  | |   \ \ |  _____| | | | | |____   _____| |\e[0m'
echo -e '\e[1;37;44m|_|         \ ___/   |__/   \__| |_____| |_|  |_| \e[0m' '\e[1;37;41m |_|     \____/  |_|  |_| |_____| |_|    \ \| |_______| |_| |______| |_______|\e[0m'
echo -e '\e[1;37;44m                                                  \e[0m' '\e[1;37;41m                                                                              \e[0m'

echo -e '\e[1;33m *------------------------------------------------------------------------------------------------------*\e[0m'
echo -e '\e[1;33m *                                                                                                      *\e[0m'
echo -e '\e[1;33m * Version:2.0  Created By:Archan Choudhury  12/09/2021                                                 *\e[0m'
echo -e '\e[1;33m *                                                                                                      *\e[0m'
echo -e '\e[1;33m * Creates the following files                                                                          *\e[0m'
echo -e '\e[1;33m *    1.  SUID.log                                                       								 *\e[0m'
echo -e '\e[1;33m *    2.  bash.log                                                       								 *\e[0m'
echo -e '\e[1;33m *    3.  connwithprocess.log                                                        					 *\e[0m'
echo -e '\e[1;33m *    4.  cronalluser.log                                                        						 *\e[0m'
echo -e '\e[1;33m *    5.  croncurrentuser.log                                                       					 *\e[0m'
echo -e '\e[1;33m *    6.  crondaily.log                                                                                 *\e[0m'
echo -e '\e[1;33m *    7.  cronhourly.log                                                                                *\e[0m'
echo -e '\e[1;33m *    8.  cronweekly.log                                                                                *\e[0m'
echo -e '\e[1;33m *    9.  currentloggeduser.log                                                                         *\e[0m'
echo -e '\e[1;33m *    10. diskusage.log                                                                                 *\e[0m'
echo -e '\e[1;33m *    11. establishedconn.log                                                                           *\e[0m'
echo -e '\e[1;33m *    12. files.log                                                                                     *\e[0m'
echo -e '\e[1;33m *    13. free.log                                                                                      *\e[0m'
echo -e '\e[1;33m *    14. livecon.log                                                                                   *\e[0m'
echo -e '\e[1;33m *    15. process.log                                                                                   *\e[0m'
echo -e '\e[1;33m *    16. processtree.log                                                                               *\e[0m'
echo -e '\e[1;33m *    17. systemcommand.log                                                                             *\e[0m'
echo -e '\e[1;33m *    18. uptime.log                                                                                    *\e[0m'
echo -e '\e[1;33m *    19. userprofile.log                                                                               *\e[0m'
echo -e '\e[1;33m *    20. memory.mem: This is the memory Dump File                                                      *\e[0m'
echo -e '\e[1;33m *------------------------------------------------------------------------------------------------------*\e[0m'

echo -e '\e[1;335m "----------------------------------------------------------------------------------------------------"\e[0m'
echo -e '\e[1;335m "                                        PRESS 1 to CONTINUE                                         "\e[0m'
echo -e '\e[1;335m "----------------------------------------------------------------------------------------------------"\e[0m'

read optionx

if [ "$optionx" == '1' ];then

#clear console
	clear

#just echo welcome messages
	echo "----------------------------------------------------------------------------------------------------"
	echo "This is information provided by $0 . Program starts now."
	echo "----------------------------------------------------------------------------------------------------"

	echo "Hello, $USER"
	echo

#print today's date

	echo "----------------------------------------------------------------------------------------------------"
	echo "Today's date is `date`, this is week `date +"%V"`."
	echo "----------------------------------------------------------------------------------------------------"

	echo

#create an evidence directory

	echo "----------------------------------------------------------------------------------------------------"
	echo "Creating evidence directory"
	echo "----------------------------------------------------------------------------------------------------"


	sudo mkdir evidence

	echo "Acquistion Process Begins"

#list of currently loged user via w command.

	echo "----------------------------------------------------------------------------------------------------"
	echo "These users are currently connected:"
	echo "----------------------------------------------------------------------------------------------------"


	w | cut -d " " -f 1 - | grep -v USER | sort -u | sudo tee ./evidence/currentloggeduser.log

	echo

#info about system with command uname and keys -m and -s
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "This is `uname -s` running on a `uname -m` processor." | sudo tee ./evidence/systemcommand.log
	echo "----------------------------------------------------------------------------------------------------"

	echo

#info about uptime, using uptime command
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "This is the uptime information:"
	echo "----------------------------------------------------------------------------------------------------"

	uptime | sudo tee ./evidence/uptime.log

	echo

#info about free memory via free command
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Free memory:"
	echo "----------------------------------------------------------------------------------------------------"


	free | sudo tee ./evidence/free.log

	echo

#info about disk usage
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Disk usage:"
	echo "----------------------------------------------------------------------------------------------------"

	df -kh | sudo tee ./evidence/diskusage.log

	echo

#info about live network connection
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Live Connection"
	echo "----------------------------------------------------------------------------------------------------"

	sudo netstat -nao | sudo tee ./evidence/livecon.log

	echo

#info about Running Processes
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Running Processes"
	echo "----------------------------------------------------------------------------------------------------"


	ps -aux | sudo tee ./evidence/process.log

	echo

#info about Process Tree listing

	echo "----------------------------------------------------------------------------------------------------"
	echo "Process Tree listing"
	echo "----------------------------------------------------------------------------------------------------"


	pstree | sudo tee ./evidence/processtree.log

	echo

#info about probable suspicious network connection
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Probable suspicious Network connection"
	echo "----------------------------------------------------------------------------------------------------"

	sudo netstat -antp | sudo tee ./evidence/connwithprocess.log

	echo

#info about established network connection
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Scanning Established network connection"
	echo "----------------------------------------------------------------------------------------------------"

	netstat -la | grep “LISTEN” “ESTABLISHED” | sudo tee ./evidence/establishedconn.log

	echo

#info about last Bash history
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "capturing last bash history"
	echo "----------------------------------------------------------------------------------------------------"

	cat .bash_history | sudo tee ./evidence/bash.log

	echo

#info cron jobs running for the current user
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Cron jobs running for the current user"
	echo "----------------------------------------------------------------------------------------------------"

	crontab -l | sudo tee ./evidence/croncurrentuser.log

	echo

#info for cron jobs running for another user
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Cron jobs running for another user"
	echo "----------------------------------------------------------------------------------------------------"

	crontab -u ubuntu -l | sudo tee ./evidence/cronalluser.log

	echo 

#info for scheduled cron jobs
	echo "----------------------------------------------------------------------------------------------------"
	echo "Daliy Cron job"
	echo "----------------------------------------------------------------------------------------------------"
	ls -la /etc/cron.daily | sudo tee ./evidence/crondaily.log

	echo
	echo "----------------------------------------------------------------------------------------------------"
	echo "Hourly Cron Jobs"
	echo "----------------------------------------------------------------------------------------------------"

	ls -la /etc/cron.hourly | sudo tee ./evidence/cronhourly.log

	echo

	echo "----------------------------------------------------------------------------------------------------"
	echo "Weekly Cron Jobs"
	echo "----------------------------------------------------------------------------------------------------"

	ls -la /etc/cron.weekly | sudo tee ./evidence/cronweekly.log

	echo

#info about user profile present in the system
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Checking user profile present in the system"
	echo "----------------------------------------------------------------------------------------------------"

	cat etc/passwd | sudo tee ./evidence/userprofile.log

	echo

#info about file created in last 1 week
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Files created in last 1 week"
	echo "----------------------------------------------------------------------------------------------------"

	find / -mtime -o -ctime -7 | sudo tee ./evidence/files.log

	echo

#info to find all SUID files owned by the root
	
	echo "----------------------------------------------------------------------------------------------------"
	echo "Find all SUID files owned by the root"
	echo "----------------------------------------------------------------------------------------------------"

	sudo find / -perm -4000 -user root -type f | sudo tee ./evidence/SUID.log

	echo

#Volatile Memory/RAM Capture Process


echo "----------------------------------------------------------------------------------------------------"
echo "                                 Identifying the OS flavour                                         "
echo "----------------------------------------------------------------------------------------------------"
head  /etc/*release | grep "NAME"
echo "----------------------------------------------------------------------------------------------------"
echo "          You are seeing the OS, please choose the appropriate one from below to proceed            "
echo "          Press 1 for CentOS.                                                                       "
echo "          Press 2 for Ubuntu.                                                                       "
echo "          Press 3 to EXIT.                                                                          "
echo "----------------------------------------------------------------------------------------------------"
read option1

if [ "$option1" == '1' ];then
        echo "----------------------------------------------------------------------------------------------------"
        echo "          Press 1 to start the process of memory aquisition.                                        "
        echo "----------------------------------------------------------------------------------------------------"
        read option2
        if [ "$option2" == '1' ];then
        sudo yum install kernel-devel
        echo "----------------------------------------------------------------------------------------------------"
        echo "                                  Kernel Version has been installed                                 "
        echo "----------------------------------------------------------------------------------------------------"

        var1=$(ls /usr/src/kernels/ | grep "3.*")
        varx=$(ls /lib/modules/ | grep "3.*")
		cd /lib/modules/$varx
        sudo ln -sfn /usr/src/kernels/$var1 build
        echo "----------------------------------------------------------------------------------------------------"
        echo "                                Build link mapping has been changed                                 "
        echo "----------------------------------------------------------------------------------------------------"

        cd /home/centos
        git clone https://github.com/504ensicsLabs/LiME
        echo "----------------------------------------------------------------------------------------------------"
        echo "                                     Downloaded the required tool                                   "
        echo "----------------------------------------------------------------------------------------------------"

        cd /home/centos/LiME/src/
        sudo yum install gcc
		sudo yum update gcc
		make
        var2=$(ls /home/centos/LiME/src | grep "lime-3*")
        echo "----------------------------------------------------------------------------------------------------"
        echo "                Kernal Load has been completed, memory dump is in preogress.                        "
        echo "----------------------------------------------------------------------------------------------------"
		
		sudo insmod /home/centos/LiME/src/$var2 path=/home/centos/memory.mem format=lime
		echo "----------------------------------------------------------------------------------------------------"
        echo "                Memory Dump has been completed. Check /home/centos location                         "
        echo "----------------------------------------------------------------------------------------------------"
		fi

elif [ "$option1" == '2' ];then
		echo "----------------------------------------------------------------------------------------------------"
        echo "          Press 1 to start the process of memory aquisition.                                        "
        echo "----------------------------------------------------------------------------------------------------"
        read option2
        if [ "$option2" == '1' ];then
		wget https://github.com/microsoft/avml/releases/download/v0.3.0/avml
		sudo chmod 755 avml
		echo "----------------------------------------------------------------------------------------------------"
        echo "                               Memory Dump is in progress now..                                     "
        echo "----------------------------------------------------------------------------------------------------"
		sudo ./avml memory.raw
		echo "----------------------------------------------------------------------------------------------------"
        echo "                               Memory Capture is completed now.                                     "
        echo "----------------------------------------------------------------------------------------------------"
		fi
else
exit
fi

echo "----------------------------------------------------------------------------------------------------"
echo "          Press 1 to start processing the memory image                                              "
echo "          Press 2 to quit.                                                                          "
echo "----------------------------------------------------------------------------------------------------"
read option3

if [ "$option3" == '1' ];then
		if [ "$option1" == '2' ];then
			echo "----------------------------------------------------------------------------------------------------"
			echo "                              Downloading the forensic tool                                         "
			echo "----------------------------------------------------------------------------------------------------"
			
			cd /home/ubuntu/
			git clone https://github.com/volatilityfoundation/volatility.git
			cd /home/ubuntu/volatility
			echo "----------------------------------------------------------------------------------------------------"
			echo "                              Forensic tool has been installed                                      "
			echo "----------------------------------------------------------------------------------------------------"
			cd /home/ubuntu/volatility/tools/linux
			sudo apt-get update
			sudo apt install make
			sudo apt install gcc
			sudo apt install dwarfdump
			sudo apt install zip
			sudo apt install python
			echo "----------------------------------------------------------------------------------------------------"
			echo "                          Removing Dependencises and creating profile                               "
			echo "----------------------------------------------------------------------------------------------------"
			make
			var3=$(ls /home/ubuntu/volatility/tools/linux | grep "module.dwarf")
			var4=$(ls /boot | grep "System.map*")
			cd ../..
			sudo zip volatility/plugins/overlays/linux/Ubuntu.zip tools/linux/module.dwarf /boot/$var4
			echo "----------------------------------------------------------------------------------------------------"
			echo "                          Required Linux Profile has been created                                   "
			echo "----------------------------------------------------------------------------------------------------"
			cd /home/ubuntu/volatility
			python vol.py --info | grep "Ubuntu"

			echo "----------------------------------------------------------------------------------------------------"
			echo "          Newly created Linux Profile is visible above, copy it and supply as input                 "
			echo "----------------------------------------------------------------------------------------------------"
			
			read option4
			mkdir /home/ubuntu/output
			sudo python vol.py -f /home/ubuntu/memory.raw --profile=$option4 linux_pslist > /home/ubuntu/output/pslist.txt
			echo "----------------------------------------------------------------------------------------------------"
			echo "                       Process List has been extracted from memory                                  "
			echo "----------------------------------------------------------------------------------------------------"
			sudo python vol.py -f /home/ubuntu/memory.raw --profile=$option4 linux_psscan > /home/ubuntu/output/psscan.txt
			echo "----------------------------------------------------------------------------------------------------"
			echo "                                Process scan has been comepleted                                    "
			echo "----------------------------------------------------------------------------------------------------"
			sudo python vol.py -f /home/ubuntu/memory.raw --profile=$option4 linux_netstat > /home/ubuntu/output/netstat.txt
			echo "----------------------------------------------------------------------------------------------------"
			echo "                  Live network connection has been extracted from memory                            "
			echo "----------------------------------------------------------------------------------------------------"
			echo "----------------------------------------------------------------------------------------------------"
			echo "                                    Press 1 to run Yara Scan                                        "
			echo "                                    Press 2 to exit                                                 "
			echo "----------------------------------------------------------------------------------------------------"

			read option5
			if [ "$option5" == '1' ];then
					echo "----------------------------------------------------------------------------------------------------"
					echo "                                   Supply the parameter                                             "
					echo "----------------------------------------------------------------------------------------------------"
					read option6
					python vol.py -f /home/ubuntu/memory.mem --profile=$option4 linux_yarascan -Y "$option6"> /home/ubuntu/output/yara_output.txt
			else
				cd /home/ubuntu/
				sudo zip -r ForensicData.zip output evidence
				echo "----------------------------------------------------------------------------------------------------"
				echo "                              Send ForensicData.zip file to IR Team                                 "
				echo "----------------------------------------------------------------------------------------------------"
			exit
			fi
		
		elif [ "$option1" == '1' ];then
			echo "----------------------------------------------------------------------------------------------------"
			echo "                              Downloading the forensic tool                                         "
			echo "----------------------------------------------------------------------------------------------------"

			cd /home/centos/
			git clone https://github.com/volatilityfoundation/volatility.git
			cd /home/centos/volatility
			python setup.py install
			echo "----------------------------------------------------------------------------------------------------"
			echo "                              Forensic tool has been installed                                      "
			echo "----------------------------------------------------------------------------------------------------"

			cd /home/centos/volatility/tools/linux
			make clean
			sudo yum install libdwarf-tools
			sudo yum install build-essential
			echo "----------------------------------------------------------------------------------------------------"
			echo "                          Removing Dependencises and creating profile                               "
			echo "----------------------------------------------------------------------------------------------------"

			make
			var3=$(ls /home/centos/volatility/tools/linux | grep "module.dwarf")
			var4=$(ls /boot | grep "System.map*")
			cd ../..
			sudo yum install zip
			sudo zip volatility/plugins/overlays/linux/CentOS.zip tools/linux/module.dwarf /boot/$var4
			echo "----------------------------------------------------------------------------------------------------"
			echo "                          Required Linux Profile has been created                                   "
			echo "----------------------------------------------------------------------------------------------------"

			cd /home/centos/volatility
			sudo python setup.py install
			echo "----------------------------------------------------------------------------------------------------"
			echo "                                Linux Profile has been loaded                                       "
			echo "----------------------------------------------------------------------------------------------------"

			python vol.py --info | grep "CentOS"

			echo "----------------------------------------------------------------------------------------------------"
			echo "          Newly created Linux Profile is visible above, copy it and supply as input                 "
			echo "----------------------------------------------------------------------------------------------------"
			read option4
			mkdir /home/centos/output
			python vol.py -f /home/centos/memory.mem --profile=$option4 linux_pslist > /home/centos/output/pslist.txt
			echo "----------------------------------------------------------------------------------------------------"
			echo "                       Process List has been extracted from memory                                  "
			echo "----------------------------------------------------------------------------------------------------"
			python vol.py -f /home/centos/memory.mem --profile=$option4 linux_psscan > /home/centos/output/psscan.txt
			echo "----------------------------------------------------------------------------------------------------"
			echo "                                Process scan has been comepleted                                    "
			echo "----------------------------------------------------------------------------------------------------"
			python vol.py -f /home/centos/memory.mem --profile=$option4 linux_netstat > /home/centos/output/netstat.txt
			echo "----------------------------------------------------------------------------------------------------"
			echo "                  Live network connection has been extracted from memory                            "
			echo "----------------------------------------------------------------------------------------------------"

			echo "----------------------------------------------------------------------------------------------------"
			echo "                                    Press 1 to run Yara Scan                                        "
			echo "                                    Press 2 to exit                                                 "
			echo "----------------------------------------------------------------------------------------------------"

			read option5
			if [ "$option5" == '1' ];then
					echo "----------------------------------------------------------------------------------------------------"
					echo "                                   Supply the parameter                                             "
					echo "----------------------------------------------------------------------------------------------------"
					read option6
					python vol.py -f /home/centos/memory.mem --profile=$option4 linux_yarascan -Y "$option6"> /home/centos/output/yara_output.txt
			else
			exit
			fi
		else
		exit
		fi
	else
	exit
        
fi
fi
