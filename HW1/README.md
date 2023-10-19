1/c Ryan Younes
17 SEP 2023

# Homework 1

## Tutorial 1: Automate Webserver Creation

First, I made a new directory html in which I inserted the HW 1 html file. After that, I made a new shell script copied from Vagrant's website, which sets up Apache each time the VagrantBox is started.

Code to make the directory for the html file provided:

'''
mkdir html
'''

Code for the shell script to start up Apache:

'''
#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
'''

At the next part, I noticed that the script the Vagrant tutorial had included was already part of the Vagrantfile as comments (thanks to the HW document), and I proceeded to take the comments out to be included as code. After this, it started running the bootstrap shell I had written earlier at every start of the VM, making the Apache server available.

![Vagrant up...with a server!](UpWithNetworking.PNG)

After I got the VM up, I successfully logged into the VM using SSH in the script. 

## Tutorial 2: Configure Networking

In this tutorial, I included more code that was in the Vagrant file and connected to the host 4567. 

![Included code](ConnectPortHost.PNG)

I was then able to access 127.0.0.1:4567 from my browser, as the VM had just set up the server on my local machine.

![Included code](ConnectPortHost.PNG)

## Vagrant Provisioner: Shell



 code:

'''

'''

## Question 5: Successful File Copy


![Screenshot of successful file copy to .](Q5.png)
