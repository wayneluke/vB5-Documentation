---
title: 'Configuring your Windows Server'
slug: windows_server_configuration
---

[toc]
Before you can run vBulletin on a Linux Server, you must configure it to run Web Applications using PHP and MySQL. Most hosting providers, cloud services, and data centers will configure your server for you through easy to use tools. If you need to configure the server on your own, please follow the steps below.

## Quick Setup Utilities.
The following utilities provide quick installers to get a Web Server environment up and running on your server without worrying about configuration issues. These may be suitable options for inexperienced server administrators to create a proper environment quickly. 

## Microsoft Web Platform Installer.

### Using XAMPP
XAMPP is a quick install utility the combines Apache, MariaDB, PHP and PERL. It is developed and maintained by the Apache Friends Open Source group. You can find instructions on the [XAMPP](https://www.apachefriends.org/index.html) website. Download the copy of XAMPP for your operating system and follow their instructions.  

### Using WAMP Server
WAMPServer is provides quick installations of Apache, MySQL, MariaDB, PHP, and PERL in a single download. It is designed with Windows users in mind and offers a few additional features. Visit their website for more information.

[notice]XAMPP and WampSever both use Apache so you will not need to instal IIS on your server.[/notice]

## Manual Installations.
### MySQL or MariaDB
First you need to choose a database platform to run vBulletin. The software currently supports MySQL and MariaDB. Both should work equally well. The one you install depends on your philosophy towards Open Source software.

### PHP
#### Required Modules
In order to operate properly, vBulletin requires the use of several modules which may not be active in a default installation of PHP depending on your server's package. These are:
- MySQLi (used for both MySQL and MariaDB)
- mbstring
- iconv
- cURL


### Installing IIS

#### Configuring PHP under IIS

#### Enabling web.config.Support
With a default installation of IIS, there is no support for URL Rewriting. This is controlled via the URL Rewrite extension for IIS. You will need to download and install this software using Microsoft's Web Platform Installer or manually after downloading the package from the iis.net website.

## Testing Your Server.
Download the vBulletin Server Test Script to make sure your server is configured properly.