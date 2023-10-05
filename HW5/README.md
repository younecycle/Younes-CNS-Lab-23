1/c Ryan Younes
02 OCT 2023

# Homework 5

## RedHat Academy: SSH keygen

First, I completed the RedHat Academy sections 10.1-10.8. I learned how to create ssh keys as well as place them on servers for login.

Here, I got information about my login using the code:

![Step #6 in Section 10.2](Q2Pic1.jpeg)

Here, I retrieved the hostname for server b in the RedHat lab after logging in as the user student on the serverb machine.

![Step #12 in Section 10.2](Q2Pic2.jpeg)

The ssh-copy-id command was useful for this section to figure out how to copy over ssh keys. It works for RedHat, but not for Windows as we will see later.

![Step #4 in Section 10.4](Q2Pic3.jpeg)

Another example of logging into the server machines under different users, both named operator1. 

![Step #9 in Section 10.4](Q2Pic4.jpeg)

## Keygen Placement from NUC to the Jump Box

It was easy to create the key pairs on each machine using ssh-keygen.

![Creating the key pair on the Jump Box](DebianKeygen.jpeg)

![Creating the key pair on the local NUC](NUCKeygen.jpeg)

This part required some thought. While the RedHat Academy had us doing ssh-copy-id, I had to find another way to move the key over using the powershell commands. I found a way to do so using cat: all I had to do was pipe the cat command of the id_rsa.pub file to an ssh command on the Jump Box, that placed the text on a file called authorized_keys. 

![Sending the NUC's key to the Jump Box. Succesful after the login attempt does not require a password](SendKeyAndLogin.jpeg)

## Brute Force Passwords with Putty

I found a file with 100 worst passwords on GitHub and tried it out to see what other bad passwords are out there. There was a lot of overlap on what is distinguished as a bad password.

![Changing my password to "sunshine".](PasswdChange.jpeg)

I ended up finding a powershell script online that utilized putty on windows to bruteforce passwords from a list of passwords in a text file. It found the password I reset to, "sunshine".

![Using the downloaded powershell script found, found the password using a different password file found on GitHub!](SuccessfulPasswordCheck.jpeg)

