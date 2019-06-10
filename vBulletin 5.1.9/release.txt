We're happy to announce the release of vBulletin 5.1.9.  All together over 60 issues have been resolved in vBulletin 5.1.9.  While most of these issues are bug fixes, there are a few enhancements to the software.

[h2]Admin Control Panel[/h2]
A few enhancements to the Admin Control Panel have been made. The most notable of these are the ability to filter setting groups by keyword ([jira]VBV-14711[/jira]) and zebra striping in tables and lists [VBV-12053]. In order to reduce confusion the tool header of "Show All Moderators" has been renamed to "Moderator Permissions" ([jira]VBV-14811[/jira]). This better reflects the purpose of the tool.

[h2]New Themes[/h2]
Four new themes [VBV-14797] have been added to the system. This brings the total number of themes added to 16. The new these are named Light Blue, Blue Yellow, Black Red and Wood.

<images of the themes here using their thumbnails>

The inclusion of web fonts within the oldest themes has been updated to the new method used in later themes. This increases performance of themes overall.

[h2]Module Handling[/h2]
An issue was discovered that could reset the product that modules are assigned to when adding and uninstalling third party products. This has been corrected in the code. After upgrading, if you have any products installed that contain modules, you should reinstall those products. This will fix any incorrect productids.

[warning]Do not uninstall any products that contain modules at this time. You must reinstall your products first.[/warning]

[h3]Custom Modules[/h3]
Custom Module handling has been removed while the system is reworked [VBV-11339].

Due to GUID conflicts, all duplicate custom modules with the same GUID will [b]be deleted[/b] during the upgrade process ([jira]VBV-14713[/jira]). We will attempt to link the deleted modules to the original. However any default configuration changes will not be carried over. You have two options to manage any deployed widgets.
[list]
[li]Run the upgrade and all duplicate widgets will be deleted automatically.
[li]Change the guid of all records in the widget table with the guid of vbulletin-widget_1-4eb423cfd68cd8.93414606. You can do this by adding -1, -2, etc... at the end of the GUID. 
[/list]
You would make these changes in a database tool like phpMyAdmin or Adminer. Your hosting provider most likely makes such a tool available in their hosting control panel.

[h2]Reverse Proxy[/h2]
Reverse Proxy support has been ported from vBulletin 4.X with easier methods of implementation within your /core/includes/config.php.

[code]
/* #### Reverse Proxy IP ####
If your use a system where the main IP address passed to vBulletin is the address of a proxy server
and the actual 'real' ip address is passed in another http header then you enter the details here */

/* Enter your known proxy servers here. You can list multiple trusted IPs separated by a comma.
You can also use the * wildcard (at the end of a definition only) or use the keyword 'all' to represent any ip address.*/
//$config['Misc']['proxyiplist'] = '127.0.0.1, 192.168.*, all';

/* If the real IP is passed in a http header variable other than HTTP_X_FORWARDED_FOR, then you can set the name here; */
//$config['Misc']['proxyipheader'] = 'HTTP_X_FORWARDED_FOR';
[/code]

If you do not have the above sections in your config.php, you should add them if you want to support reverse proxy handling on your site. For those of you supporting reverse proxy handling already, this should eliminate the need for the manual code changes previously provided by Technical Support.

This is available to all customers with a standard vBulletin 5 Connect license. If you are a Cloud customer, you should be contacted within the next few days with a schedule to upgrade your site.

Discuss this release here: [node]4326923[/node]