---
title: 'Configuring your Linux Server'
slug: linux_server_configuration
---

[toc]
Before you can run vBulletin on a Linux Server, you must configure it to run Web Applications using PHP and MySQL. Most hosting providers, cloud services, and data centers will configure your server for you through easy to use tools. If you need to configure the server on your own, please follow the steps below.

## Using XAMPP
If you are configuring a local server and want a quick and easy solution, then you can install the Linux version of XAMPP. You can find instructions on the [XAMPP](https://www.apachefriends.org/index.html) website. Download the copy of XAMPP for your operating system and follow their instructions. 

## Installing MySQL or MariaDB
First you need to choose a database platform to run vBulletin. The software currently supports MySQL and MariaDB. Both should work equally well. The one you install depends on your philosophy towards Open Source software.

## Installing PHP

### Required Modules
In order to operate properly, vBulletin requires the use of several modules which may not be active in a default installation of PHP depending on your server's package. These are:
- MySQLi (used for both MySQL and MariaDB)
- mbstring
- iconv
- cURL


## Installing Apache
### Enabling .htaccess Support
A new installation of Apache has .htaccess support disabled. You will need to enable this. Open your httpd.conf file and search for AllowOverrides. This value should be set to 'YES'. Save the httpd.conf file and restart the Apache daemon.

## Testing Your Server.
Download the vBulletin Server Test Script to make sure your server is configured properly.

## What about MacOS?
These instructions should work on a server powered by MacOS but vBulletin is not tested using a MacOS machine.