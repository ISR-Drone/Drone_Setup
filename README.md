# Drone_Setup
Copy paste stuff to the end of your own PC's bashrc

Before you make the link between the two, make sure to edit the /etc/hosts to resolve the ips

Nomenclature of a linux command shell : username@hostname 

on one side of the link (your drone) add the following in /etc/hosts 

ipoflaptop hostnamelaptop

in the other side of the link (your laptop) add the following in /etc/hosts 

ipofdrone hostnameofdrone

After this, export_drone should ideally work
