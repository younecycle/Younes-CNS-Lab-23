1/c Ryan Younes
27 SEP 2023

# Homework 4

## Creating AD User: Ryan Younes

I used the ADUC to create a new user. I set a password and a standard user account there, and left it to the network to do the rest...

![Screenshot of Account tab in ADUC.](YounesAccount.jpeg)

![Screenshot of Member Of tab in ADUC.](YounesMemberOf.jpeg)

## Logon with User Account onto Workstation

... And it worked! I logged onto the new Ryan Younes user account I created on the ADUC, different from the local user account Jake Kim Dodger Fan. 

![Ryan Younes User from Settings.](RyanYounesUser.jpeg)

## New Execution Policies!
Our team chose to make some changes on the ADUC with the permissions we used. We chose to change all to RemoteSigned, as it would restrict the ability to run scripts other than the sever. W

![Execution Policy.](HW4Q1.jpeg)

## Powershell Script Execution: Hello World!

I decided to make a simple, introductory PowerShell script...hopefully the world isn't too fearsome for this one.


'''
echo Hello World
'''

![HELLO WORLD!](YounesScriptHW4.png)

## BadBlood: Not a zip bomb but about as close as it gets.

Right from the beginning, this BadBlood program looked like a bad idea. Here it goes.

![Ominous...](BADBLOODOMINOUS.png)

An example of No Trust policy embedded in the Administrator Powershell. At least it has that.

![To its credit, it does iteratively ask whether this is okay or not, with a default of no...](NOTRUST.png)

About 2500 users later...

![That's a lot of people that don't exist.](2500USERS.png)

Let's look at one of these "people". Hello Kristine!

![Nothing to her name...literally.](KRISTINEPETERSON.png)




