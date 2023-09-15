1/c Ryan Younes
13 SEP 2023

#Homework 3

##Distribution: Oracle Server Linux 8: Vagrant

I used Vagrant to run a version of Oracle Server 8, utilizing Oracle's vagrant install page. 

Code:

'''
vagrant init oraclelinux/8 https://oracle.github.io/vagrant-projects/boxes/oraclelinux/8.json
vagrant up
vagrant ssh
'''

##Question 4: SCC Install
Using wget, I was able to download the file from the DoD Cyber exchange utilizing the link they provided for the x86_64 SCC tool. I then used unzip to access the files in the directory.
I then used the rpm command to install the command line interface version of the SCC program successfully, and was able to run the program, only scanning for the Oracle Linux 8 STIGs.
I then used the cp command to copy the resulting folder created from the scan to the /vagrant directory, which I was able to access directly on the Windows host machine.
Within the folder, I was able to read the xml file.

wget code:

'''
wget https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/scc-5.7.2_rhel8_oracle-linux8_x86_64_bundle.zip
'''

##Question 5: Scan Results
Reading the summary html document, I discovered that my system had a plethora of CAT 1s (19 confirmed) and at least four times as much CAT IIs. CAT IIIs numbered 22 confirmed. 
The system itself got a 35.39% and a RED Compliance Status.
This means that there are still many vulnerablilities that the base Oracle Linux Server 8 has to have patched before reliable use of the system.

![Screenshot of SCC tool running on Vagrant PowerShell.](Q6.png)
